pageextension 50401 "ITX Item Card" extends "Item Card"
{
    layout
    {
        addlast(ForeignTrade)
        {
            field("RTC"; Rec."ITX RTC")
            {
                ApplicationArea = All;
            }

            field("Date de validité RTC"; Rec."ITX RTC Date of validity")
            {
                ApplicationArea = All;
            }
        }
        addafter(CalcUnitPriceExclVAT)
        {
            field("ITX Eco contribution"; Rec."ITX Eco Contribution")
            {
                ApplicationArea = All;
            }
        }
        // addafter("ITX Eco contribution")
        // {
        //     field("ITX Shipping fees"; Rec."ITX Shipping fees")
        //     {
        //         ApplicationArea = All;
        //     }
        // }

    }
}