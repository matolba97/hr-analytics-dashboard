let
    Read = (file as text) as table => let
    Raw = Csv.Document(File.Contents(DatasetRoot & "\" & file & ".csv"),[Delimiter=",",Encoding=65001,QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Raw,[PromoteAllScalars=true]),
    Clean = Table.TransformColumns(Headers,List.Transform(Table.ColumnNames(Headers),(c)=>{c,(v)=>if v=null or Text.Trim(Text.From(v))="" then null else Text.Trim(Text.From(v)),type nullable text}))
in Clean,
    Source=Read("Performance"),
    Typed=Table.TransformColumnTypes(Source,{{"Performance_ID",type text},{"Employee_ID",type text},{"Review_Date",type date},{"Reviewer_ID",type text},{"KPI_Score",Currency.Type},{"Productivity_Score",Currency.Type},{"Attendance_Score",Currency.Type},{"Teamwork_Score",Currency.Type},{"Overall_Rating",type text},{"Promotion_Recommendation",type text}},"en-US"),
    Key=Table.AddColumn(Typed,"Employee Key",each Number.FromText(Text.Select([Employee_ID],{"0".."9"})),Int64.Type),
    Composite=Table.AddColumn(Key,"Composite Score",each ([KPI_Score]+[Productivity_Score]+[Attendance_Score]+[Teamwork_Score])/4,Currency.Type),
    Self=Table.AddColumn(Composite,"Self Review",each if [Employee_ID]=[Reviewer_ID] then "Yes" else "No",type text),
    Renamed=Table.RenameColumns(Self,{{"Performance_ID","Performance ID"},{"Employee_ID","Employee ID"},{"Review_Date","Review Date"},{"Reviewer_ID","Reviewer ID"},{"KPI_Score","KPI Score"},{"Productivity_Score","Productivity Score"},{"Attendance_Score","Attendance Score"},{"Teamwork_Score","Teamwork Score"},{"Overall_Rating","Overall Rating"},{"Promotion_Recommendation","Promotion Recommendation"}}),
    Result=Table.SelectColumns(Renamed,{"Performance ID","Employee ID","Review Date","Reviewer ID","KPI Score","Productivity Score","Attendance Score","Teamwork Score","Overall Rating","Promotion Recommendation","Employee Key" ,"Composite Score","Self Review"})
in Result