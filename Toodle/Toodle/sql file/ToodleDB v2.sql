--CREATE DATABASE
CREATE DATABASE ToodleDB
GO

USE ToodleDB
GO
--------------------------------------------------------------------------------------------Account
--CREATE TABLE StudentAccount
CREATE TABLE Account
(
AccountID VARCHAR(30) PRIMARY KEY,
AccountPassword VARCHAR(100) NOT NULL,
AccountFirstname VARCHAR(100) NOT NULL,
AccountLastname VARCHAR(100) NOT NULL,
AccountEmail VARCHAR(100) NOT NULL,
AccountType CHAR(2) NOT NULL,
CONSTRAINT chk_AccountType CHECK (AccountType IN ('SA','AA'))
)
GO

--INSERT DATA INTO StudentAccount
INSERT INTO Account (AccountID,AccountPassword, AccountFirstname, AccountLastname, AccountEmail,AccountType)
VALUES
('10275625','p111', 'John', 'Snow', 'Johnsnow@gmail.com','SA'),
('10275626', 'p222','James', 'Brown', 'Jamesbown@gmail.com','SA'),
('10270527','p333','Tony','Kim','TonyKim@hotmail.com','SA'),
('10275629', 'p444','Sharon', 'Miller','Johnsnow@gmail.com','SA'),
('Admin001','p001', 'John', 'Smith', 'John001@gmail.com','AA'),
('Admin002','p002', 'Keanu', 'Reeves', 'Keanu7423@gmail.com','AA'),
('Admin003','p003','Brad','Pitt','Pitt@hotmail.com','AA')
GO

CREATE PROCEDURE spLogIn
@accountID VARCHAR(30),
@password VARCHAR(100)
AS
BEGIN
	SELECT AccountID, AccountFirstname, AccountLastname,AccountType
	FROM Account
	WHERE AccountID=@accountID  AND AccountPassword=@password 
END
GO

CREATE PROCEDURE spGetStudentAccountInfo
@accountID VARCHAR(30)
AS
BEGIN
	SELECT AccountID, AccountFirstname, AccountLastname, AccountType 
	FROM Account
	WHERE AccountID=@accountID
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
AccountID VARCHAR(30) NOT NULL FOREIGN KEY REFERENCES Account (AccountID),
CourseID VARCHAR(10) NOT NULL FOREIGN KEY REFERENCES Course (CourseID),
CourseStatusID VARCHAR(25) NOT NULL FOREIGN KEY REFERENCES CourseStatus (CourseStatusID) DEFAULT 'Added'
)
GO

--INSERT DATA INTO StudentCourse
--When a student clicks the [ADD COURSE] stored procedure is excuting for inserting the new record ----CourseStatusID ADDED IS DEFAULT.
--trigger is fired for adding a record in CourseStatusLog

CREATE  PROCEDURE spStudentRegisterCourse
@accountID VARCHAR(30),
@courseID VARCHAR(10)
AS
BEGIN
INSERT INTO StudentCourse
(CourseStartDate,CourseEndDate,AccountID,CourseID)
VALUES 
(GETDATE(),GETDATE()+(SELECT CourseOptiumDuration FROM Course WHERE CourseID = @courseID),@accountID ,@courseID )
END
GO

--Get infomation of studnet's enrolled course
CREATE PROCEDURE spGetStudentCourseInformation
@accountID VARCHAR(30)
AS
BEGIN
SELECT CourseID,CourseStartDate,CourseEndDate,CourseStatusID
FROM StudentCourse
WHERE AccountID = @accountID
END
GO

-- To check if student enrolled the course (if yes let them click the course menu)
CREATE PROCEDURE spCheckIfStudentEnrolledCourse
@accountID VARCHAR(30)
AS
BEGIN
SELECT CourseID
FROM StudentCourse
WHERE AccountID = @accountID
END
GO

-- Update student course status
CREATE  PROCEDURE spUpdateStudentCourseStatus
@accountID VARCHAR(30),
@courseStatusID VARCHAR(25),
@courseID VARCHAR(10)
AS
BEGIN
UPDATE StudentCourse 
SET CourseStatusID = @courseStatusID WHERE AccountID = @accountID AND CourseID = @courseID
END
GO

--Get the studentcourseid
CREATE PROCEDURE spStudentCourseID
@courseID VARCHAR(30),
@accountID VARCHAR(10)
AS
BEGIN
SELECT [StudentCourseID] FROM [StudentCourse] 
WHERE CourseID = @courseID AND AccountID=@accountID
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



--INSERT INTO DATA INTO CourseStatusLog when status is updated
CREATE TRIGGER trgAfterStudentCourseUpdated
ON [StudentCourse]
AFTER UPDATE
AS
BEGIN
	DECLARE @courseStatusID VARCHAR(25)
	DECLARE @studentCourseID INT
	DECLARE @log_time DATETIME
	
	SELECT @courseStatusID =  i.CourseStatusID   FROM inserted i
	SELECT @studentCourseID =  i.StudentCourseID   FROM inserted i

	INSERT INTO CourseStatusLog VALUES
	(@courseStatusID,@studentCourseID,GETDATE())

	PRINT  'StudentCourstLog is updated'
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
MockExamResultLogID NT IDENTITY(100,1) PRIMARY KEY,
MockExamDate DATETIME NOT NULL,
MockExamResult INT NOT NULL,
StudentCourseID INT FOREIGN KEY REFERENCES StudentCourse (StudentCourseID),
)
GO

--Stored procedure for inserting MockExamResultLog
--When a studnet click a button to SUBMIT after taking a mockexam
CREATE PROCEDURE spInsertMockExamResult
@result INT,
@studentCourseID INT
AS
BEGIN
	INSERT INTO MockExamResultLog
	(MockExamDate,MockExamResult,StudentCourseID)
	VALUES(GETDATE(),@result,@studentCourseID)
END

GO


--Get Exam history
 CREATE PROCEDURE spGetMockExamHistory
@studentCourseID INT
AS
BEGIN
SELECT  
[MockExamDate],[MockExamResult]
FROM [MockExamResultLog]
WHERE StudentCourseID = @studentCourseID
END
GO