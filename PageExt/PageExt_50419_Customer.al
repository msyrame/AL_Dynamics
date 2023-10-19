pageextension 50419 "ITX Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addbefore("MobilePhoneNo")
        {
            field("Fax"; Rec."Fax No.")
            {
                ApplicationArea = all;
            }
        }
    }

    trigger OnModifyRecord(): boolean
    begin
        Rec."ITX WMS Status" := "ITX WMS Status"::ToSend;
        Rec."ITX Date WMS Status" := CurrentDateTime;
    end;
}