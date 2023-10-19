page 50410 "ITX PurchaseLines API"
{
    PageType = API;
    APIPublisher = 'ITX';
    APIGroup = 'Common';
    APIVersion = 'v1.0', 'v2.0', 'v3.0';
    EntityName = 'purchaseline';
    EntitySetName = 'purchaselines';
    SourceTable = "Purchase Line";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(documentlineType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }

                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }

                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }

                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }

                field(type; Rec."Type")
                {
                    Caption = 'Type';
                }

            }
        }
    }
}
