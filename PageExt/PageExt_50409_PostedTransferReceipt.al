pageextension 50409 "ITX Posted Trf Receipt Ext" extends "Posted Transfer Receipt"
{
    layout
    {
        addafter("Receipt Date")
        {
            field("ITX Arrival Port"; Rec."ITX Arrival Port")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Arrival Port")
        {
            field("ITX Dockside view date"; Rec."ITX Dockside view date")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Dockside view date")
        {
            field("ITX Port terminal exit date"; Rec."ITX Port terminal exit date")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Port terminal exit date")
        {
            field("ITX Post Delivery Operator"; Rec."ITX Post Delivery Operator")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Post Delivery Operator")
        {
            field("ITX Starting ship"; Rec."ITX Starting ship")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Starting ship")
        {
            field("ITX Container type"; Rec."ITX Container type")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Container type")
        {
            field("ITX Arrival ship"; Rec."ITX Arrival ship")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Arrival ship")
        {
            field("ITX Arrival Date"; Rec."ITX Arrival Date")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX Arrival Date")
        {
            field("ITX LHTE Arrival Date"; Rec."ITX LHTE Arrival Date")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter("ITX LHTE Arrival Date")
        {
            field("ITX LHTE Departure Date"; Rec."ITX LHTE Departure Date")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }


    }

    actions
    {

    }

    var
        myInt: Integer;
}