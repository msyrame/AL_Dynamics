tableextension 50401 ItemsTableExt extends Item
{
    fields
    {
        modify("Tariff No.")
        {
            trigger OnBeforeValidate()
            var
                myInt: BigInteger;
            begin
                evaluate(myInt, rec."Tariff No.");
            end;
        }

        field(50401; "ITX RTC"; Code[20])
        {
            Caption = 'RTC';
        }

        field(50402; "ITX RTC Date of validity"; Date)
        {
            Caption = 'Date validité RTC';
        }
        field(50403; "ITX Eco Contribution"; Decimal)
        {
            Caption = 'Éco contribution';
        }
        // field(50404; "ITX Shipping fees"; Decimal)
        // {
        //     Caption = 'Frais de port';
        // }
    }

    var
        myInt: Integer;
}