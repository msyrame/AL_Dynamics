pageextension 50412 "ITX Posted Sales Inv Subf Ext" extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("Unit Price")
        {
            field("Prix net"; Rec.CalcUnitPriceWithDiscount)
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
        addafter("ITX Eco Contribution")
        {
            field("ITX EAN13"; Rec."ITX EAN13")
            {
                ApplicationArea = All;
            }
        }
        addlast(control9)
        {
            field("ITX Total Eco Contribution"; TotalEcoContrib)
            {
                ApplicationArea = Basic, Suite;
                AutoFormatType = 1;
                Caption = 'Total Eco Contribution';
                Editable = false;
            }
        }
        addafter("ITX EAN13")
        {
            field("Ref. Client"; Rec."ITX Customer Reference")
            {
                ApplicationArea = All;
            }
        }
    }

    var
        TotalEcoContrib: decimal;

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
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        TotalEcoContrib := 0;
        SalesInvoiceLine.Reset();
        SalesInvoiceLine.CopyFilters(rec);

        IF SalesInvoiceLine.FindSet() THEN BEGIN
            REPEAT
                TotalEcoContrib += SalesInvoiceLine.CalcTotalEcoContribLine();
            UNTIL SalesInvoiceLine.NEXT = 0;
        end
    end;
}