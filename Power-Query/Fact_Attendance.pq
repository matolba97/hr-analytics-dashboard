let
    Read = (file as text) as table => let
    Raw = Csv.Document(File.Contents(DatasetRoot & "\" & file & ".csv"),[Delimiter=",",Encoding=65001,QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Raw,[PromoteAllScalars=true]),
    Clean = Table.TransformColumns(Headers,List.Transform(Table.ColumnNames(Headers),(c)=>{c,(v)=>if v=null or Text.Trim(Text.From(v))="" then null else Text.Trim(Text.From(v)),type nullable text}))
in Clean,
    Source=Read("Attendance"),
    Typed=Table.TransformColumnTypes(Source,{{"Attendance_ID",type text},{"Employee_ID",type text},{"Attendance_Date",type date},{"Working_Hours",Currency.Type},{"Overtime_Hours",Currency.Type},{"Attendance_Status",type text},{"Shift",type text}},"en-US"),
    Key=Table.AddColumn(Typed,"Employee Key",each Number.FromText(Text.Select([Employee_ID],{"0".."9"})),Int64.Type),
    Renamed=Table.RenameColumns(Key,{{"Attendance_ID","Attendance ID"},{"Employee_ID","Employee ID"},{"Attendance_Date","Attendance Date"},{"Working_Hours","Working Hours"},{"Overtime_Hours","Overtime Hours"},{"Attendance_Status","Attendance Status"}}),
    Result=Table.SelectColumns(Renamed,{"Attendance ID","Employee ID","Attendance Date","Working Hours","Overtime Hours","Attendance Status","Shift","Employee Key"})
in Result