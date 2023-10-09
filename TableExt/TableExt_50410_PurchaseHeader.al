tableextension 50410 "ITX Purchase Header Ext" extends "Purchase Header"
{

    fields
    {

        field(50401; "ITX Maximal boarding date"; Date)
        {
            Caption = 'LSD';
        }

        field(50407; "ITX Requested Shipment Date"; Date)
        {
            Caption = 'RSD';
        }

        field(50408; "ITX WMS Status"; Enum "ITX WMS Status")
        {
            Caption = 'Statut WMS';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "ITX Date WMS Status" := CurrentDateTime;
            end;
        }

        field(50409; "ITX Date WMS Status"; DateTime)
        {
            Caption = 'Date moditication statut';
            Editable = false;
        }

        field(50410; "ITX Date Last Descent"; DateTime)
        {
            Caption = 'Date dernière descente';
            Editable = false;
        }

    }


}