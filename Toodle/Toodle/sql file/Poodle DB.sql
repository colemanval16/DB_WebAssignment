--CREATE DATABASE
CREATE DATABASE ToodleDB

USE ToodleDB
--------------------------------------------------------------------------------------------Student-----------------------------------------------------------------------------------------------------------Student
--CREATE TABLE Student
CREATE TABLE Student
(
StudentID INT PRIMARY KEY,
StudentFirstname VARCHAR(100) NOT NULL,
StudentLastname VARCHAR(100) NOT NULL,
StudentEmail VARCHAR(100) NOT NULL
)

--INSERT DATA INTO Student
INSERT INTO Student (StudentID, StudentFirstname, StudentLastname, StudentEmail)
VALUES
(10275625, 'John', 'Snow', 'Johnsnow@gmail.com'),
(10275626, 'James', 'Brown', 'Jamesbown@gmail.com'),
(10270527,'Tony','Kim','TonyKim@hotmail.com'),
(10275629, 'Sharon', 'Miller','Johnsnow@gmail.com')

 


	SELECT StudentID,StudentPassword 
	FROM StudentAccount
	WHERE StudentID=10275625  AND StudentPassword='p111' 
drop procedure spCheckIfStudentIDExist

CREATE PROCEDURE spRegisterNewStudentAccount
@studnetID INT,
@passwrod VARCHAR(100)
AS
BEGIN
	INSERT INTO StudentAccount 
	(StudentID,StudentPassword)
	VALUES( @studnetID,@passwrod)
END
GO
--------------------------------------------------------------------------------------------StudentAccount-----------------------------------------------------------------------------------------------------------StudentAccount

--CREATE TABLE CourseCategory
CREATE TABLE CourseCategory
(
CourseCategoryID VARCHAR(30) PRIMARY KEY,
CourseCategoryDescription VARCHAR(200),
)

--INSERT DATA INTO CourseCategory
INSERT INTO CourseCategory (CourseCategoryID, CourseCategoryDescription)
VALUES 
('MTA','MTA exams preparation course'),
('PG','Programming course'),
('WEB','Web design course'),
('PM','Project management course'),
('NW','Network course '),
('DB','Database course')

--------------------------------------------------------------------------------------------Course-----------------------------------------------------------------------------------------------------------Course
--CREATE TABLE Course
CREATE TABLE Course
(
CourseID VARCHAR(10) PRIMARY KEY,
CourseName VARCHAR(50) NOT NULL,
CourseDescription VARCHAR(200),
CourseOptiumDuration INT NOT NULL,
CourseCategoryID VARCHAR(30) NOT NULL FOREIGN KEY REFERENCES CourseCategory (CourseCategoryID)
)

--INSERT DATA INTO Course
INSERT INTO Course (CourseID, CourseName, CourseDescription, CourseOptiumDuration, CourseCategoryID)
VALUES 
('MTA01','MTA_HTML','MTA Training course helps you prepare for MTA Exam 98-375',90,'MTA'),
('MTA02','MTA_Database',' MTA Training course helps you prepare for MTA Exam 98-364',90,'MTA'),
('MTA03','MTA_Software Developement','MTA Training course helps you prepare for MTA Exam 98-361',90,'MTA'),
('MTA04','MTA_Software Testing','MTA Training course helps you prepare for MTA Exam 98-379',90,'MTA')

--------------------------------------------------------------------------------------------CourseStatus-----------------------------------------------------------------------------------------------------------CourseStatus
--CREATE TABLE CourseStatus
CREATE TABLE CourseStatus
(
CourseStatusID VARCHAR(25) PRIMARY KEY,
CourseStatusDescription VARCHAR(100)
)

--INSERT DATA INTO CourseStatus
INSERT INTO CourseStatus(CourseStatusID,CourseStatusDescription)
VALUES
('Added','User added a course'),
('Progress','Course is in progress'),
('MockExam','User completed the tutorials'),
('Completed','User completed the MockExam')

--------------------------------------------------------------------------------------------StudentCourse-----------------------------------------------------------------------------------------------------------StudentCourse
--CREATE TABLE StudentCourse
CREATE TABLE StudentCourse
(
StudentCourseID INT IDENTITY(1,1) PRIMARY KEY,
CourseStartDate  DATETIME NOT NULL,
CourseEndDate  DATETIME NOT NULL,
StudentID INT NOT NULL FOREIGN KEY REFERENCES StudentAccount (StudentID),
CourseID VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES Course (CourseID),
CourseStatusID VARCHAR(25) NOT NULL FOREIGN KEY REFERENCES CourseStatus (CourseStatusID) DEFAULT 'Added'
)

