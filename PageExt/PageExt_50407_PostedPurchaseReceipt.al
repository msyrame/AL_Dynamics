pageextension 50407 "ITX PostedPurchaseReceipt Ext" extends "Posted Purchase Receipt"
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

        addlast(Shipping)
        {
            field("ITX Maximal boarding date"; Rec."ITX Maximal boarding date")
            {
                ApplicationArea = all;
            }
        }

        addlast(Shipping)
        {
            field("Transport Method"; Rec."Transport Method")
            {
                ApplicationArea = all;
            }
        }

        addlast(General)
        {
            field("Your Reference"; Rec."Your Reference")
            {
                Editable = false;
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