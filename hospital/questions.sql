
-- Hw
-- 1)Get patient list with bill and bill details
-- find count in patient bill  table(count of particular patient id)




-- 2)find top 5 patient who visit hospital most
-- u can find based on repeated billing details


select PatientId,count(PatientId) from 
tbl_Billing group by PatientId ;--group data

--Below logic is main
select PatientId,count(PatientId) as VisitCount from 
tbl_Billing group by PatientId 
order by VisitCount desc ;--group data
-- --------------------------------
3)find top five services used by patients



select bd.ServicesID, max(s.Name) as 'ServiceName', count(bd.ServicesID) as 'ServiceCount' from 
tbl_BillingDetails  bd join tbl_Services s on s.ServicesID = bd.ServicesID
-- group by bd.ServicesID, Name -- double grouping take spaces so do by other ways(firs t ma service id la group garxa and then name la group garxa)
group by bd.ServicesID
order by ServiceCount desc ;--group data



-- in group by issues--there should be same column in group by id 
--group bhayak aru select garda i have to use either double grouping or max
-- dont do doubling grouping instead use max 
-- max and doubling gives same output but doubling group is slow so use max




-- ------------------------

-- 4)find top 5 patient paying highest bills

-- 5)find expensive and cheap sevice provided by hospital
-- 6 ) get count of hospital visit of EACH patients  in given date range
