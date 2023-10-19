codeunit 50403 "ITX TrfOrderLineFromReceipt"
{

    [EventSubscriber(ObjectType::Table, Database::"Transfer Header", 'OnAddTransferLineFromReceiptLineOnBeforeTransferLineInsert', '', false, false)]
    local procedure Add(var TransferLine: Record "Transfer Line"; PurchRcptLine: Record "Purch. Rcpt. Line"; var TransferHeader: Record "Transfer Header")
    var
        header: Record "Purch. Rcpt. Header";
        line: Record "Purch. Rcpt. Line";
    begin

        header.GET(PurchRcptLine."Document No.");

        TransferLine."ITX Container" := header."ITX Container";
        TransferLine."ITX Boarding Date" := header."ITX Boarding Date";
        TransferLine."ITX Your reference" := header."Your reference";
        TransferLine."ITX Vendor Shipment No." := header."Vendor Shipment No.";
        TransferLine."ITX Vendor Invoice No." := header."ITX Vendor Invoice No.";
        TransferLine."ITX Document Date" := header."Document Date";
        TransferLine."ITX Assigned User ID" := header."ITX Assigned User ID";
        TransferLine."ITX Buy-from Vendor No." := header."Buy-from Vendor No.";
        TransferLine."ITX Maximal boarding date" := header."ITX Maximal boarding date";
        TransferLine."ITX Requested Shipment Date" := header."ITX Requested Shipment Date";
    end;



}

