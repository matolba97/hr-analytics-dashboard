let
    Read = (file as text) as table => let
    Raw = Csv.Document(File.Contents(DatasetRoot & "\" & file & ".csv"),[Delimiter=",",Encoding=65001,QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Raw,[PromoteAllScalars=true]),
    Clean = Table.TransformColumns(Headers,List.Transform(Table.ColumnNames(Headers),(c)=>{c,(v)=>if v=null or Text.Trim(Text.From(v))="" then null else Text.Trim(Text.From(v)),type nullable text}))
in Clean,
    Source=Read("Recruitment"),
    Typed=Table.TransformColumnTypes(Source,{{"Recruitment_ID",type text},{"Candidate_ID",type text},{"Position",type text},{"Department_ID",type text},{"Application_Date",type date},{"Interview_Date",type date},{"Recruiter_ID",type text},{"Interview_Score",Currency.Type},{"Hiring_Status",type text},{"Joining_Date",type date}},"en-US"),
    Key=Table.AddColumn(Typed,"Department Key",each Number.FromText(Text.Select([Department_ID],{"0".."9"})),Int64.Type),
    Days=Table.AddColumn(Key,"Application to Join Days",each if [Joining_Date]=null then null else Duration.Days([Joining_Date]-[Application_Date]),Int64.Type),
    InterviewDays=Table.AddColumn(Days,"Application to Interview Days",each if [Interview_Date]=null then null else Duration.Days([Interview_Date]-[Application_Date]),Int64.Type),
    Renamed=Table.RenameColumns(InterviewDays,{{"Recruitment_ID","Recruitment ID"},{"Candidate_ID","Candidate ID"},{"Department_ID","Department ID"},{"Application_Date","Application Date"},{"Interview_Date","Interview Date"},{"Recruiter_ID","Recruiter ID"},{"Interview_Score","Interview Score"},{"Hiring_Status","Hiring Status"},{"Joining_Date","Joining Date"}}),
    Result=Table.SelectColumns(Renamed,{"Recruitment ID","Candidate ID","Position","Department ID","Application Date","Interview Date","Recruiter ID","Interview Score","Hiring Status","Joining Date","Department Key" ,"Application to Join Days","Application to Interview Days"})
in Result