CREATE DATABASE VENTAS
	DEFAULT CHARACTER SET utf8;
use VENTAS;
    
CREATE TABLE CUSTOMER (
	CustNo CHAR (8) NOT NULL COMMENT 'Contiene el identificador de cada cliente',
    CustFirstName varchar(50) NOT NULL COMMENT 'Contiene los nombres de los clientes',
    CustLastName varchar(50) NULL COMMENT 'Contiene a los apellidos de los clientes',
    CustCity varchar (50) NULL COMMENT 'Contiene a la ciudad de cada cliente',
    CustState char(2)  NULL COMMENT 'Estado del cliente',
    CustZip varchar(50) NULL COMMENT 'Contiene el codigo postal de los clientes',
    CustBal decimal(6,2) NULL COMMENT 'Dinero',
    CONSTRAINT CUSTOMER_pk PRIMARY KEY (CustNo)
)  COMMENT 'Contiene los datos del cliente';
    
CREATE TABLE EMPLOYEE (
	EmpNo char(8) NOT NULL COMMENT 'Contiene el identificador de cada empleado',
    EmpFirstName  varchar(50) NOT NULL COMMENT 'Contiene el nombre de cada empleado',
    EmpLastName varchar(50) NOT NULL COMMENT 'Contiene el apellido de cada empleado',
    EmpPhone char(13) NULL COMMENT 'Contiene el teléfono de cada empleado',
    EmpEmail varchar(50) NOT NULL COMMENT 'Contiene el correo de cada empleado',
    CONSTRAINT EMPLOYEE_pk PRIMARY KEY (EmpNo)
    )COMMENT 'Contiene los datos del empleado';
    
CREATE TABLE ORDERTBL (
	OrdNo char(8) NOT NULL COMMENT 'Contiene el identificador de cada orden',
    OrdDate date NOT NULL COMMENT 'Contiene la fecha de cada orden',
    CustNo char(8) NOT NULL COMMENT 'Contiene el identificador de cada persona',
    EmpNo char(8) NOT NULL COMMENT 'Contiene el identificador de cada empleado',
    CONSTRAINT ORDERTBL_pk PRIMARY KEY (OrdNo)
    )COMMENT 'Contiene las ordenes';
    
ALTER TABLE ORDERTBL ADD CONSTRAINT ORDERTBL_CUSTOMER foreign key ORDERTBL_CUSTOMER (CustNo)
	REFERENCES CUSTOMER(CustNo);
    
ALTER TABLE ORDERTBL ADD CONSTRAINT ORDERTBL_EMPLOYEE foreign key ORDERTBL_CUSTOMER (EmpNo)
    REFERENCES EMPLOYEE(EmpNo);
    

    
