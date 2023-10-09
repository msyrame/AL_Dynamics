page 50407 "ITX SalesOrders API"
{
    PageType = API;
    APIPublisher = 'ITX';
    APIGroup = 'Common';
    APIVersion = 'v1.0', 'v2.0', 'v3.0';
    EntityName = 'salesorder';
    EntitySetName = 'salesorders';
    SourceTable = "Sales Header";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }

                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }

                field(customerno; Rec."Sell-to Customer No.")
                {
                    Caption = 'No. Customer';
                }

                field(wmsstatus; Rec."ITX WMS Status")
                {
                    Caption = 'ITX WMS Status';
                }

                field(wmsdatestatus; Rec."ITX Date WMS Status")
                {
                    Caption = 'ITX WMS Date Status';
                }

                field(wmslastdescent; Rec."ITX Date Last Descent")
                {
                    Caption = 'ITX Date Last Descent';
                }
            }
        }
    }
}
