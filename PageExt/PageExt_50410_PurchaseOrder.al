pageextension 50410 "ITX Purchase Order Ext" extends "Purchase Order"
{
    layout
    {
        addafter("Requested Receipt Date")
        {
            field("ITX Requested Shipment Date"; Rec."ITX Requested Shipment Date")
            {
                ApplicationArea = all;
            }
        }

        addLast("Invoice Details")
        {
            field("ITX Maximal boarding date"; Rec."ITX Maximal boarding date")
            {
                ApplicationArea = all;
            }
        }

        addafter(General)
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

    }




}