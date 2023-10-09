reportextension 50401 "ITX Sales Invoice Ext" extends "Standard Sales - Invoice"
{

    dataset
    {
        // Add changes to dataitems and columns here
        add(Line)
        {
            column(ITXEAN13; Line."ITX EAN13") { }
            column(ITXEcoContribArticle; Line."ITX Eco Contribution") { }
            column(ITXEcoContribLine; Line.CalcTotalEcoContribLine()) { }
            column(ITXUnitPrice; Line.CalcUnitPriceWithDiscount()) { }
            column(ITXTotalEcoContrib; TotalEcoContrib) { }
            column(ITXCustomerReference; Line."ITX Customer Reference") { }
        }
    }

    requestpage
    {

        layout
        {
            addlast(content)
            {
                field(ITXEAN13; Line."ITX EAN13") { }
            }
            addlast(content)
            {
                field(ITXEcoContribArticle; Line."ITX Eco Contribution") { }
            }
            addlast(content)
            {
                field(ITXEcoContribLine; Line.CalcTotalEcoContribLine()) { }
            }
            addlast(content)
            {
                field(ITXUnitPrice; Line.CalcUnitPriceWithDiscount()) { }
            }
            addlast(content)
            {
                field(ITXTotalEcoContrib; TotalEcoContrib) { }
            }
            addlast(content)
            {
                field(ITXCustomerReference; Line."ITX Customer Reference") { }
            }
        }
    }

    // trigger OnPreReport()
    // begin
    //     // Line.CalcFields("ITX EAN13");
    //     UpdateTotals();
    // end;

    var
        TotalEcoContrib: decimal;

    procedure UpdateTotals()
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        TotalEcoContrib := 0;

        SalesInvoiceLine.Reset();
        SalesInvoiceHeader.Reset();

        SalesInvoiceHeader.CopyFilters(Header);
        // SalesInvoiceLine.CopyFilters(Line);
        SalesInvoiceLine.SetRange("Document No.", SalesInvoiceHeader."No.");

        IF SalesInvoiceLine.FindSet() THEN BEGIN
            REPEAT
                TotalEcoContrib += SalesInvoiceLine.CalcTotalEcoContribLine();
            UNTIL SalesInvoiceLine.NEXT = 0;
        end
    end;

}