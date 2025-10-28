use Company_SD

select * from Departments;
select * from Employee;
select * from Project;
select * from Dependent;
select * from Works_for;

1
select Dnum , Dname,MGRSSN , Fname+' ' +Lname as [Full Name] 
from Departments , Employee
where SSN=MGRSSN;

2
select Dname,Pname 
from Departments D , Project P 
where D.Dnum=P.Dnum;

3
select Dependent.* ,Fname+' ' +Lname as [Full Name] 
from Dependent, Employee 
where ESSN=SSN;

4
select Project.Pnumber,Project.Pname,Project.Plocation
from Project 
where City='Cairo' or City='Alex';

5
select * from Project
where SUBSTRING(Pname,1,1)='A';

6
select SSN,Fname+' ' +Lname as [Full Name]
from Employee
Where Dno=30 and 1000<=Salary and Salary<=2000;

7
select Fname + ' ' + Lname as [Full Name]
from Employee E
JOIN Works_for W on E.SSN = W.Essn
JOIN Project P on W.Pno = P.Pnumber
Where E.Dno = 10 AND P.Pname = 'AL Rabwah' AND W.Hours >= 10;

 8
select E.Fname + ' ' + E.Lname as [Full Name]
from Employee E,Employee S
where E.Superssn = S.SSN and S.Fname ='Kamel' and S.Lname = 'Mohamed';

9
select e.FName, e.LName, p.Pname
from Employee e
JOIN Works_for w ON e.SSN = w.ESSN
JOIN Project p ON w.Pno = p.Pnumber
ORDER BY p.Pname;

10
select p.Pnumber,d.Dname, e.Lname AS ManagerLastName, e.Address, e.Bdate
from Project p
JOIN Departments d ON p.Dnum = d.Dnum
JOIN Employee e ON d.MGRSSN = e.SSN
where p.Plocation = 'Cairo';

11
select e.SSN, e.Fname, e.Lname, e.Address, e.Bdate, e.Dno, e.Salary, e.Sex, e.Superssn
from Employee e
JOIN Departments d ON e.SSN = d.MGRSSN;

12
select e.*
from Employee e
LEFT JOIN Dependent d ON e.SSN = d.ESSN;