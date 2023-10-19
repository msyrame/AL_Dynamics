codeunit 50407 "ITX SalesLinesToSalesInvcLine"
{

    [EventSubscriber(ObjectType::Table, DataBase::"Sales Invoice Line", 'OnAfterInitFromSalesLine', '', false, false)]
    local procedure OnAfterInitFromSalesLine(var SalesInvLine: Record "Sales Invoice Line"; SalesInvHeader: Record "Sales Invoice Header"; SalesLine: Record "Sales Line")
    begin
        SalesLine.CalcFields("ITX EAN13");
        SalesLine.CalcFields("ITX Eco Contribution");
        SalesLine.CalcFields("ITX Customer Reference");
        SalesInvLine."ITX EAN13" := SalesLine."ITX EAN13";
        SalesInvLine."ITX Eco Contribution" := SalesLine."ITX Eco Contribution";
        SalesInvLine."ITX Customer Reference" := SalesLine."ITX Customer Reference";
    end;
}