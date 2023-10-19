page 50402 "ITX Transfer Order API"
{
    PageType = API;
    APIPublisher = 'ITX';
    APIGroup = 'Common';
    APIVersion = 'v1.0', 'v2.0', 'v3.0';
    EntityName = 'transferorder';
    EntitySetName = 'transferorders';
    SourceTable = "Transfer Header";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(containerType; Rec."ITX Container type")
                {
                    Caption = 'Type de conteneur';
                }

                field(docksideViewDate; Rec."ITX Dockside view date")
                {
                    Caption = 'Date de vu à quai';
                }
                field(boardingDate; Rec."ITX Boarding Date")
                {
                    Caption = 'Date embarquement';
                }

                field(portTerminalExitDate; Rec."ITX Port terminal exit date")
                {
                    Caption = 'Date sortie terminal portuaire';
                }
                field(arrivalPort; Rec."ITX Arrival Port")
                {
                    Caption = 'Port d''arrivée';
                }
                field(shippingTime; Rec."Shipping Time")
                {
                    Caption = 'Shipping Time';
                }
                field(receiptDate; Rec."Receipt Date")
                {
                    Caption = 'Receipt Date';
                }
                field(transferFromName; Rec."Transfer-from Name")
                {
                    Caption = 'Transfer-from Name';
                }
                field(directTransfer; Rec."Direct Transfer")
                {
                    Caption = 'Direct Transfer';
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'SystemCreatedAt';
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    Caption = 'SystemCreatedBy';
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'SystemModifiedAt';
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    Caption = 'SystemModifiedBy';
                }
            }
        }
    }
}