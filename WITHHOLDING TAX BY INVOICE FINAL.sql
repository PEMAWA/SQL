
 SELECT
 APS.VENDOR_NAME,API.INVOICE_NUM MAIN_INVOICE,
 APID.ACCOUNTING_DATE,  APID.DESCRIPTION WHT_INVOICE,API.INVOICE_AMOUNT AMOUNT,
 APID.BASE_AMOUNT WHT_AMOUNT
 
  
 FROM AP_INVOICES_ALL API
 JOIN AP_SUPPLIERS APS ON APS.VENDOR_ID = API.VENDOR_ID
 JOIN AP_INVOICE_DISTRIBUTIONS_ALL APID ON API.INVOICE_ID = APID.INVOICE_ID
 
 WHERE APID.ACCOUNTING_DATE BETWEEN :START_DATE AND :END_DATE  AND APID.BASE_AMOUNT<0 ;
 
 
 --