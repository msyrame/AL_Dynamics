tableextension 50407 "ITX Purch. Rcpt. Header Ext" extends "Purch. Rcpt. Header"
{
    fields
    {
        field(50401; "ITX Maximal boarding date"; Date)
        {
            Caption = 'LSD';
        }

        field(50402; "ITX Container"; code[50])
        {
            Caption = 'Conteneur';
        }

        field(50403; "ITX Boarding Date"; Date)
        {
            Caption = 'Date d''embarquement';
        }

        field(50405; "ITX Vendor Invoice No."; code[35])
        {
            Caption = 'N° facture fournisseur';
        }

        field(50406; "ITX Assigned User ID"; code[50])
        {
            Caption = 'Code utilisateur affecté';
        }

        field(50407; "ITX Requested Shipment Date"; Date)
        {
            Caption = 'Date d''expédition demandée';
        }

    }
}