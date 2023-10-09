tableextension 50414 "ITX Sales Header Ext" extends "Sales Header"
{

    fields
    {

        field(50401; "ITX WMS Status"; Enum "ITX WMS Status")
        {
            Caption = 'Statut WMS';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "ITX Date WMS Status" := CurrentDateTime;
            end;
        }

        field(50402; "ITX Date WMS Status"; DateTime)
        {
            Caption = 'Date moditication statut';
            Editable = false;
        }

        field(50403; "ITX Date Last Descent"; DateTime)
        {
            Caption = 'Date dernière descente';
            Editable = false;
        }

    }


}