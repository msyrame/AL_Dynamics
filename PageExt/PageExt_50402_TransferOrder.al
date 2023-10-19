pageextension 50402 "ITX Transfer Order Ext" extends "Transfer Order"
{
    layout
    {

        addlast(Shipment)
        {
            field("Date embarquement"; Rec."ITX Boarding Date")
            {
                ApplicationArea = All;
            }

            // field("Total volume"; Rec."ITX Total volume")
            // {
            //     ApplicationArea = All;
            // }

            field("Port d'arrivée"; Rec."ITX Arrival Port")
            {
                ApplicationArea = All;
            }

            field("Date de vu à quai"; Rec."ITX Dockside view date")
            {
                ApplicationArea = All;
            }

            field("Date sortie terminal portuaire"; Rec."ITX Port terminal exit date")
            {
                ApplicationArea = All;
            }

            field("Opérateur Post Acheminement"; Rec."ITX Post Delivery Operator")
            {
                ApplicationArea = Suite;
            }

            field("Navire de départ"; Rec."ITX Starting ship")
            {
                ApplicationArea = All;
            }

            field("Type de conteneur"; Rec."ITX Container type")
            {
                ApplicationArea = Suite;
            }

            field("Navire d'arrivée"; Rec."ITX Arrival ship")
            {
                ApplicationArea = All;
            }

            field("Date d''arrivée"; Rec."ITX Arrival Date")
            {
                ApplicationArea = All;
            }

            field("Date d''arrivée LHTE"; Rec."ITX LHTE Arrival Date")
            {
                ApplicationArea = All;
            }

            field("Date départ LHTE"; Rec."ITX LHTE Departure Date")
            {
                ApplicationArea = All;
            }
        }

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

    }
}