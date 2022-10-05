SELECT
    *
FROM
    ap_suppliers;

SELECT
    vendor_id   supplier_id,
    vendor_name supplier_name
FROM
    po_vendors;

SELECT
    *
FROM
    ap_invoices_all
ORDER BY
    last_update_date DESC;

SELECT DISTINCT
    aps.vendor_name,
    api.invoice_num,
    api.invoice_amount        gross_amount,
    api.discount_amount_taken exempt,
    api.total_tax_amount      wht,
    aila.accounting_date      date_paid,
    aila.tax_rate_code,
    zrb.percentage_rate
FROM
         ap_invoices_all api
    JOIN ap_invoice_lines_all aila ON api.invoice_id = aila.invoice_id
    JOIN zx_rates_b           zrb ON zrb.tax_rate_code = aila.tax_rate_code
    JOIN ap_suppliers         aps ON aps.vendor_id = api.vendor_id
WHERE
    aila.accounting_date BETWEEN '&START_DATE' AND '&END_DATE';