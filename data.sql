select*from Student where studentName like 'h%';
select*from Class where month(startDate)=12;
select*from Subject where (credit between 3 and 5);
set sql_safe_updates=0;
update Student
set classID =3
where studentName='Hung';
select Student.studentName,Subject.subName,Mark.mark
from Student
join Mark
on Student.studentID = Mark.studentID
join Subject
on Mark.subID= Subject.subID
order by Mark.mark desc , Student.studentName asc;