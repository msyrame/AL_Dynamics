page 50405 "ITX BOM Component API"
{
    PageType = API;
    APIPublisher = 'ITX';
    APIGroup = 'Common';
    APIVersion = 'v1.0', 'v2.0', 'v3.0';
    EntityName = 'bomcomponent';
    EntitySetName = 'bomcomponents';
    SourceTable = "BOM Component";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("type"; Rec."Type")
                {
                    Caption = 'Type';
                }
                field("no"; Rec."No.")
                {
                    Caption = 'no';
                }
                field("description"; Rec.Description)
                {
                    Caption = 'description';
                }
                field("assemblyBom"; Rec."Assembly BOM")
                {
                    Caption = 'assemblyBom';
                }
                field("qtyPer"; Rec."Quantity per")
                {
                    Caption = 'qtyPer';
                }
                field("unitOfMeasureCode"; Rec."Unit of Measure Code")
                {
                    Caption = 'unitOfMeasureCode';
                }
                field("installedInItemNo"; Rec."Installed in Item No.")
                {
                    Caption = 'installedInItemNo';
                }
                field("position"; Rec.Position)
                {
                    Caption = 'position';
                }
            }
        }
    }
}