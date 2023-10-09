pageextension 50414 "ITX Locatino Card Ext" extends "Location Card"
{
    layout
    {
        addlast(General)
        {
            field("ITX Warehouse"; Rec."ITX Warehouse")
            {
                ApplicationArea = All;
                ShowMandatory = true;
            }
        }
    }
}