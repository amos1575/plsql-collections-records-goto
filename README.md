# plsql-collections-records-goto
The system should store student names and marks, calculate averages, and use a GOTO statement for error handling (like skipping invalid entries).
# PL/SQL Collections, Records & GOTO Demo

This project demonstrates the use of **PL/SQL Collections**, **Records**, and **GOTO statements** through a simple example that manages student marks.  
It shows how PL/SQL can handle multiple data types together while also demonstrating conditional logic and control flow.

---

## 📘 Project Overview

In this project, we simulate a small student marks management system.  
The program:
1. Stores several student marks using a **VARRAY** (a collection type).  
2. Uses a **RECORD** to store each student's ID, name, and mark.  
3. Combines the records in an **Associative Array** for storage.  
4. Uses a **GOTO** statement to skip invalid marks (e.g., marks above 100 or below 0).  
5. Calculates and displays the average of all valid marks.

This example demonstrates how to combine multiple PL/SQL data structures in a single working solution.

---

## 🧠 Concepts Demonstrated

| Concept | Explanation |
|----------|--------------|
| **VARRAY (Collection)** | A fixed-size array used to store marks for each student. |
| **RECORD** | A custom structure that stores multiple related fields (ID, Name, Mark). |
| **Associative Array** | A key-value collection used to store multiple student records. |
| **GOTO Statement** | Used to control program flow, skipping invalid data or jumping between code blocks. |

---

## ⚙️ How the Program Works (Step by Step)

1. **Declarations Section**
   - Defines:
     - A `student_rec` RECORD type to hold student details.
     - A `mark_array` VARRAY type for marks.
     - A `student_table` Associative Array to store multiple records.
   - Initializes marks with some values, including one invalid mark (110).

2. **Main Logic Loop**
   - Iterates through all marks using a counter (`i`).
   - Checks if each mark is valid.
     - If invalid (`>100` or `<0`), prints a warning and jumps back to the start of the loop using `GOTO start_loop`.
   - If valid, creates a record with:
     - `student_id`, `name`, and `mark`
   - Adds the mark to the total for later average calculation.

3. **Results Section**
   - After the loop ends, calculates the average mark.
   - Prints out:
     - Each student’s ID, name, and mark.
     - The overall average of valid marks.

4. **Output**
   - The program uses `DBMS_OUTPUT.PUT_LINE` to display results in the SQL Developer output window.





