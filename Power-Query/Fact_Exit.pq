let
    Read = (file as text) as table => let
    Raw = Csv.Document(File.Contents(DatasetRoot & "\" & file & ".csv"),[Delimiter=",",Encoding=65001,QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Raw,[PromoteAllScalars=true]),
    Clean = Table.TransformColumns(Headers,List.Transform(Table.ColumnNames(Headers),(c)=>{c,(v)=>if v=null or Text.Trim(Text.From(v))="" then null else Text.Trim(Text.From(v)),type nullable text}))
in Clean,
    Source=Read("Exit"),
    Typed=Table.TransformColumnTypes(Source,{{"Exit_ID",type text},{"Employee_ID",type text},{"Exit_Date",type date},{"Exit_Reason",type text},{"Exit_Type",type text},{"Notice_Period",Int64.Type},{"Final_Rating",type text}},"en-US"),
    Key=Table.AddColumn(Typed,"Employee Key",each Number.FromText(Text.Select([Employee_ID],{"0".."9"})),Int64.Type),
    Renamed=Table.RenameColumns(Key,{{"Exit_ID","Exit ID"},{"Employee_ID","Employee ID"},{"Exit_Date","Exit Date"},{"Exit_Reason","Exit Reason"},{"Exit_Type","Exit Type"},{"Notice_Period","Notice Period"},{"Final_Rating","Final Rating"}}),
    Result=Table.SelectColumns(Renamed,{"Exit ID","Employee ID","Exit Date","Exit Reason","Exit Type","Notice Period","Final Rating","Employee Key"})
in Result