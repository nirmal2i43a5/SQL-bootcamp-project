select * from tbl_Billing;
select * from tbl_Services;

-- question-1 Get patient list with bill and bill details
select PatientId,count(PatientId)
from tbl_Billing 
group by PatientId ;--group data


select PatientId,count(PatientId) as VisitCount 
from tbl_Billing 
group by PatientId --group data
order by VisitCount

-- 2 question
select bd.ServicesID, max(s.Name) as 'ServiceName', count(bd.ServicesID)
 as 'ServiceCount' from 
tbl_BillingDetails  bd join tbl_Services s on s.ServicesID = bd.ServicesID
-- group by bd.ServicesID, Name -- double grouping take spaces so do by other ways(firs t ma service id la group garxa and then name la group garxa)
group by bd.ServicesID
order by ServiceCount desc ;--group data



-- in group by issues--there should be same column in group by id 
--group bhayak aru select garda i have to use either double grouping or max
-- dont do doubling grouping instead use max 
-- max and doubling gives same output but doubling group is slow so use max

-- ques-3
-- find top 5 patient paying highest bills

select PatientId,SUM(GrandTotal) as 'TotalAMount' from 
tbl_Billing b 
group by PatientId 
order by TotalAMount desc ;--group data

--find name of 401 and other id ---i get error here

select PatientId, p.FirstName, SUM(GrandTotal) as 'TotalAmount' from 
tbl_Billing b join tbl_Patient p on p.ID=b.PatientId
group by PatientId 
order by TotalAmount desc ;--group data


-- 5)find expensive and cheap sevice provided by hospital
select max(Charge),min(Charge),Name from tbl_Services;

select top 1 * from tbl_Services order by charge desc

-- 6) get count of hospital visit of EACH patients  in given date range
--  modify to first qs with date filter

select PatientId,count(PatientId) as VisitCount 
from tbl_Billing 
where date between '2020/01/10' and '2020/01/30'
group by PatientId --group data
order by VisitCount desc ;

-- convert this to proedural language

create proc GetPatientVisitByDateRange(
    @Fromdate datetime
    @ToDate datetime
)

AS
BEGIN
    select PatientId,count(PatientId) as VisitCount 
    from tbl_Billing 
    where date between '2020/01/10' and '2020/01/30'
    group by PatientId --group data
    order by VisitCount desc ;
END

