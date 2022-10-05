--- 1. AP_BATCHES_ALL
select * from ap_batches_all;
select * from ap_invoices_all where invoice_date between '01-APR-20' and '30-APR-20'
 and batch_id = '992642';
 
 
--- 2. AP_INVOICES_ALL
select * from ap_invoices_all where invoice_date between '01-JUN-20' and '30-JUN-20';
select * from ap_invoices_all where invoice_date between '01-FEB-20' and '30-MAY-20' and amount_paid is null;
select * from ap_invoices_all where po_header_id = 1329162;
select * from ap_invoices_all where invoice_num = '2020MSA7525864'; --- cancelled 
select invoice_id, invoice_num, prepay_invoice_id from ap_invoices_all where invoice_id = 1543361;

--- 3. AP_INVOICE_LINES_ALL
select * from ap_invoice_lines_all where invoice_id = 1547745;   --- TAX_CLASSIFICATION_CODE, AX_STAUS, TAX_RATE_ID, TAX_RATE_CODE, TAX_RATE
select * from ap_invoice_lines_all where po_line_id = 1600587;
select * from ap_invoice_lines_all where po_header_id = 1329162; --- OK PO creation to gl importation - 42566 - 10055  
select * from ap_invoice_lines_all where prepay_invoice_id = 1547745; 
-- update ap_invoice_lines_all set tax_classification_code = 'UML INPUT - VAT 100%' where invoice_id = 1547745; 

--- 4. AP_INVOICE_DISTRIBUTIONS_ALL
select * from ap_invoice_distributions_all;
select * from ap_invoice_distributions_all where accounting_date between '24-MAY-20' and '27-MAY-20';
select * from ap_invoice_distributions_all where invoice_id = 1545399; --- OK PO creation to gl importation - 42566 - 10055, tax lines added after validatoin, accounting
select invoice_id, line_type_lookup_code from ap_invoice_distributions_all where invoice_id = 1545399;


--- 5. ZX_LINES
select * from zx_lines where trx_id = 1544575;  --- zl.trx_id = ai.invoice_id, zl.trx_line_id = ail.line_number


--- 6. AP_PAYMENT_SCHEDULES_ALL 
select * from ap_payment_schedules_all where invoice_id = 1549264;


--- 7. AP_PAYMENTS_ALL 
select * from ap_invoice_payments_all where invoice_id = 1549264;





select segment5 from gl_code_combinations where code_combination_id = 10471; --- 630103 - Repair and Maintenance

select segment5 from gl_code_combinations where code_combination_id = 13491; --- 541900 - Machine and Repair

select segment5 from gl_code_combinations where code_combination_id = 7319; --- 541402 - Inv deft expense 

select segment5 from gl_code_combinations where code_combination_id = 6187; --- 210200 Inventory AP Accrual Account

select * from fnd_user;
--------------------------------------------------------------------------------
select * from ap_invoice_lines_all ;

select * from ap_invoice_lines_all where invoice_id = 1563670;

select * from ap_invoice_lines_all 
where accounting_date between '30-SEP-20' and '30-SEP-20'
 and line_type_lookup_code = 'TAX'
 and tax_rate_id = 10397
 and period_name is null;


-------------------- ALL TAXED INVOICE LINES -----------------------------------

select  /* count(*) INVOICES */
        /* */
        aila.invoice_id,
        aia.invoice_num,
        aila.line_number LINE_NUM,
        aia.invoice_date,
        aila.accounting_date GL_DATE,
        aia.invoice_type_lookup_code INV_TYPE,
        aila.line_type_lookup_code LIN_TYPE,
        aia.invoice_currency_code CURR,
        -- aia.vendor_id,
        aps.vendor_name,
        aps.vat_registration_num PIN_NO,
        -- aila.default_dist_ccid CCID,
        /*
        (select
            segment1 || '-' || 
            segment2 || '-' || 
            segment3 || '-' || 
            segment4 || '-' || 
            segment5 || '-' || 
            segment6 
          from gl_code_combinations where code_combination_id = aida.dist_code_combination_id
        ) GL_CODE,
        */
        -- aida.dist_code_combination_id,
        aila.description,
        hl.location_code SHIP_TO,
        aila.amount LINE_AMT,
        aila.tax_classification_code INPUT_TAX,
        zl.taxable_amt,
        zl.tax_amt,
        zl.tax_rate_code APPLD_TAX
        -- nvl(round(zl.tax_amt / zl.taxable_amt, 2),0) APPLD_RATE         
        /**/      
