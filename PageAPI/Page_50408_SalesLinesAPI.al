page 50408 "ITX SalesLines API"
{
    PageType = API;
    APIPublisher = 'ITX';
    APIGroup = 'Common';
    APIVersion = 'v1.0', 'v2.0', 'v3.0';
    EntityName = 'salesline';
    EntitySetName = 'saleslines';
    SourceTable = "Sales Line";
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

                field(itemdescription; Rec."Description")
                {
                    Caption = 'Description';
                }

                field(itemdescription2; Rec."Description 2")
                {
                    Caption = 'Description 2';
                }

                field(unitpriceexcltaxes; Rec."Unit Price")
                {
                    Caption = 'Unit Price Excluding Taxes';
                }

                field(customeritemreference; Rec."ITX Customer Reference")
                {
                    Caption = 'Item Customer Reference';
                }


                field(quantity; Rec."Quantity")
                {
                    Caption = 'Quantity';
                }

                field(locationcode; Rec."Location Code")
                {
                    Caption = 'Location code';
                }

                field(locationwarehouse; Rec."ITX Warehouse")
                {
                    Caption = 'Warehouse';
                }

                field(type; Rec."Type")
                {
                    Caption = 'Type';
                }

            }
        }
    }
}
