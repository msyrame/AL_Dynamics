tableextension 50403 "ITX Transfer Line Ext" extends "Transfer Line"
{
    fields
    {
        field(50401; "ITX Nomenclature"; code[20])
        {
            Caption = 'Nomenclature';
            FieldClass = FlowField;
            CalcFormula = lookup(Item."Tariff No." WHERE("No." = field("Item No.")));
            Editable = false;
        }

        field(50402; "ITX Container"; code[50])
        {
            Caption = 'Conteneur';
            Editable = false;
        }

        field(50403; "ITX Boarding Date"; Date)
        {
            Caption = 'Date d''embarquement';
            Editable = false;
        }

        field(50404; "ITX Your reference"; code[35])
        {
            Caption = 'Votre référence';
            Editable = false;
        }

        field(50405; "ITX Vendor Shipment No."; code[35])
        {
            Caption = 'N° BL fournisseur';
            Editable = false;
        }

        field(50406; "ITX Vendor Invoice No."; code[35])
        {
            Caption = 'N° Facture fournisseur';
            Editable = false;
        }

        field(50407; "ITX Document Date"; Date)
        {
            Caption = 'Date document';
            Editable = false;
        }

        field(50408; "ITX Assigned User ID"; code[50])
        {
            Caption = 'Code utilisateur affecté';
            Editable = false;
        }

        field(50409; "ITX Buy-from Vendor No."; code[20])
        {
            Caption = 'N° fournisseur';
            Editable = false;
        }

        field(50410; "ITX Maximal boarding date"; Date)
        {
            Caption = 'LSD';
            Editable = false;
        }

        field(50411; "ITX Requested Shipment Date"; Date)
        {
            Caption = 'RSD';
            Editable = false;
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