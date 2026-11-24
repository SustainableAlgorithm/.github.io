%Kathleen Kagan
%ACO 320 - Fall 2021
% Relational Algebra

%List the club members who are at least 35 years old and have attended a 'Yoga' class.
% (mID, lName, fName, age)

yogaClass := project cID (((select cName = 'Yoga' (class)) njoin classSchedule) njoin attendance);
query1 := project mID, lName, fName, age ((select age > 34 (member)) njoin yogaClass);

% Which club members have never contracted for personal trainer services for 6 months?
% (mID, lName, fName)

sixMonth := project mID, insID, startDate, duration (trainer);
sixMonthCopy (mIDCopy, insIDCopy, startDateCopy, durationCopy) := sixMonth;
trainSixMonths := project mID, insID, startDate, duration (select mID = mIDCopy and duration = 6 (sixMonth product sixMonthCopy));
notSixMonths := (project mID (trainer)) difference (project mID (trainSixMonths));
query2 := project mID, lName, fName ((member) njoin notSixMonths);

% Which club accounts have only one club member associated with it?
% (acctNum, dateJoined, address, phone)

oneClub := project mID, primary, acctNum (member);
oneClubCopy (mIDCopy, primaryCopy, acctNumCopy) := oneClub;
oneClubMin := project mID, primary, acctNum (select primary = 'Y' and acctNum > acctNumCopy (oneClub product oneClubCopy));
query3 := project acctNum, dateJoined, address, phone ((project acctNum (oneClubMin)) njoin clubAccount);

%Which instructors have charged the smallest fee for a 3-month training contract?
% (insID, ifName, ilName)

trainerFee := project insID, fee (trainer);
trainerFeeCopy (insIdCopy, feeCopy) := trainerFee;
trainerFeeNotMin := project insID, fee (select fee > feeCopy (trainerFee product trainerFeeCopy));
trainerFeeMin := trainerFee difference trainerFeeNotMin;
query4 := project insID, ifName, ilName ((project insID (trainerFeeMin)) njoin instructor);

% Which classes are offered on weekends?
% (cName, day, time)

query5 := project cName, day, time ((select day = '6-Sat' or day = '7-Sun' (classSchedule)) njoin class);
