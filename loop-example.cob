IDENTIFICATION DIVISION.
PROGRAM-ID. LOOP-EXAMPLE.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-COUNTER PIC 9(2) VALUE 1.
PROCEDURE DIVISION.
    PERFORM 5 TIMES
        DISPLAY 'Counter: ' WS-COUNTER
        ADD 1 TO WS-COUNTER
    END-PERFORM
    STOP RUN.