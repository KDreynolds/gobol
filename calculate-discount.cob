IDENTIFICATION DIVISION.
PROGRAM-ID. CALCULATE-DISCOUNT.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-QUANTITY PIC 9(5).
01 WS-PRICE PIC 9(5)V99.
01 WS-TOTAL PIC 9(7)V99.
01 WS-DISCOUNT PIC 9(3)V99.
01 WS-DISCOUNTED-TOTAL PIC 9(7)V99.
PROCEDURE DIVISION.
    DISPLAY 'Enter quantity: '.
    ACCEPT WS-QUANTITY.
    DISPLAY 'Enter price: '.
    ACCEPT WS-PRICE.
    COMPUTE WS-TOTAL = WS-QUANTITY * WS-PRICE.
    IF WS-TOTAL > 1000
        COMPUTE WS-DISCOUNT = WS-TOTAL * 0.1
    ELSE
        COMPUTE WS-DISCOUNT = WS-TOTAL * 0.05
    END-IF.
    COMPUTE WS-DISCOUNTED-TOTAL = WS-TOTAL - WS-DISCOUNT.
    DISPLAY 'Total: $' WS-TOTAL.
    DISPLAY 'Discount: $' WS-DISCOUNT.
    DISPLAY 'Discounted Total: $' WS-DISCOUNTED-TOTAL.
    STOP RUN.