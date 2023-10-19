pageextension 50418 "ITX Purchase Invoice Ext" extends "Purchase Invoice"
{
    layout
    {
        addbefore("Order Address Code")
        {
            field("ITX Vendor Shipment No."; Rec."Vendor Shipment No.")
            {
                ApplicationArea = all;
            }
        }
    }
}