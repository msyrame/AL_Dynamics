

codeunit 50402 "TransferOrder-Post Rcpt Ext"
{

    [EventSubscriber(ObjectType::Codeunit, CodeUnit::"TransferOrder-Post Receipt", 'OnBeforeTransRcptHeaderInsert', '', false, false)]
    local procedure CopyFromTransferHeader(var TransferReceiptHeader: Record "Transfer Receipt Header"; TransferHeader: Record "Transfer Header")
    begin
        TransferReceiptHeader."ITX Arrival Port" := TransferHeader."ITX Arrival Port";
        TransferReceiptHeader."ITX Dockside view date" := TransferHeader."ITX Dockside view date";
        TransferReceiptHeader."ITX Port terminal exit date" := TransferHeader."ITX Port terminal exit date";
        TransferReceiptHeader."ITX Post Delivery Operator" := TransferHeader."ITX Post Delivery Operator";
        TransferReceiptHeader."ITX Starting ship" := TransferHeader."ITX Starting ship";
        TransferReceiptHeader."ITX Container type" := TransferHeader."ITX Container type";
        TransferReceiptHeader."ITX Arrival ship" := TransferHeader."ITX Arrival ship";
        TransferReceiptHeader."ITX Arrival Date" := TransferHeader."ITX Arrival Date";
        TransferReceiptHeader."ITX LHTE Arrival Date" := TransferHeader."ITX LHTE Arrival Date";
        TransferReceiptHeader."ITX LHTE Departure Date" := TransferHeader."ITX LHTE Departure Date";
    end;
}