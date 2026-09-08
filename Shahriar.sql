CREATE TABLE Attendance (
    Attendance_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Student_ID INTEGER,
    Date_ TEXT,
    Status_ TEXT,
    Remark TEXT,
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);
INSERT INTO Attendance (Student_ID, Date_, Status_, Remark) VALUES (5601, '21/08/2026', 'Present', 'On Time')
INSERT INTO Attendance (Student_ID, Date_, Status_, Remark) VALUES (5602, '21/08/2026', 'Absent', 'Sick')
INSERT INTO Attendance (Student_ID, Date_, Status_, Remark) VALUES (5603, '21/08/2026', 'Present', 'On Time')
INSERT INTO Attendance (Student_ID, Date_, Status_, Remark) VALUES (5604, '21/08/2026', 'Late', '15 Minues')
INSERT INTO Attendance (Student_ID, Date_, Status_, Remark) VALUES (5605, '21/08/2026', 'Present', 'On Time')
INSERT INTO Attendance (Student_ID, Date_, Status_, Remark) VALUES (5606, '21/08/2026', 'Leave', 'Medical Appointment')
INSERT INTO Attendance (Student_ID, Date_, Status_, Remark) VALUES (5607, '21/08/2026', 'Present', 'On Time')
INSERT INTO Attendance (Student_ID, Date_, Status_, Remark) VALUES (5608, '21/08/2026', 'Present', 'On Time')

CREATE TABLE Student_Archive(
    Archive_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Student_ID INTEGER,
    Passing_Year INTEGER,
    Final_Grade TEXT,
    Final_Class TEXT,
    Leaving_Reason TEXT,
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);

INSERT INTO Student_Archive(Student_ID, Passing_Year, Final_Grade, Final_Class, Leaving_Reason) Values (5601, 2010, 'A+', 'Fifth', 'Passed');
INSERT INTO Student_Archive(Student_ID, Passing_Year, Final_Grade, Final_Class, Leaving_Reason) Values (5602, 2011, 'A', 'Fifth', 'Passed');
INSERT INTO Student_Archive(Student_ID, Passing_Year, Final_Grade, Final_Class, Leaving_Reason) Values (5603, 2008, 'A+', 'Fifth', 'Passed');
INSERT INTO Student_Archive(Student_ID, Passing_Year, Final_Grade, Final_Class, Leaving_Reason) Values (5604, 2005, 'B', 'Second', 'Transfer');
INSERT INTO Student_Archive(Student_ID, Passing_Year, Final_Grade, Final_Class, Leaving_Reason) Values (5605, 2011, 'A-', 'Third', 'Passed');
INSERT INTO Student_Archive(Student_ID, Passing_Year, Final_Grade, Final_Class, Leaving_Reason) Values (5606, 2009, 'C', 'Fifth', 'Passed');

CREATE TABLE Class_Schedule (
    Schedule_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Class_ID INTEGER,
    Subject_Name TEXT,
    Day_of_Week TEXT,
    Start_Time TEXT,
    End_Time TEXT,
    Teacher_ID INTEGER,
    FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID),
    FOREIGN KEY (Teacher_ID) REFERENCES Teachers(Teacher_ID)
);
INSERT INTO Courses_Schedule(Class_ID, Subject_Name, Day_of_Week, Start_Time, End_Time, Teacher_ID) Values (1, 'Math & English', 'Four', '8:30', '9:30', 1001);
INSERT INTO Courses_Schedule(Class_ID, Subject_Name, Day_of_Week, Start_Time, End_Time, Teacher_ID) Values (1, 'Bangla', 'Two', '7:30', '8:30', 1002);
INSERT INTO Courses_Schedule(Class_ID, Subject_Name, Day_of_Week, Start_Time, End_Time, Teacher_ID) Values (1, 'General Science', 'Five', '9:30', '10:30', 1003);
INSERT INTO Courses_Schedule(Class_ID, Subject_Name, Day_of_Week, Start_Time, End_Time, Teacher_ID) Values (1, 'Social Science', 'Four', '11:30', '12:30', 1004);

CREATE TABLE Results (
    Result_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Student_ID INTEGER,
    Subject_Name TEXT,
    Teacher_ID INTEGER,
    Result TEXT,
    Term_Name TEXT,
    Marks_Obtained REAL,
    Percentage_ REAL,
    Grade TEXT,
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Teacher_ID) REFERENCES Teachers(Teacher_ID)
);
INSERT INTO Results(Student_ID, Subject_Name, Teacher_ID, Result, Term_Name, Marks_Obtained, Percentage_, Grade) Values (5601, 'Math, English', 1001, Pass, Final, 190, 95%, A+)
INSERT INTO Results(Student_ID, Subject_Name, Teacher_ID, Result, Term_Name, Marks_Obtained, Percentage_, Grade) Values (5601, 'Bangla', 1002, Pass, Final, 92, 92%, A+)
INSERT INTO Results(Student_ID, Subject_Name, Teacher_ID, Result, Term_Name, Marks_Obtained, Percentage_, Grade) Values (5601, 'General Science', 1003, Pass, Final, 86, 86%, A)
INSERT INTO Results(Student_ID, Subject_Name, Teacher_ID, Result, Term_Name, Marks_Obtained, Percentage_, Grade) Values (5601, 'Social Science', 1004, Pass, Final, 87, 87%, A)
INSERT INTO Results(Student_ID, Subject_Name, Teacher_ID, Result, Term_Name, Marks_Obtained, Percentage_, Grade) Values (5602, 'Math, English', 1001, Pass, Final, 180, 90%, A+)
INSERT INTO Results(Student_ID, Subject_Name, Teacher_ID, Result, Term_Name, Marks_Obtained, Percentage_, Grade) Values (5602, 'Bangla', 1002, Pass, Final, 99, 99%, A+)
INSERT INTO Results(Student_ID, Subject_Name, Teacher_ID, Result, Term_Name, Marks_Obtained, Percentage_, Grade) Values (5602, 'General Science', 1003, Pass, Final, 85, 85%, A)
INSERT INTO Results(Student_ID, Subject_Name, Teacher_ID, Result, Term_Name, Marks_Obtained, Percentage_, Grade) Values (5602, 'Social Science', 1004, Pass, Final, 97, 97%, A+)