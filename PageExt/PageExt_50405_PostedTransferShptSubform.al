pageextension 50405 "ITX PostedTrfShpt Subform Ext" extends "Posted Transfer Shpt. Subform"
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

        addafter(Quantity)
        {
            field("ITX Unit Volume"; Rec."Unit Volume")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Unit Volume")
        {
            field("Volume"; Rec.CalcTotalVolume())
            {
                ApplicationArea = all;
            }
        }

        addafter(Control1)
        {
            group(Control2)
            {
                ShowCaption = false;
                field("Total Volume"; TotalVolume)
                {
                    ApplicationArea = all;
                    Editable = false;
                }
            }
        }
    }

    actions
    {

    }

    var
        myInt: Integer;
        TotalVolume: decimal;

    trigger OnAfterGetCurrRecord()
    begin
        UpdateTotals();
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        UpdateTotals();
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        UpdateTotals();
    end;

    procedure UpdateTotals()
    var
        TransferShipmentLine: Record "Transfer Shipment Line";
    begin
        TotalVolume := 0;
        TransferShipmentLine.Reset();
        TransferShipmentLine.CopyFilters(rec);

        IF TransferShipmentLine.FindSet() THEN BEGIN
            REPEAT
                TotalVolume += TransferShipmentLine.CalcTotalVolume();
            UNTIL TransferShipmentLine.NEXT = 0;
        end
    end;
}