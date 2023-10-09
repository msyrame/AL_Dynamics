page 50401 "ITX Item API"
{
    PageType = API;
    APIPublisher = 'ITX';
    APIGroup = 'Common';
    APIVersion = 'v1.0', 'v2.0', 'v3.0';
    EntityName = 'item';
    EntitySetName = 'items';
    SourceTable = "Item";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field(RTC; Rec."ITX RTC")
                {
                    Caption = 'RTC';
                }
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    Caption = 'SystemCreatedBy';
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'SystemCreatedAt';
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'SystemModifiedAt';
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    Caption = 'SystemModifiedBy';
                }
                field(tariffNo; Rec."Tariff No.")
                {
                    Caption = 'Tariff No.';
                }
                field(GTIN; Rec."GTIN")
                {
                    Caption = 'GTIN';
                }
                field(replenishmentSystem; Rec."Replenishment System")
                {
                    Caption = 'Replenishment System';
                }
                field(netWeight; Rec."Net Weight")
                {
                    Caption = 'Net Weight';
                }
                field(grossWeight; Rec."Gross Weight")
                {
                    Caption = 'Gross Weight';
                }
                field(unitVolume; Rec."Unit Volume")
                {
                    Caption = 'Unit Volume';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field(baseUnitOfMeasure; Rec."Base Unit of Measure")
                {
                    Caption = 'Base Unit of Measure';
                }
                field(genProdPostingGroup; Rec."Gen. Prod. Posting Group")
                {
                    Caption = 'Gen. Prod. Posting Group';
                }
                field(vatProdPostingGroup; Rec."VAT Prod. Posting Group")
                {
                    Caption = 'VAT Prod. Posting Group';
                }
                field(inventoryPostingGroup; Rec."Inventory Posting Group")
                {
                    Caption = 'Inventory Posting Group';
                }
                field(costingMethod; Rec."Costing Method")
                {
                    Caption = 'Costing Method';
                }
            }
            part(itemsunitofmeasures; "ITX Item Unit Of Measure API")
            {
                Caption = 'Item Unit Of Measure';
                EntityName = 'itemunitofmeasure';
                EntitySetName = 'itemsunitofmeasures';
                SubPageLink = "Item No." = Field("No.");
            }
            part(bomcomponents; "ITX BOM Component API")
            {
                Caption = 'BOM Component';
                EntityName = 'bomcomponent';
                EntitySetName = 'bomcomponents';
                SubPageLink = "Parent Item No." = Field("No.");
            }
        }
    }
}