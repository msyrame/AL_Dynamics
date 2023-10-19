tableextension 50415 "ITX Customer Ext" extends "Customer"
{
    fields
    {
        field(50401; "ITX WMS Status"; Enum "ITX WMS Status")
        {
            Caption = 'Statut WMS';
        }

        field(50402; "ITX Date WMS Status"; DateTime)
        {
            Caption = 'Date moditication statut';
        }

        field(50403; "ITX Date Last Descent"; DateTime)
        {
            Caption = 'Date dernière descente';
        }
    }
}