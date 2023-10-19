page 50403 "ITX Item ID API"
{
    PageType = API;
    APIPublisher = 'ITX';
    APIGroup = 'Common';
    APIVersion = 'v1.0', 'v2.0', 'v3.0';
    EntityName = 'itemid';
    EntitySetName = 'itemids';
    SourceTable = "Item";
    DelayedInsert = true;
    ModifyAllowed = false;

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

                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }

            }
        }
    }
}