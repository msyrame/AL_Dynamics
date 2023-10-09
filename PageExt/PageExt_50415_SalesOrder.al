pageextension 50415 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        addafter("Control1900201301")
        {
            group("WMS Info")
            {
                field("WMS Status"; Rec."ITX WMS Status")
                {
                    ApplicationArea = All;
                }
                field("WMS Date Status"; Rec."ITX Date WMS Status")
                {
                    ApplicationArea = All;
                }
                field("WMS Last Descent"; Rec."ITX Date Last Descent")
                {
                    ApplicationArea = All;
                }
            }
        }

    }

    actions
    {

    }




}