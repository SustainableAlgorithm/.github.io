% Kathleen Kagan
% ACO 320 - Fall 2021
% WinRDBI - SQL
%
% Health Club Enterprise - SQL queries and reflection queries
% Source: submitted KaganKathleen_SQL.sql (October 31, 2021)
%
% Note: This preserves the submitted WinRDBI syntax and query logic.

% Which class types have not been attended by a member over the age of 50?
% Order the results alphabetically by class name.
% Output: (cName, cDescription)

reflection1 :=
select C.cName, M.age, M.mID
from (class C natural join attendance A) natural join member M
order by C.cName, M.age, M.mID;

noMembers :=
select C.cName, C.cDescription
from class C
where C.cID
not in (select A.cID from attendance A natural join member M where M.age > 50);

query1 :=
select distinct C.cName, C.cDescription
from class C
where not exists (select * from member M natural join attendance A where M.age > 50 and A.cID=C.cID)
order by C.cName asc;


% For each club account, find the number of members and the total monthly fee.
% Order results with the highest total monthly fee first.
% Output: (acctNum, address, phone, numberOfMembers, totalMonthlyFee)

reflection2 :=
select M.acctNum, mID, monthlyFee
from member M natural join clubAccount C
order by M.acctNum;

query2 :=
select M.acctNum, C.address, C.phone, count (*) as numberOfMembers, sum (monthlyFee) as totalMonthlyFee
from member M natural join clubAccount C
group by M.acctNum, C.address, C.phone
order by totalMonthlyFee desc;


% Which instructors have charged the largest fee for a 3-month personal training contract?
% Order alphabetically by instructor last name, listing each instructor at most once.
% Output: (insID, ifName, ilName, max3MonthFee)

reflection3 :=
select I.insID, T.duration, T.fee
from instructor I natural join trainer T
order by T.duration, T.fee desc;

helper3 :=
select max(T.fee) as max3MonthFee
from trainer T
where T.duration = 3;

query3 :=
select I.insID, I.ifName, I.ilName, max(T.fee) as max3MonthFee
from instructor I natural join trainer T
where T.duration = 3 and T.fee = (select max3MonthFee from helper3)
group by I.insID, I.ifName, I.ilName
order by max3MonthFee desc;


% Which instructors have had personal training contracts with more than 2 club accounts?
% Order with the instructor having the most accounts first.
% Output: (insID, ilName, ifName, numberOfAccounts)

reflection4 :=
select distinct M.acctNum, I.insID
from (instructor I natural join trainer T) natural join member M
order by I.insID;

query4 :=
select I.insID, I.ilName, I.ifName, count(distinct M.acctNum) as numberOfAccounts
from (instructor I natural join trainer T) natural join member M
group by I.insID, I.ilName, I.ifName
having numberOfAccounts > 2
order by numberOfAccounts desc;


% Which type of class has the most attendance?
% Multi-part query: compute attendance before determining maximum attendance.
% Output: (cID, cName, cDescription)

countAttendance :=
select cID, count(distinct A.mID) as attendCount
from attendance A
group by cID
order by cID;

% Then find maximum attendance.

maxAttendance :=
select max(attendCount) as maxCount
from countAttendance;

query5 :=
select cID, cName, cDescription
from (class C natural join countAttendance A) natural join maxAttendance M
where C.cID = A.cID and A.attendCount = (select maxCount from maxAttendance);
