tableextension 50412 "ITX Sales Invoice Line Ext" extends "Sales Invoice Line"
{
    fields
    {
        field(50401; "ITX Eco Contribution"; decimal)
        {
            Caption = 'Éco contribution';
            Editable = false;
        }

        field(50402; "ITX EAN13"; code[20])
        {
            Caption = 'EAN 13';
            Editable = false;
        }

        field(50403; "ITX Customer Reference"; code[20])
        {
            Caption = 'Référence client';
            Editable = false;
        }
    }

    procedure CalcUnitPriceWithDiscount(): Decimal
    begin
        exit(Round("Unit Price" - "Line Discount %" / 100 * "Unit Price"));
    end;

    procedure CalcTotalEcoContribLine(): Decimal
    begin
        exit(Round(Quantity * "ITX Eco Contribution"));
    end;
}