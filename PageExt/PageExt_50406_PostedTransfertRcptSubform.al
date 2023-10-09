pageextension 50406 "PostedTransferRcpt Subform Ext" extends "Posted Transfer Rcpt. Subform"
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
            field("ITX Container"; Rec."ITX Container")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Boarding Date"; Rec."ITX Boarding Date")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Your Reference"; Rec."ITX Your Reference")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Vendor Shipment No."; Rec."ITX Vendor Shipment No.")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Vendor Invoice No."; Rec."ITX Vendor Invoice No.")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Document Date"; Rec."ITX Document Date")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Buy-from Vendor No."; Rec."ITX Buy-from Vendor No.")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Assigned User ID"; Rec."ITX Assigned User ID")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Requested Shipment Date"; Rec."ITX Requested Shipment Date")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Maximal boarding date"; Rec."ITX Maximal boarding date")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Unit Volume"; Rec."ITX Unit Volume")
            {
                ApplicationArea = all;
            }
        }

        addlast(Control1)
        {
            field("ITX Total Volume"; Rec.CalcTotalVolume())
            {
                ApplicationArea = all;
            }
        }
    }

    var
        myInt: Integer;
}