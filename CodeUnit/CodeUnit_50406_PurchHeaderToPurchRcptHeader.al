codeunit 50406 "PurchHeader To PurchRcptHeader"
{

    [EventSubscriber(ObjectType::Codeunit, CodeUnit::"Purch.-Post", 'OnBeforePurchRcptHeaderInsert', '', false, false)]
    local procedure OnBeforePurchRcptHeaderInsert(var PurchRcptHeader: Record "Purch. Rcpt. Header"; var PurchaseHeader: Record "Purchase Header"; CommitIsSupressed: Boolean; WarehouseReceiptHeader: Record "Warehouse Receipt Header"; WhseReceive: Boolean; WarehouseShipmentHeader: Record "Warehouse Shipment Header"; WhseShip: Boolean)
    begin
        PurchRcptHeader."ITX Vendor Invoice No." := PurchaseHeader."Vendor Invoice No.";
        PurchRcptHeader."ITX Assigned User ID" := PurchaseHeader."Assigned User ID";
        PurchRcptHeader."ITX Requested Shipment Date" := PurchaseHeader."ITX Requested Shipment Date";
    end;
}