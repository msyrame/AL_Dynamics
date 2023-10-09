page 50404 "ITX Item Unit Of Measure API"
{
    PageType = API;
    APIPublisher = 'ITX';
    APIGroup = 'Common';
    APIVersion = 'v1.0', 'v2.0', 'v3.0';
    EntityName = 'itemunitofmeasure';
    EntitySetName = 'itemsunitofmeasures';
    SourceTable = "Item Unit Of Measure";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("code"; Rec."Code")
                {
                    Caption = 'Code';
                }
                field("qtyPerUnit"; Rec."Qty. per Unit of Measure")
                {
                    Caption = 'qtyPerUnit';
                }
                field("height"; Rec.Height)
                {
                    Caption = 'height';
                }
                field("width"; Rec.Width)
                {
                    Caption = 'width';
                }
                field("length"; Rec.Length)
                {
                    Caption = 'length';
                }
                field("cubage"; Rec.Cubage)
                {
                    Caption = 'cubage';
                }
                field("weigth"; Rec.Weight)
                {
                    Caption = 'weigth';
                }
                field("volume"; CalcVolume)
                {
                    Caption = 'volume';
                }
            }
        }
    }

    procedure CalcVolume(): Decimal
    begin
        exit(Round(rec.height * rec.width * rec.length));
    end;
}