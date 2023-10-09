pageextension 50411 "ITX Sales Order Subform Ext" extends "Sales Order Subform"
{


    layout
    {
        modify("Item Reference No.")
        {
            trigger OnAfterValidate()
            begin
                UpdateTotals();
            end;
        }

        modify(Quantity)
        {
            trigger OnAfterValidate()
            begin
                UpdateTotals();
            end;
        }

        modify(Description)
        {
            Editable = false;
        }

        modify("Unit Price")
        {
            Editable = false;
        }

        addafter(Description)
        {
            field("EAN13"; Rec."ITX EAN13")
            {
                ApplicationArea = All;
            }
        }
        addafter("Unit Price")
        {
            field("ITX Eco Contribution"; Rec."ITX Eco Contribution")
            {
                ApplicationArea = All;
            }
        }
        addafter("Line Discount %")
        {
            field("Prix net"; Rec.CalcUnitPriceWithDiscount)
            {
                ApplicationArea = All;
            }
        }
        addlast(Control28)
        {
            field("ITX Total Eco Contribution"; TotalEcoContrib)
            {
                ApplicationArea = Basic, Suite;
                AutoFormatType = 1;
                Caption = 'Total Eco Contribution';
                Editable = false;
            }
        }
        // addlast(Control28)
        // {
        //     field("Total Shipping Fees"; TotalShippingFees)
        //     {
        //         ApplicationArea = Basic, Suite;
        //         AutoFormatType = 1;
        //         Caption = 'Total Frais de port';
        //         Editable = false;
        //     }
        // }
        addafter(EAN13)
        {
            field("Ref. Client"; Rec."ITX Customer Reference")
            {
                ApplicationArea = All;
            }
        }
    }

    var
        TotalEcoContrib: decimal;
    // TotalShippingFees: decimal;

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
        SalesLine: Record "Sales line";
    begin
        TotalEcoContrib := 0;
        SalesLine.Reset();
        SalesLine.CopyFilters(rec);

        SalesLine.SetAutoCalcFields("ITX Eco Contribution");
        IF SalesLine.FindSet() THEN BEGIN
            REPEAT
                TotalEcoContrib += SalesLine.CalcTotalEcoContribLine();
            UNTIL SalesLine.NEXT = 0;
        end
    end;

}