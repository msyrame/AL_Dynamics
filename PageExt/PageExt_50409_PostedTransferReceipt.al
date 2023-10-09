pageextension 50409 "Posted Transfer Receipt Ext" extends "Posted Transfer Receipt"
{
    layout
    {
        addafter("Receipt Date")
        {
            field("ITX Arrival Port"; Rec."ITX Arrival Port")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Arrival Port")
        {
            field("ITX Dockside view date"; Rec."ITX Dockside view date")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Dockside view date")
        {
            field("ITX Port terminal exit date"; Rec."ITX Port terminal exit date")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Port terminal exit date")
        {
            field("ITX Post Delivery Operator"; Rec."ITX Post Delivery Operator")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Post Delivery Operator")
        {
            field("ITX Starting ship"; Rec."ITX Starting ship")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Starting ship")
        {
            field("ITX Container type"; Rec."ITX Container type")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Container type")
        {
            field("ITX Arrival ship"; Rec."ITX Arrival ship")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Arrival ship")
        {
            field("ITX Arrival Date"; Rec."ITX Arrival Date")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX Arrival Date")
        {
            field("ITX LHTE Arrival Date"; Rec."ITX LHTE Arrival Date")
            {
                ApplicationArea = all;
            }
        }

        addafter("ITX LHTE Arrival Date")
        {
            field("ITX LHTE Departure Date"; Rec."ITX LHTE Departure Date")
            {
                ApplicationArea = all;
            }
        }


    }

    actions
    {

    }

    var
        myInt: Integer;
}