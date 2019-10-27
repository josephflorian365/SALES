use VENTAS;
INSERT INTO CUSTOMER (CustNo,CustFirstName,CustLastName,CustCity,CustState,CustZip,CustBal)
VALUES
('C0954327','Sheri','Gordon','Littleton','CO',80129-5543,230.00),
('C1010398','Jim','Glussman','Denver','CO',80111-0033,200.00),
('C2388597','Beth','Taylor','Seattle','WA',98103-1121,500.00),
('C3340959','Betty','Wise','Seattle','WA',98178-3311,200.00),
('C3499503','Bob','Mann','Monroe','WA',98013-1095,0.00),
('C8543321','Ron','Thompson','Renton','WA',98666-1289,85.00);
select * from CUSTOMER ;

INSERT INTO EMPLOYEE(EmpNo,EmpFirstName,EmpLastName,EmpPhone,EmpEmail)
VALUES
('E1329594','Landi','Santos','(303)789-1234','LSantos@bigco.com'),
('E8544399','Joe','Jenkins','(303)221-9875','JJenkins@bigco.com'),
('E8843211','Amy','Tang','(303)556-4321','ATang@bigco.com'),
('E9345771','Colin','White','(303)221-4453','CWhite@bigco.com'),
('E9884325','Thomas','Johnson','(303556-9987)','TJohnson@bigoco.com'),
('E9954302','Mary','Hill','(303556-9871)','MHill@bigco.com');
select*from EMPLOYEE;

INSERT INTO ORDERTBL(OrdNo,OrdDate,CustNo,EmpNo)
VALUES
('O1116324','2013-01-23','C0954327','E8544399'),
('O2334661','2013-01-14','C0954327','E1329594'),
('O3331222','2013-01-13','C1010398','E8843211'),
('O2233457','2013-01-12','C2388597','E9884325'),
('O4714645','2013-01-11','C2388597','E1329594'),
('O5511365','2013-01-22','C3340959','E9884325'),
('O7989497','2013-01-16','C3499503','E9345771'),
('O1656777','2013-02-11','C8543321','E9884325'),
('O7959898','2013-02-19','C8543321','E8544399');

select * from ORDERTBL;
