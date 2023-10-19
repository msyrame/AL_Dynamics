tableextension 50405 "ITX TransfertShipmentLine Ext" extends "Transfer Shipment Line"
{
    fields
    {

        field(50401; "ITX Nomenclature"; code[20])
        {
            Caption = 'Nomenclature';
        }

        field(50402; "ITX Container"; code[50])
        {
            Caption = 'Conteneur';
        }

        field(50403; "ITX Boarding Date"; Date)
        {
            Caption = 'Date d''embarquement';
        }

        field(50404; "ITX Your reference"; code[35])
        {
            Caption = 'Votre référence';
        }

        field(50405; "ITX Vendor Shipment No."; code[35])
        {
            Caption = 'N° BL fournisseur';
        }

        field(50406; "ITX Vendor Invoice No."; code[35])
        {
            Caption = 'N° Facture fournisseur';
        }

        field(50407; "ITX Document Date"; Date)
        {
            Caption = 'Date document';
        }

        field(50408; "ITX Assigned User ID"; code[50])
        {
            Caption = 'Code utilisateur affecté';
        }

        field(50409; "ITX Buy-from Vendor No."; code[20])
        {
            Caption = 'N° fournisseur';
        }

        field(50410; "ITX Maximal boarding date"; Date)
        {
            Caption = 'Date maximale embarquement demandée';
        }

        field(50411; "ITX Requested Shipment Date"; Date)
        {
            Caption = 'Date d''expédition demandée';
        }
    }

    /// <summary>
    /// Retourne un décimal qui correspond au volume totale de la ligne
    /// </summary>
    /// <returns></returns>
    procedure CalcTotalVolume(): Decimal
    begin
        exit("Unit Volume" * Quantity);
    end;

}