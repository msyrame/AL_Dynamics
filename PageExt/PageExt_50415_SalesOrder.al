pageextension 50415 "ITX Sales Order Ext" extends "Sales Order"
{
    layout
    {
        addafter("General")
        {
            group("WMS Infos")
            {
                field("WMS Status"; Rec."ITX WMS Status")
                {
                    ApplicationArea = All;
                }
                field("WMS Date Status"; Rec."ITX Date WMS Status")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("WMS Last Descent"; Rec."ITX Date Last Descent")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        modify(reopen)
        {
            enabled = false;
        }
    }




}