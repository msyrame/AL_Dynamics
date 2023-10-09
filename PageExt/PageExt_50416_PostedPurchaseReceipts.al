pageextension 50417 "PostedPurchaseReceipts Ext" extends "Posted Purchase Receipts"
{
    layout
    {
        addafter("Location Code")
        {
            field("ITX Container"; Rec."ITX Container")
            {
                ApplicationArea = all;
            }
        }
    }
}