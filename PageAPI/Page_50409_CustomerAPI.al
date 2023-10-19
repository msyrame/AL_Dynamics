page 50409 "ITX Customer API"
{
    PageType = API;
    APIPublisher = 'ITX';
    APIGroup = 'Common';
    APIVersion = 'v1.0', 'v2.0', 'v3.0';
    EntityName = 'customer';
    EntitySetName = 'customers';
    SourceTable = "Customer";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(no; Rec."No.")
                {
                    Caption = 'No';
                }
                field(name; Rec."Name")
                {
                    Caption = 'Name';
                }
                field(address; Rec."Address")
                {
                    Caption = 'Address';
                }
                field(phoneno; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                }
                field(faxno; Rec."Fax No.")
                {
                    Caption = 'Fax No.';
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
