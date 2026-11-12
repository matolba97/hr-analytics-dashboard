let
    Read = (file as text) as table => let
    Raw = Csv.Document(File.Contents(DatasetRoot & "\" & file & ".csv"),[Delimiter=",",Encoding=65001,QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Raw,[PromoteAllScalars=true]),
    Clean = Table.TransformColumns(Headers,List.Transform(Table.ColumnNames(Headers),(c)=>{c,(v)=>if v=null or Text.Trim(Text.From(v))="" then null else Text.Trim(Text.From(v)),type nullable text}))
in Clean,
    Start=Date.StartOfYear(List.Min(List.Transform(Read("Employees")[Hire_Date],each Date.FromText(_)))),
    End=Date.EndOfYear(List.Max(List.Transform(Read("Payroll")[Payroll_Month],each Date.FromText(_ & "-01")))),
    Dates=Table.FromList(List.Dates(Start,Duration.Days(End-Start)+1,#duration(1,0,0,0)),Splitter.SplitByNothing(),{"Date"}),
    Typed=Table.TransformColumnTypes(Dates,{{"Date",type date}}),
    Year=Table.AddColumn(Typed,"Year",each Date.Year([Date]),Int64.Type),
    Quarter=Table.AddColumn(Year,"Quarter",each "Q" & Text.From(Date.QuarterOfYear([Date])),type text),
    MonthNumber=Table.AddColumn(Quarter,"Month Number",each Date.Month([Date]),Int64.Type),
    Month=Table.AddColumn(MonthNumber,"Month",each Date.ToText([Date],"MMM","en-US"),type text),
    YearMonth=Table.AddColumn(Month,"Year Month",each Date.ToText([Date],"yyyy-MM","en-US"),type text),
    Sort=Table.AddColumn(YearMonth,"Year Month Sort",each [Year]*100+[Month Number],Int64.Type),
    Day=Table.AddColumn(Sort,"Day",each Date.Day([Date]),Int64.Type)
in Day