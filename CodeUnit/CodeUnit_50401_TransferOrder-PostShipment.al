codeunit 50401 "TransferOrder-Post Shpt Ext"
{

    [EventSubscriber(ObjectType::Codeunit, CodeUnit::"TransferOrder-Post Shipment", 'OnBeforeInsertTransShptHeader', '', false, false)]
    local procedure CopyFromTransferHeader(var TransShptHeader: Record "Transfer Shipment Header"; TransHeader: Record "Transfer Header"; CommitIsSuppressed: Boolean)
    begin
        TransShptHeader."ITX Arrival Port" := TransHeader."ITX Arrival Port";
        TransShptHeader."ITX Dockside view date" := TransHeader."ITX Dockside view date";
        TransShptHeader."ITX Port terminal exit date" := TransHeader."ITX Port terminal exit date";
        TransShptHeader."ITX Post Delivery Operator" := TransHeader."ITX Post Delivery Operator";
        TransShptHeader."ITX Starting ship" := TransHeader."ITX Starting ship";
        TransShptHeader."ITX Container type" := TransHeader."ITX Container type";
        TransShptHeader."ITX Arrival ship" := TransHeader."ITX Arrival ship";
        TransShptHeader."ITX Arrival Date" := TransHeader."ITX Arrival Date";
        TransShptHeader."ITX LHTE Arrival Date" := TransHeader."ITX LHTE Arrival Date";
        TransShptHeader."ITX LHTE Departure Date" := TransHeader."ITX LHTE Departure Date";
    end;
}