insert into employee values('000001','Bob','mill','Susan','1990-12-01','Male','Married','Market Road','Colombo','Sri lanka');
insert into employee values('000002','Ann','Dell','Peterson','1995-02-04','Male','Married','City Road','Horana','Sri lanka');
insert into employee values('000003','Jane','De','susan','1995-02-04','Female','Married','Country Road','Moratuwa','Sri lanka');
insert into employee values('000004','Dave','Den','Jorge','1990-05-09','Male','Married','School Road','Panadura','Sri lanka');
insert into employee values('000005','Nimal','De','Silva','1998-10-05','Male','Unmarried','Main Road','Colombo','Srilanka');
insert into employee values('000006','Kamal','Don','Alwis','1992-05-05','Male','Unmarried','bridge Road','Colombo','Srilanka');
insert into employee values('000007','Amal','Sam','Perera','1996-08-05','Male','married','Main Road','Kalutara','Srilanka');
insert into employee values('000008','Timira','Nirmal','Silva','1996-10-15','Male','Unmarried','School Road','Gampaha','Srilanka');

insert into user values("000001","$2a$10$KyAzvG0aGP7ve6wAnMOExuQ4iV1.QICKd4aYghGUja.iJu1hfDyee",2);

insert into supervise value('000004','000003');
insert into supervise value('000005','000003');
insert into supervise value('000007','000006');
insert into supervise value('000003','000002');
insert into supervise value('000006','000002');
insert into supervise value('000008','000002');
insert into supervise value('000002','000001');

insert into employee_phone_number values("000001","+94345683224");
insert into employee_phone_number values("000002","+94582049534");
insert into employee_phone_number values("000003","+92052364205");
insert into employee_phone_number values("000004","+94810585465");
insert into employee_phone_number values("000005","+94092814847");
insert into employee_phone_number values("000006","+94042894547");
insert into employee_phone_number values("000007","+94081032847");
insert into employee_phone_number values("000008","+94092896351");

insert into branch values('0092','Jupitar','Main Road','Colombo','Sri lanka');

insert into branch_phone_number values('0092','+94714455235');
insert into branch_phone_number values('0092','+94340044235');

insert into department values('HR','Main','0092');
insert into department values('Marketing','Watson','0092');
insert into department values('Design','North','0092');
insert into department values('Cutting','West','0092');
insert into department values('Sewing','East','0092');
insert into department values('Printing','South','0092');

insert into department_phone_number values('HR','+94345676334');
insert into department_phone_number values('Marketing','+94340405566');
insert into department_phone_number values('Design','+94707895566');
insert into department_phone_number values('Cutting','+94345671566');
insert into department_phone_number values('Sewing','+94345690166');
insert into department_phone_number values('Printing','+94342245566');

insert into leave_type values('Level1',40,20,60,50);
insert into leave_type values('Level2',40,20,60,50);
insert into leave_type values('Level3',30,30,60,50);
insert into leave_type values('Level4',30,30,60,50);
insert into leave_type values('Level5',20,30,60,50);

insert into employment_detail values("000001","Manager","Level1","Permanent","Fulltime",null,"0092",true,"Admin");
insert into employment_detail values("000002","Manager","Level2","Permanent","Fulltime","HR","0092",true,"HRManager");
insert into employment_detail values("000003","Designer","Level3","Permanent","Fulltime","Design","0092",true,"Supervisor");
insert into employment_detail values("000006","Sewer","Level3","Permanent","Fulltime","Sewing","0092",true,"Supervisor");
insert into employment_detail values("000008","Cutter","Level3","Permanent","Fulltime","Cutting","0092",true,"Supervisor");
insert into employment_detail values("000004","Designer","Level4","Contract","Parttime","Design","0092",false,"General");
insert into employment_detail values("000005","Designer","Level4","Intern","Fulltime","Design","0092",false,"General");
insert into employment_detail values("000007","Sewer","Level5","Intern","Parttime","Sewing","0092",false,"General");

insert into emergency_detail values('000001','Kamala','Perera','Wife','+94713956104');
insert into emergency_detail values('000002','Amaya','Perera','Wife','+94712405667');
insert into emergency_detail values('000003','Nimal','Perera','Husband','+94712304567');
insert into emergency_detail values('000004','Nimali','Perera','Wife','+94712562367');
insert into emergency_detail values('000005','Nimesha','Soysa','Wife','+94712304290');
insert into emergency_detail values('000006','Kamala','Alwis','Wife','+94703454567');
insert into emergency_detail values('000007','Amasha','Perera','Sister','+94714405667');
insert into emergency_detail values('000008','Nimesha','Perera','Wife','+9470564567');

insert into leave_count values('000001',40,20,60,50);
insert into leave_count values('000002',38,20,60,50);
insert into leave_count values('000003',28,30,60,50);
insert into leave_count values('000004',29,30,60,50);
insert into leave_count values('000005',30,29,60,50);
insert into leave_count values('000006',30,30,60,49);
insert into leave_count values('000007',19,29,60,50);
insert into leave_count values('000008',29,29,60,50);

insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000004','Wedding','annual','2023-02-05','approved');
insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000005','Wedding','casual','2023-01-03','approved');
insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000006','Sick','noPay','2023-01-04','approved');
insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000003','Sick','annual','2023-01-08','approved');
insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000007','Sick','casual','2023-01-09','approved');
insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000008','Sick','annual','2023-01-10','approved');
insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000003','Sick','annual','2023-01-11','approved');
insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000002','Sick','annual','2023-01-11','approved');
insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000007','Party','annual','2023-01-15','pending');
insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000008','Sick','casual','2023-01-16','pending');
insert into leave_detail(emp_ID,reason,leave_type,leave_date,status) values('000002','Sick','annual','2023-01-14','pending');

insert into custom(emp_ID,custom_field,value) values('000001','language','Sinhala');
insert into custom(emp_ID,custom_field,value) values('000002','language','Sinhala');
insert into custom(emp_ID,custom_field,value) values('000003','language','Sinhala');
insert into custom(emp_ID,custom_field,value) values('000004','language','Tamil');
insert into custom(emp_ID,custom_field,value) values('000005','language','Sinhala');
insert into custom(emp_ID,custom_field,value) values('000006','language','Sinhala');
insert into custom(emp_ID,custom_field,value) values('000007','language','English');
insert into custom(emp_ID,custom_field,value) values('000008','language','Sinhala');

insert into custom(emp_ID,custom_field,value) values('000001','nationality','SriLankan');
insert into custom(emp_ID,custom_field,value) values('000002','nationality','SriLankan');
insert into custom(emp_ID,custom_field,value) values('000003','nationality','SriLankan');
insert into custom(emp_ID,custom_field,value) values('000004','nationality','SriLankan');
insert into custom(emp_ID,custom_field,value) values('000005','nationality','SriLankan');
insert into custom(emp_ID,custom_field,value) values('000006','nationality','SriLankan');
insert into custom(emp_ID,custom_field,value) values('000007','nationality','SriLankan');
insert into custom(emp_ID,custom_field,value) values('000008','nationality','SriLankan');