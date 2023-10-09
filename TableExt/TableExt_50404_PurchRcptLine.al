tableextension 50404 "ITX Purch. Rcpt. Line Ext" extends "Purch. Rcpt. Line"
{

    fields
    {

        field(50401; "ITX Nomenclature"; code[100])
        {
            Caption = 'Nomenclature';
            FieldClass = FlowField;
            CalcFormula = lookup(Item."Tariff No." WHERE("No." = field("No.")));
        }

        field(50404; "ITX Total volume"; Decimal)
        {
            Caption = 'Volume total';
        }

    }
}