from 
        ap_invoice_lines_all aila,
        ap_invoices_all aia,
        zx_lines zl,
        ap_suppliers aps,
        hr_locations hl
        -- ap_invoice_distributions_all aida        
        
where   aila.accounting_date between '01-SEP-20' and '30-SEP-20'
and     aia.invoice_id              = aila.invoice_id
and     aila.cancelled_flag         = 'N'
and     aila.line_type_lookup_code  = 'ITEM'
-- and     aila.invoice_id             = zl.trx_id
-- and     aila.line_number            = zl.trx_line_number  
-- and     zl.application_id           = 200
-- and     zl.entity_code              = 'AP_INVOICES'
and     aia.vendor_id               = aps.vendor_id
and     aila.ship_to_location_id    = hl.location_id
-- and     aia.invoice_id              = aida.invoice_id
-- and     aida.line_type_lookup_code  = 'ITEM'
-- or      aida.line_type_lookup_code  = 'ACCRUAL'
-- and     aila.line_number            = aida.invoice_line_number
-- and     aia.invoice_id              = 1544575 -- 1547777 -- 1544575 

order by 
    aia.invoice_id, 
    aia.invoice_num
;


---------------- ALL INVOICE LINES IN PERIOD -----------------------------------

select  /*count(*) INVOICES*/ 
        /* */
        aila.invoice_id,
        aia.invoice_num,
        aia.invoice_date,
        aila.accounting_date GL_DATE,
        aia.invoice_type_lookup_code INV_TYPE,
        aila.line_type_lookup_code LIN_TYPE,
        aila.line_number,
        aia.invoice_currency_code CURR,
        aia.vendor_id,
        NULL PIN_NO,
        aila.default_dist_ccid CCID,
        aila.description,
        aila.ship_to_location_id SHIP_TO,
        aila.amount AMT,
        aila.tax_classification_code INPUT_TAX  
        /* */
             
from 
        ap_invoice_lines_all aila,
        ap_invoices_all aia 
        
where   1 = 1 
and     aila.accounting_date between '01-DEC-20' and '31-DEC-20'
and     aia.invoice_id = aila.invoice_id
-- and     aia.invoice_num = '97133'
order by aila.invoice_id, aila.line_number
;

------------------------ ALL UNPAID INVOICES -----------------------------------
select * from ap_invoices_all 
where payment_status_flag = 'N' 
and gl_date between '01-APR-20' and '30-APR-20'
and cancelled_date is null
;

--------------------------- AP SUPPLIERS ---------------------------------------
select * from ap_suppliers; 

select * from ap_suppliers where vendor_name_alt = '24695697';

select * from ap_suppliers where vendor_name like '%NJUGUNA%';

select * from po_vendors where vendor_name_alt = '24695697';

select * from po_vendors where vendor_name like '%NYAKIHA%';

select * from po_vendors where vendor_name_alt = '11089210';

select * from ap_suppliers where vendor_id = 782017;

--------------------------------------------------------------------------------

select * from  AP_INVOICE_LINES_v where invoice_id = 1543361;

------------------------------- AP DIST TO AP LINES ----------------------------
select * from ap_invoice_distributions_all where invoice_id = 1540877;


------------------------ Manual Update Variance Hold Patch ----------------------
select * from ap_invoice_lines_all where invoice_id = 1549264 and line_number = 1;

update ap_invoice_lines_all set
    amount = 778.28 
where 
    invoice_id = 1549264
and 
    line_number = 1
;

select * from ap_invoice_lines_all where invoice_id = 1549264 and line_number = 2;

update ap_invoice_lines_all set
    amount = 10869.00 
where 
    invoice_id = 1549264
and 
    line_number = 2
;


select * from ap_invoice_distributions_all where invoice_id = 1549264;

select * from zx_lines where trx_id = 1549264 and trx_line_number = 1 and application_id = 200;