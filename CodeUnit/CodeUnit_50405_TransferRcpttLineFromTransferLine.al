codeunit 50405 "TrfRcptLine From TrfLine"
{


    [EventSubscriber(ObjectType::Table, DataBase::"Transfer Receipt Line", 'OnAfterCopyFromTransferLine', '', false, false)]
    local procedure OnAfterCopyFromTransferLine(var TransferReceiptLine: Record "Transfer Receipt Line"; TransferLine: Record "Transfer Line")
    begin
        TransferReceiptLine."ITX Container" := TransferLine."ITX Container";
        TransferReceiptLine."ITX Boarding Date" := TransferLine."ITX Boarding Date";
        TransferReceiptLine."ITX Your reference" := TransferLine."ITX Your reference";
        TransferReceiptLine."ITX Vendor Shipment No." := TransferLine."ITX Vendor Shipment No.";
        TransferReceiptLine."ITX Vendor Invoice No." := TransferLine."ITX Vendor Invoice No.";
        TransferReceiptLine."ITX Document Date" := TransferLine."ITX Document Date";
        TransferReceiptLine."ITX Assigned User ID" := TransferLine."ITX Assigned User ID";
        TransferReceiptLine."ITX Buy-from Vendor No." := TransferLine."ITX Buy-from Vendor No.";
        TransferReceiptLine."ITX Maximal boarding date" := TransferLine."ITX Maximal boarding date";
        TransferReceiptLine."ITX Requested Shipment Date" := TransferLine."ITX Requested Shipment Date";
    end;
}