--INSERT DATA INTO StudentCourse
--When a student clicks the [ADD COURSE] stored procedure is excuting for inserting the new record ----CourseStatusID ADDED IS DEFAULT.
--trigger is fired for adding a record in CourseStatusLog

CREATE  PROCEDURE spStudentRegisterCourse
@studentID INT,
@courseID VARCHAR(10)
AS
BEGIN
INSERT INTO StudentCourse
(CourseStartDate,CourseEndDate,StudentID,CourseID)
VALUES 
(GETDATE(),GETDATE()+(SELECT CourseOptiumDuration FROM Course WHERE CourseID = @courseID),@studentID ,@courseID )
END
GO

--TEST
EXEC spStudentRegisterCourse 10275625,'MTA01'
SELECT * FROM StudentCourse
SELECT * FROM CourseStatusLog

--------------------------------------------------------------------------------------------CourseStatusLog-----------------------------------------------------------------------------------------------------------CourseStatusLog
--CREATE TALBE CourseStatusLog
CREATE TABLE CourseStatusLog
(
CourseStatusID VARCHAR(25)  FOREIGN KEY REFERENCES CourseStatus (CourseStatusID),
StudentCourseID  INT FOREIGN KEY REFERENCES StudentCourse(StudentCourseID),
CourseStatusLogTimeStamp DATETIME NOT NULL,
PRIMARY KEY(StudentCourseID, CourseStatusID)
)

--INSERT INTO DATA INTO CourseStatusLog [trigger]
CREATE TRIGGER trgAfterStudentCourseInsert
ON [StudentCourse]
AFTER INSERT
AS
BEGIN
	DECLARE @courseStatusID VARCHAR(25)
	DECLARE @studentCourseID INT
	DECLARE @log_time DATETIME
	
	SELECT @courseStatusID =  i.CourseStatusID   FROM inserted i
	SELECT @studentCourseID =  i.StudentCourseID   FROM inserted i

	INSERT INTO CourseStatusLog VALUES
	(@courseStatusID,@studentCourseID,GETDATE())

	PRINT  'StudentCourstLog is inserted'
END

--------------------------------------------------------------------------------------------CourseAttendanceLog--------------------------------------------------------------------------------------------------CourseAttendanceLog
--CREATE TABLE CourseAttendanceLog
CREATE TABLE CourseAttendanceLog
(
DateOfReport DATETIME,
NoOfStudent INT NOT NULL,
CourseID VARCHAR(10),
FOREIGN KEY(CourseID) REFERENCES Course(CourseID),
PRIMARY KEY(DateOfReport, CourseID)
)

--INSERT DATA INTO CourseAttendanceLog -> Stored Procedure.
CREATE PROCEDURE spInsertCourseAttendanceLog
@courseID VARCHAR(10)
AS
BEGIN
INSERT INTO CourseAttendanceLog
VALUES
(GETDATE(), (SELECT ISNULL(COUNT (StudentCourseID),0)  FROM StudentCourse WHERE CourseID = @courseID), @courseID)
END
GO
--------------------------------------------------------------------------------------------MockExamResultLog--------------------------------------------------------------------------------------------------MockExamResultLog
--CREATE TABLE MockExamResultLog
CREATE TABLE MockExamResultLog
(
MockExamResultLogID VARCHAR(25) PRIMARY KEY,
MockExamDate DATETIME NOT NULL,
MockExamResult INT NOT NULL,
StudentCourseID INT FOREIGN KEY REFERENCES StudentCourse (StudentCourseID),
)

--Stored procedure for inserting MockExamResultLog
--When a studnet click a button to SUBMIT after taking a mockexam
CREATE PROCEDURE spInsertMockExamReulst
@id VARCHAR(25),
@result INT,
@studentCourseID INT
AS
BEGIN
	INSERT INTO MockExamResultLog
	(MockExamResultLogID,MockExamDate,MockExamResult,StudentCourseID)
	VALUES(@id,GETDATE(),@result,@studentCourseID)
END
GO



--If we want to have auto increment id with char
create  TABLE dbo.YourTable
(ID INT IDENTITY(1,1),
 CharID AS 'WC' + RIGHT('000' + CAST(ID AS VARCHAR(3)), 3) PERSISTED,
 name varchar(10),
 CONSTRAINT PK_YourTable PRIMARY KEY(CharID)
)

INSERT INTO dbo.YourTable values ('junga')

select * from dbo.YourTable