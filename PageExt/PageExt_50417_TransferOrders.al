pageextension 50417 "ITX Transfer Orders Ext" extends "Transfer Orders"
{
    layout
    {
        addafter(Status)
        {
            field("ITX Container"; GetContainers())
            {
                Caption = 'Conteneur';
                ApplicationArea = all;
            }
        }
    }



    procedure GetContainers(): Text
    var
        Containers: Text;
        TransferLine: Record "Transfer Line";
    begin
        Containers := '';
        TransferLine.Reset();
        TransferLine.SetRange("Document No.", Rec."No.");

        IF TransferLine.FindSet() THEN BEGIN
            REPEAT
                IF StrPos(Containers, TransferLine."ITX Container") = 0 THEN BEGIN
                    IF Containers = '' THEN
                        Containers := TransferLine."ITX Container"
                    ELSE
                        Containers += ', ' + TransferLine."ITX Container";
                END
            UNTIL TransferLine.NEXT = 0;
            exit(Containers);
        end
    end;
}