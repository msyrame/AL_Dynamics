tableextension 50441 "ITX Sales Line Ext" extends "Sales Line"
{
    fields
    {
        field(50401; "ITX EAN13"; code[20])
        {
            Caption = 'EAN13';
            FieldClass = FlowField;
            CalcFormula = lookup(Item."GTIN" WHERE("No." = field("No.")));
        }


        field(50402; "ITX Eco Contribution"; decimal)
        {
            Caption = 'Éco contribution';
            FieldClass = FlowField;
            CalcFormula = lookup(Item."ITX Eco Contribution" WHERE("No." = field("No.")));
            Editable = false;
        }

        field(50403; "ITX Customer Reference"; Text[100])
        {
            Caption = 'Référence client';
            FieldClass = FlowField;
            CalcFormula = lookup("Item Reference"."Reference No." WHERE("Item No." = field("No."), "Reference Type No." = field("Sell-to Customer No.")));
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

    // procedure CalcTotalShippingFeesLine(): Decimal
    // begin
    //     exit(Round(Quantity * "ITX Shipping Fees"));
    // end;

}