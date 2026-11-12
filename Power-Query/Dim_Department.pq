let
    Read = (file as text) as table => let
    Raw = Csv.Document(File.Contents(DatasetRoot & "\" & file & ".csv"),[Delimiter=",",Encoding=65001,QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Raw,[PromoteAllScalars=true]),
    Clean = Table.TransformColumns(Headers,List.Transform(Table.ColumnNames(Headers),(c)=>{c,(v)=>if v=null or Text.Trim(Text.From(v))="" then null else Text.Trim(Text.From(v)),type nullable text}))
in Clean,
    Source=Read("Departments"),
    Typed=Table.TransformColumnTypes(Source,{{"Department_ID",type text},{"Department_Name",type text},{"Location",type text},{"Budget",Currency.Type},{"Head_Employee_ID",type text}},"en-US"),
    Key=Table.AddColumn(Typed,"Department Key",each Number.FromText(Text.Select([Department_ID],{"0".."9"})),Int64.Type),
    Renamed=Table.RenameColumns(Key,{{"Department_Name","Department"},{"Head_Employee_ID","Department Head ID"}}),
    Result=Table.SelectColumns(Renamed,{"Department Key","Department","Location","Budget","Department Head ID"})
in Result