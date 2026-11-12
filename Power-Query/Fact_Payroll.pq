let
    Read = (file as text) as table => let
    Raw = Csv.Document(File.Contents(DatasetRoot & "\" & file & ".csv"),[Delimiter=",",Encoding=65001,QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Raw,[PromoteAllScalars=true]),
    Clean = Table.TransformColumns(Headers,List.Transform(Table.ColumnNames(Headers),(c)=>{c,(v)=>if v=null or Text.Trim(Text.From(v))="" then null else Text.Trim(Text.From(v)),type nullable text}))
in Clean,
    Source=Read("Payroll"),
    Typed=Table.TransformColumnTypes(Source,{{"Payroll_ID",type text},{"Employee_ID",type text},{"Payroll_Month",type text},{"Basic_Salary",Currency.Type},{"Allowances",Currency.Type},{"Bonus",Currency.Type},{"Tax",Currency.Type},{"Deductions",Currency.Type},{"Net_Salary",Currency.Type},{"Payment_Date",type date}},"en-US"),
    Key=Table.AddColumn(Typed,"Employee Key",each Number.FromText(Text.Select([Employee_ID],{"0".."9"})),Int64.Type),
    Period=Table.AddColumn(Key,"Payroll Period",each Date.FromText([Payroll_Month] & "-01"),type date),
    Gross=Table.AddColumn(Period,"Gross Salary",each [Basic_Salary]+[Allowances]+[Bonus],Currency.Type),
    Renamed=Table.RenameColumns(Gross,{{"Payroll_ID","Payroll ID"},{"Employee_ID","Employee ID"},{"Payroll_Month","Payroll Month"},{"Basic_Salary","Basic Salary"},{"Net_Salary","Net Salary"},{"Payment_Date","Payment Date"}}),
    Result=Table.SelectColumns(Renamed,{"Payroll ID","Employee ID","Payroll Month","Basic Salary","Allowances","Bonus","Tax","Deductions","Net Salary","Payment Date","Employee Key" ,"Payroll Period","Gross Salary"})
in Result