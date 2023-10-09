pageextension 50404 "PostedPurchaseRcpt Subform Ext" extends "Posted Purchase Rcpt. Subform"
{
    layout
    {
        addbefore(Description)
        {
            field("ITX Nomenclature"; Rec."ITX Nomenclature")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Total volume"; Rec."ITX Total volume")
            {
                ApplicationArea = all;
            }
        }
    }
}