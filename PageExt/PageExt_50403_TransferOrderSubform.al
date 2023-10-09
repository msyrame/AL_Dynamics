pageextension 50403 "Transfer Order Subform Ext" extends "Transfer Order Subform"
{
    layout
    {
        addafter(Description)
        {
            field("ITX Nomenclature"; Rec."ITX Nomenclature")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Nomenclature")
        {
            field("ITX Container"; Rec."ITX Container")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Container")
        {
            field("ITX Boarding Date"; Rec."ITX Boarding Date")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Boarding Date")
        {
            field("ITX Your reference"; Rec."ITX Your reference")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Your reference")
        {
            field("ITX Vendor Shipment No."; Rec."ITX Vendor Shipment No.")
            {
                ApplicationArea = all;
                Editable = false;

            }
        }

        addafter("ITX Vendor Shipment No.")
        {
            field("ITX Vendor Invoice No."; Rec."ITX Vendor Invoice No.")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Vendor Invoice No.")
        {
            field("ITX Document Date"; Rec."ITX Document Date")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Document Date")
        {
            field("ITX Assigned User ID"; Rec."ITX Assigned User ID")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Assigned User ID")
        {
            field("ITX Buy-from Vendor No."; Rec."ITX Buy-from Vendor No.")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Buy-from Vendor No.")
        {
            field("ITX Requested Shipment Date"; Rec."ITX Requested Shipment Date")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Requested Shipment Date")
        {
            field("ITX Maximal boarding date"; Rec."ITX Maximal boarding date")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Maximal boarding date")
        {
            field("ITX Unit Volume"; Rec."ITX Unit Volume")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Unit Volume")
        {
            field("Total Volume"; Rec.CalcTotalVolume())
            {
                ApplicationArea = all;
                Editable = false;
            }
        }
    }






    var
        myInt: Integer;
}