pageextension 50413 "ITX Locatino List Ext" extends "Location List"
{
    layout
    {
        addlast(Control1)
        {
            field("ITX Warehouse"; Rec."ITX Warehouse")
            {
                ApplicationArea = All;
            }
        }
    }
}
