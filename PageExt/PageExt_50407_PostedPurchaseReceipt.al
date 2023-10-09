pageextension 50407 "PostedPurchaseReceipt Ext" extends "Posted Purchase Receipt"
{
    layout
    {

        addafter("Requested Receipt Date")
        {
            field("ITX Requested Shipment Date"; Rec."ITX Requested Shipment Date")
            {
                ApplicationArea = all;
            }
        }

        addafter("Responsibility Center")
        {
            field("ITX Container"; Rec."ITX Container")
            {
                ApplicationArea = all;
            }
        }

        addafter("Vendor Shipment No.")
        {
            field("ITX Vendor Invoice No."; Rec."ITX Vendor Invoice No.")
            {
                ApplicationArea = all;
            }
        }

        addlast(General)
        {
            field("ITX Assigned User ID"; Rec."ITX Assigned User ID")
            {
                ApplicationArea = all;
            }
        }

        addlast(Shipping)
        {
            field("ITX Boarding date"; Rec."ITX Boarding date")
            {
                ApplicationArea = all;
            }
        }

    }

    actions
    {

    }

    var
        myInt: Integer;
}