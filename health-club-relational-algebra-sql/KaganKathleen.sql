%Kathleen Kagan
%ACO 320 - Fall 2021
% Reflection in SQL

%List the club members who are at least 35 years old and have attended a 'Yoga' class.
% (mID, lName, fName, age)

query1 :=
select C.cName, M.lName, M.fName, M.age
from class C natural join member M
order by C.cName, M.age;

% Which club members have never contracted for personal trainer services for 6 months?
% (mID, lName, fName)

query2 :=
select M.mID, M.lName, M.fName, T.duration
from member M natural join trainer T
order by M.lName;

% Which club accounts have only one club member associated with it?
% (acctNum, dateJoined, address, phone)

query3 :=
select acctNum, primary
from member;

%Which instructors have charged the smallest fee for a 3-month training contract?
% (insID, ifName, ilName)

query4 :=
select distinct insID, fee
from trainer
order by fee;

% Which classes are offered on weekends?
% (cName, day, time)

query5 :=
select cName, day
from classSchedule S natural join class C
order by day desc;
