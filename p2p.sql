select * from RCV_TRANSACTIONS where po_header_id =312884;

select * from RCV_SHIPMENT_HEADERs order by creation_date desc;

select * from rcv_shipment_lines  where po_header_id = 312883 order by creation_date desc;
select * from rcv_shipment_lines  order by creation_date desc;

Select * from PO_RELEASES_ALL WHERE po_header_id = 312884  ;



SELECT * FROM PO_HEADERS_ALL WHERE SEGMENT1= 6698;

SELECT * FROM PO_HEADERS_ALL WHERE SEGMENT1= '6699';
SELECT * FROM PO_LINES_ALL WHERE po_header_id = 312885;

select closed_code from po_line_locations_all;


SELECT * FROM PO_DISTRIBUTIONS_ALL WHERE po_header_id = 312884;

select * from AP_INVOICES_ALL where po_header_id = 312884;

SELECT * FROM RCV_SHIPMENT_HEADERS WHERE shipment_header_id=7722331 ORDER BY CREATION_DATE DESC;

SELECT * FROM AP_INVOICE_LINES_ALL;

SELECT * FROM ap_invoice_distributions_all;

SELECT * FROM PO_HEADERS_INTERFACE;