tableextension 50408 "ITX TransfertShptHeader Ext" extends "Transfer Shipment Header"
{
    fields
    {
        field(50401; "ITX Arrival Port"; Enum "ITX Arrival Port")
        {
            Caption = 'Port d''arrivée';
        }

        field(50402; "ITX Dockside view date"; Date)
        {
            Caption = 'Date de vu à quai';
        }

        field(50403; "ITX Port terminal exit date"; Date)
        {
            Caption = 'Date sortie terminal portuaire';
        }

        field(50404; "ITX Post Delivery Operator"; code[50])
        {
            Caption = 'Opérateur post acheminement';
        }

        field(50405; "ITX Starting ship"; code[50])
        {
            Caption = 'Navire de départ';
        }

        field(50406; "ITX Container type"; Enum "ITX Container Type")
        {
            Caption = 'Type de conteneur';
        }

        field(50407; "ITX Arrival ship"; code[50])
        {
            Caption = 'Navire d''arrivée';
        }

        field(50408; "ITX Arrival Date"; Date)
        {
            Caption = 'Date d''arrivée';
        }

        field(50409; "ITX LHTE Arrival Date"; Date)
        {
            Caption = 'Date d''arrivée LHTE';
        }

        field(50410; "ITX LHTE Departure Date"; Date)
        {
            Caption = 'Date de départ LHTE';
        }

    }





}