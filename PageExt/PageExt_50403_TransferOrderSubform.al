pageextension 50403 "ITX Transfer Order Subform Ext" extends "Transfer Order Subform"
{
    layout
    {
        modify(Quantity)
        {
            trigger OnAfterValidate()
            begin
                CurrPage.Update(true);
                UpdateTotals();
            end;
        }

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
            field("Unit Volume"; Rec."Unit Volume")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter(Quantity)
        {
            field("Volume"; Rec.CalcTotalVolume())
            {
                ApplicationArea = all;
                Editable = false;
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
        TransferLine: Record "Transfer Line";
    begin
        TotalVolume := 0;
        TransferLine.Reset();
        TransferLine.CopyFilters(rec);

        IF TransferLine.FindSet() THEN BEGIN
            REPEAT
                TotalVolume += TransferLine.CalcTotalVolume();
            UNTIL TransferLine.NEXT = 0;
        end
    end;
}