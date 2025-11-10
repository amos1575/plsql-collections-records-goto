# plsql-collections-records-goto
The system should store student names and marks, calculate averages, and use a GOTO statement for error handling (like skipping invalid entries).
# PL/SQL Collections, Records & GOTO Demo

This project demonstrates the use of PL/SQL composite data types:
- **Collections** (VARRAY, Associative Array)
- **Records** (User-defined TYPE)
- **GOTO Statements** (control flow and error skipping)

## Description
The program simulates storing student marks.  
Invalid marks (less than 0 or greater than 100) are skipped using a GOTO label.  
Each student’s data is stored in a RECORD, and all are held inside a collection.

## How to Run
1. Open Oracle SQL Developer.
2. Connect using your “class work” connection.
3. Enable DBMS Output.
4. Run `plsql_collections_records_goto.sql` using **F5**.

## Sample Output
⚠️ Invalid mark for student #4: 110  
--- STUDENT REPORT ---  
ID: 1, Name: Student_1, Mark: 90  
ID: 2, Name: Student_2, Mark: 70  
ID: 3, Name: Student_3, Mark: 85  
ID: 5, Name: Student_5, Mark: 60  
Average Mark: 76.25
