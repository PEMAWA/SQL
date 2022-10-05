SELECT

---Header Information
    pha.segment1 po_number,
    pha.po_header_id,
    pha.summary_flag,
    pha.enabled_flag,
    pha.approved_flag,
   pha.vendor_id,
   pha.authorization_status,
    
    --- Lines Information
    pla.po_line_id,
    pla.item_id,
    pla.closed_flag,
    pla.quantity,
    pla.unit_price,
    
    ---Line Location info
    plla.line_location_id,
    plla.ship_to_location_id,
    plla.quantity,
    plla.quantity_received,
    plla.quantity_billed,
    plla.taxable_flag,
    plla.approved_flag,
    plla.inspection_required_flag,
    plla.receipt_required_flag,
    plla.match_option,
    plla.closed_code,
    
    -----Po DISTrIBUTIONS
    pda.po_distribution_id,
    pda.set_of_books_id,
    pda.quantity_ordered,
    pda.quantity_delivered,
    pda.quantity_billed,
    pda.deliver_to_location_id,
    pda.destination_type_code,
    pda.distribution_type,
    
    -- shipment
    rsl.shipment_line_id,
    rsl.shipment_line_status_code,
    rsl.quantity_received,
    rsl.source_document_code,
    
    -- shipment headers
    rsh.shipment_header_id,
    rsh.receipt_num
FROM
         po_headers_all pha
    JOIN po_lines_all          pla ON pha.po_header_id = pla.po_header_id
    JOIN po_line_locations_all plla ON pha.po_header_id = plla.po_header_id
    JOIN po_distributions_all  pda ON pda.po_header_id = plla.po_header_id
    JOIN rcv_shipment_lines rsl ON pha.po_header_id = rsl.po_header_id
    JOIN rcv_shipment_headers rsh ON rsl.shipment_header_id = rsh.shipment_header_id
WHERE

  pha.segment1 = '&PO_NUMBER';
    --pha.segment1 = '&PO_NUMBER'
    
    
select * from po_headers_all where closed_code= 'CLOSED';