pageextension 50416 "ITX PostedPurchaseReceipts Ext" extends "Posted Purchase Receipts"
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