let
    Read = (file as text) as table => let
    Raw = Csv.Document(File.Contents(DatasetRoot & "\" & file & ".csv"),[Delimiter=",",Encoding=65001,QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Raw,[PromoteAllScalars=true]),
    Clean = Table.TransformColumns(Headers,List.Transform(Table.ColumnNames(Headers),(c)=>{c,(v)=>if v=null or Text.Trim(Text.From(v))="" then null else Text.Trim(Text.From(v)),type nullable text}))
in Clean,
    Source=Read("Training"),
    Typed=Table.TransformColumnTypes(Source,{{"Training_ID",type text},{"Employee_ID",type text},{"Training_Name",type text},{"Provider",type text},{"Start_Date",type date},{"End_Date",type date},{"Training_Cost",Currency.Type},{"Certification_Status",type text}},"en-US"),
    Key=Table.AddColumn(Typed,"Employee Key",each Number.FromText(Text.Select([Employee_ID],{"0".."9"})),Int64.Type),
    Duration=Table.AddColumn(Key,"Training Days",each Duration.Days([End_Date]-[Start_Date])+1,Int64.Type),
    Renamed=Table.RenameColumns(Duration,{{"Training_ID","Training ID"},{"Employee_ID","Employee ID"},{"Training_Name","Training Name"},{"Start_Date","Start Date"},{"End_Date","End Date"},{"Training_Cost","Training Cost"},{"Certification_Status","Certification Status"}}),
    Result=Table.SelectColumns(Renamed,{"Training ID","Employee ID","Training Name","Provider","Start Date","End Date","Training Cost","Certification Status","Employee Key" ,"Training Days"})
in Result