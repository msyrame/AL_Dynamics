tableextension 50402 "ITX Transfer Header Ext" extends "Transfer Header"
{
    fields
    {

        field(50401; "ITX Boarding Date"; Date)
        {
            Caption = 'Date embarquement';
        }

        field(50402; "ITX Total volume"; Decimal)
        {
            Caption = 'Total volume';
            trigger OnValidate();
            begin
                if (Rec."ITX Total volume" < 0)
                then begin
                    Error('Un volume doit être positif.')
                end;
            end;
        }

        field(50403; "ITX Arrival Port"; Enum "ITX Arrival Port")
        {
            Caption = 'Port d''arrivée';
        }

        field(50404; "ITX Dockside view date"; Date)
        {
            Caption = 'Date de vu à quai';
        }

        field(50405; "ITX Port terminal exit date"; Date)
        {
            Caption = 'Date sortie terminal portuaire';
        }

        field(50406; "ITX Post Delivery Operator"; Text[50])
        {
            Caption = 'Opérateur post acheminement';
        }

        field(50407; "ITX Starting ship"; Text[50])
        {
            Caption = 'Navire de départ';
        }

        field(50408; "ITX Container type"; Enum "ITX Container Type")
        {
            Caption = 'Type de conteneur';
        }

        field(50409; "ITX Arrival ship"; Text[50])
        {
            Caption = 'Navire d''arrivée';
        }

        field(50410; "ITX Arrival Date"; Date)
        {
            Caption = 'Date d''arrivée';
        }

        field(50411; "ITX LHTE Arrival Date"; Date)
        {
            Caption = 'Date d''arrivée LHTE';
        }

        field(50412; "ITX LHTE Departure Date"; Date)
        {
            Caption = 'Date de départ LHTE';
        }

        field(50413; "ITX WMS Status"; Enum "ITX WMS Status")
        {
            Caption = 'Statut WMS';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "ITX Date WMS Status" := CurrentDateTime;
            end;
        }

        field(50414; "ITX Date WMS Status"; DateTime)
        {
            Caption = 'Date moditication statut';
        }

        field(50415; "ITX Date Last Descent"; DateTime)
        {
            Caption = 'Date dernière descente';
        }

    }
}