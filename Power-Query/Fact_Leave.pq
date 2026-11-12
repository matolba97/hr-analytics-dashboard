let
    Read = (file as text) as table => let
    Raw = Csv.Document(File.Contents(DatasetRoot & "\" & file & ".csv"),[Delimiter=",",Encoding=65001,QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Raw,[PromoteAllScalars=true]),
    Clean = Table.TransformColumns(Headers,List.Transform(Table.ColumnNames(Headers),(c)=>{c,(v)=>if v=null or Text.Trim(Text.From(v))="" then null else Text.Trim(Text.From(v)),type nullable text}))
in Clean,
    Source=Read("Leave"),
    Typed=Table.TransformColumnTypes(Source,{{"Leave_ID",type text},{"Employee_ID",type text},{"Leave_Type",type text},{"Start_Date",type date},{"End_Date",type date},{"Total_Days",Int64.Type},{"Approval_Status",type text}},"en-US"),
    Key=Table.AddColumn(Typed,"Employee Key",each Number.FromText(Text.Select([Employee_ID],{"0".."9"})),Int64.Type),
    Renamed=Table.RenameColumns(Key,{{"Leave_ID","Leave ID"},{"Employee_ID","Employee ID"},{"Leave_Type","Leave Type"},{"Start_Date","Start Date"},{"End_Date","End Date"},{"Total_Days","Total Days"},{"Approval_Status","Approval Status"}}),
    Result=Table.SelectColumns(Renamed,{"Leave ID","Employee ID","Leave Type","Start Date","End Date","Total Days","Approval Status","Employee Key"})
in Result