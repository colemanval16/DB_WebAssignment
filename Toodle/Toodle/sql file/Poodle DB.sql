--CREATE DATABASE
CREATE DATABASE ToodleDB
GO
--Hello World

USE ToodleDB
GO
--------------------------------------------------------------------------------------------Account
CREATE TABLE Account
(
AccountID CHAR(2) PRIMARY KEY,
AccountType VARCHAR(100)
)
GO

--INSERT DATA INTO Account
INSERT INTO Account (AccountID,AccountType)
VALUES
('SA','Student Account'),
('AA','Administrator Account')
GO
--------------------------------------------------------------------------------------------AdministratorAccount
--CREATE TABLE AdminAccount
CREATE TABLE AdminAccount
(
AdminID VARCHAR(30) PRIMARY KEY,
AdminFirstname VARCHAR(100) NOT NULL,
AdminLastname VARCHAR(100) NOT NULL,
AdminEmail VARCHAR(100) NOT NULL,
AccountID CHAR(2) NOT NULL FOREIGN KEY REFERENCES Account (AccountID)
)
GO

--INSERT DATA INTO AdminAccount
INSERT INTO AdminAccount (AdminID, AdminFirstname, AdminLastname, AdminEmail,AccountID)
VALUES
('Admin001', 'John', 'Smith', 'John001@gmail.com','AA'),
('Admin002', 'Keanu', 'Reeves', 'Keanu7423@gmail.com','AA'),
('Admin003','Brad','Pitt','Pitt@hotmail.com','AA')
GO

--------------------------------------------------------------------------------------------StudentAccount
--CREATE TABLE StudentAccount
CREATE TABLE StudentAccount
(
StudentID INT PRIMARY KEY,
StudentPassword VARCHAR(100) NOT NULL,
StudentFirstname VARCHAR(100) NOT NULL,
StudentLastname VARCHAR(100) NOT NULL,
StudentEmail VARCHAR(100) NOT NULL,
AccountID CHAR(2) NOT NULL FOREIGN KEY REFERENCES Account (AccountID)
)
GO

--INSERT DATA INTO StudentAccount
INSERT INTO StudentAccount (StudentID,StudentPassword, StudentFirstname, StudentLastname, StudentEmail,AccountID)
VALUES
(10275625,'p111', 'John', 'Snow', 'Johnsnow@gmail.com','SA'),
(10275626, 'p222','James', 'Brown', 'Jamesbown@gmail.com','SA'),
(10270527,'p333','Tony','Kim','TonyKim@hotmail.com','SA'),
(10275629, 'p444','Sharon', 'Miller','Johnsnow@gmail.com','SA')
GO

CREATE PROCEDURE spLogIn
@studentID INT,
@password VARCHAR(100)
AS
BEGIN
	SELECT StudentFirstname, StudentLastname, StudentID
	FROM StudentAccount
	WHERE StudentID=@studentID  AND StudentPassword=@password 
END
GO

CREATE PROCEDURE spGetStudentAccountInfo
@studentID INT
AS
BEGIN
	SELECT StudentID, StudentFirstname, StudentLastname, StudentEmail 
	FROM StudentAccount
	WHERE StudentID=@studentID
END
GO
--------------------------------------------------------------------------------------------CourseCategory
--CREATE TABLE CourseCategory
CREATE TABLE CourseCategory
(
CourseCategoryID VARCHAR(30) PRIMARY KEY,
CourseCategoryDescription VARCHAR(200),
)
GO

--INSERT DATA INTO CourseCategory
INSERT INTO CourseCategory (CourseCategoryID, CourseCategoryDescription)
VALUES 
('MTA','MTA exams preparation course'),
('PG','Programming course'),
('WEB','Web design course'),
('PM','Project management course'),
('NW','Network course '),
('DB','Database course')
GO
--------------------------------------------------------------------------------------------Course
--CREATE TABLE Course
CREATE TABLE Course
(
CourseID VARCHAR(10) PRIMARY KEY,
CourseName VARCHAR(50) NOT NULL,
CourseDescription VARCHAR(200),
CourseOptiumDuration INT NOT NULL,
CourseCategoryID VARCHAR(30) NOT NULL FOREIGN KEY REFERENCES CourseCategory (CourseCategoryID)
)
GO

--INSERT DATA INTO Course
INSERT INTO Course (CourseID, CourseName, CourseDescription, CourseOptiumDuration, CourseCategoryID)
VALUES 
('MTA01','MTA_HTML','MTA Training course helps you prepare for MTA Exam 98-375',90,'MTA'),
('MTA02','MTA_Database',' MTA Training course helps you prepare for MTA Exam 98-364',90,'MTA'),
('MTA03','MTA_Software Developement','MTA Training course helps you prepare for MTA Exam 98-361',90,'MTA'),
('MTA04','MTA_Software Testing','MTA Training course helps you prepare for MTA Exam 98-379',90,'MTA')
GO
--------------------------------------------------------------------------------------------CourseStatus
--CREATE TABLE CourseStatus
CREATE TABLE CourseStatus
(
CourseStatusID VARCHAR(25) PRIMARY KEY,
CourseStatusDescription VARCHAR(100)
)
GO

--INSERT DATA INTO CourseStatus
INSERT INTO CourseStatus(CourseStatusID,CourseStatusDescription)
VALUES
('Added','User added a course'),
('Progress','Course is in progress'),
('MockExam','User completed the tutorials'),
('Completed','User completed the MockExam')
GO
--------------------------------------------------------------------------------------------StudentCourse
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
GO

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

--Get infomation of studnet's enrolled course
CREATE PROCEDURE spGetStudentCourseInformation
@studentID INT
AS
BEGIN
SELECT CourseID,CourseStartDate,CourseEndDate,CourseStatusID
FROM StudentCourse
WHERE StudentID = @studentID
END
GO
--------------------------------------------------------------------------------------------CourseStatusLog
--CREATE TALBE CourseStatusLog
CREATE TABLE CourseStatusLog
(
CourseStatusID VARCHAR(25)  FOREIGN KEY REFERENCES CourseStatus (CourseStatusID),
StudentCourseID  INT FOREIGN KEY REFERENCES StudentCourse(StudentCourseID),
CourseStatusLogTimeStamp DATETIME NOT NULL,
PRIMARY KEY(StudentCourseID, CourseStatusID)
)
GO

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
GO
--------------------------------------------------------------------------------------------CourseAttendanceLog
--CREATE TABLE CourseAttendanceLog
CREATE TABLE CourseAttendanceLog
(
DateOfReport DATETIME,
NoOfStudent INT NOT NULL,
CourseID VARCHAR(10),
FOREIGN KEY(CourseID) REFERENCES Course(CourseID),
PRIMARY KEY(DateOfReport, CourseID)
)
GO

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
--------------------------------------------------------------------------------------------MockExamResultLog
CREATE TABLE MockExamResultLog
(
MockExamResultLogID VARCHAR(25) PRIMARY KEY,
MockExamDate DATETIME NOT NULL,
MockExamResult INT NOT NULL,
StudentCourseID INT FOREIGN KEY REFERENCES StudentCourse (StudentCourseID),
)
GO

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
