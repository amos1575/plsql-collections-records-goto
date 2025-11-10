SET SERVEROUTPUT ON;

DECLARE
    -- Define a RECORD type for student information
    TYPE student_rec IS RECORD (
        student_id NUMBER,
        name VARCHAR2(50),
        mark NUMBER
    );

    -- Define a VARRAY to store marks
    TYPE mark_array IS VARRAY(5) OF NUMBER;

    -- Define an Associative Array of students
    TYPE student_table IS TABLE OF student_rec INDEX BY PLS_INTEGER;

    -- Variables
    students student_table;
    marks mark_array := mark_array(90, 70, 85, 110, 60);  -- One invalid mark (110)
    total NUMBER := 0;
    avg_mark NUMBER := 0;
    i NUMBER := 1;

BEGIN
    <<start_loop>>
    IF i > marks.COUNT THEN
        GOTO show_results;
    END IF;

    -- Validate mark
    IF marks(i) < 0 OR marks(i) > 100 THEN
        DBMS_OUTPUT.PUT_LINE('⚠️ Invalid mark for student #' || i || ': ' || marks(i));
        i := i + 1;
        GOTO start_loop;
    END IF;

    -- Assign data into record
    students(i).student_id := i;
    students(i).name := 'Student_' || i;
    students(i).mark := marks(i);

    total := total + marks(i);
    i := i + 1;
    GOTO start_loop;

    <<show_results>>
    avg_mark := total / (marks.COUNT - 1); -- One invalid entry skipped
    DBMS_OUTPUT.PUT_LINE('--- STUDENT REPORT ---');
    FOR j IN 1..marks.COUNT LOOP
        IF students.EXISTS(j) THEN
            DBMS_OUTPUT.PUT_LINE('ID: ' || students(j).student_id ||
                                 ', Name: ' || students(j).name ||
                                 ', Mark: ' || students(j).mark);
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Average Mark: ' || avg_mark);
END;
/
