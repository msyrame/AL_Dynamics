codeunit 50404 "TrfShptLine From TrfLine"
{


    [EventSubscriber(ObjectType::Table, DataBase::"Transfer Shipment Line", 'OnAfterCopyFromTransferLine', '', false, false)]
    local procedure OnAfterCopyFromTransferLine(var TransferShipmentLine: Record "Transfer Shipment Line"; TransferLine: Record "Transfer Line")
    begin
        TransferShipmentLine."ITX Container" := TransferLine."ITX Container";
        TransferShipmentLine."ITX Boarding Date" := TransferLine."ITX Boarding Date";
        TransferShipmentLine."ITX Your reference" := TransferLine."ITX Your reference";

        TransferShipmentLine."ITX Vendor Shipment No." := TransferLine."ITX Vendor Shipment No.";
        TransferShipmentLine."ITX Vendor Invoice No." := TransferLine."ITX Vendor Invoice No.";
        TransferShipmentLine."ITX Document Date" := TransferLine."ITX Document Date";
        TransferShipmentLine."ITX Assigned User ID" := TransferLine."ITX Assigned User ID";
        TransferShipmentLine."ITX Buy-from Vendor No." := TransferLine."ITX Buy-from Vendor No.";
        TransferShipmentLine."ITX Requested Shipment Date" := TransferLine."ITX Requested Shipment Date";
        TransferShipmentLine."ITX Maximal boarding date" := TransferLine."ITX Maximal boarding date";
    end;
}