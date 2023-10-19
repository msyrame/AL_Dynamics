codeunit 50406 "ITX PrchHeaderToPrchRcptHeader"
{

    [EventSubscriber(ObjectType::Codeunit, CodeUnit::"Purch.-Post", 'OnBeforePurchRcptHeaderInsert', '', false, false)]
    local procedure OnBeforePurchRcptHeaderInsert(var PurchRcptHeader: Record "Purch. Rcpt. Header"; var PurchaseHeader: Record "Purchase Header"; CommitIsSupressed: Boolean; WarehouseReceiptHeader: Record "Warehouse Receipt Header"; WhseReceive: Boolean; WarehouseShipmentHeader: Record "Warehouse Shipment Header"; WhseShip: Boolean)
    begin
        PurchRcptHeader."ITX Vendor Invoice No." := PurchaseHeader."Vendor Invoice No.";
        PurchRcptHeader."ITX Assigned User ID" := PurchaseHeader."Assigned User ID";
        PurchRcptHeader."ITX Requested Shipment Date" := PurchaseHeader."ITX Requested Shipment Date";
        PurchRcptHeader."ITX Maximal boarding date" := PurchaseHeader."ITX Maximal boarding date";
        PurchRcptHeader."Transport Method" := PurchaseHeader."Transport Method";
        PurchRcptHeader."Your Reference" := PurchaseHeader."Your Reference";
    end;
}