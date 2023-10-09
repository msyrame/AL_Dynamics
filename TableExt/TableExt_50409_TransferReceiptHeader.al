tableextension 50409 "ITX TransfertRcptHeader Ext" extends "Transfer Receipt Header"
{
    fields
    {
        // Add changes to table fields here
        field(50401; "ITX Arrival Port"; Enum "ITX Arrival Port")
        {
            Caption = 'Port d''arrivée';
        }

        // Add changes to table fields here
        field(50402; "ITX Dockside view date"; Date)
        {
            Caption = 'Date de vu à quai';
        }

        // Add changes to table fields here
        field(50403; "ITX Port terminal exit date"; Date)
        {
            Caption = 'Date sortie terminal portuaire';
        }

        // Add changes to table fields here
        field(50404; "ITX Post Delivery Operator"; code[50])
        {
            Caption = 'Opérateur post acheminement';
        }

        // Add changes to table fields here
        field(50405; "ITX Starting ship"; code[50])
        {
            Caption = 'Navire de départ';
        }

        // Add changes to table fields here
        field(50406; "ITX Container type"; Enum "ITX Container Type")
        {
            Caption = 'Type de conteneur';
        }

        // Add changes to table fields here
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