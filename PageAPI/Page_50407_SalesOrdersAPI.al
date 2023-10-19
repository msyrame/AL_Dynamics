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

                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }

                /// <summary>
                /// Type de document (order, quote, blanked order etc.)
                /// </summary>
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }

                /// <summary>
                /// Numéro de document externe (N° de commande client)
                /// </summary>
                field(noexterndocument; Rec."External Document No.")
                {
                    Caption = 'External Document No.';
                }

                /// <summary>
                /// Date de création de la commande
                /// </summary>
                field(orderdate; Rec."Order Date")
                {
                    Caption = 'Order Date';
                }

                /// <summary>
                /// Date de livraison demandée
                /// </summary>
                field(requesteddeliverydate; Rec."Requested Delivery Date")
                {
                    Caption = 'Requested Delivery Date';
                }

                /// <summary>
                /// Utilisateur qui a crée la commande
                /// </summary>
                field(assignedUser; Rec."Assigned User ID")
                {
                    Caption = 'Assigned User';
                }

                /// <summary>
                /// Entrepôt dans lequel se trouve la commande 
                /// </summary>
                field("locationcode"; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }

                field("locationwarehouse"; Rec."ITX Warehouse")
                {
                    Caption = 'Warehouse';
                }

                field(customerno; Rec."Sell-to Customer No.")
                {
                    Caption = 'No. Customer';
                }

                field("billtono"; Rec."Bill-to Customer No.")
                {
                    Caption = 'Bill-to Customer No.';
                }

                field("shiptocode"; Rec."Ship-to Code")
                {
                    Caption = 'Ship-to Code';
                }

                field("shiptoname"; Rec."Ship-to Name")
                {
                    Caption = 'Ship-to Name';
                }

                field("shiptoname2"; Rec."Ship-to Name 2")
                {
                    Caption = 'Ship-to Name 2';
                }

                field("shiptoaddress"; Rec."Ship-to Address")
                {
                    Caption = 'Ship-to Address';
                }

                field("shiptoaddress2"; Rec."Ship-to Address 2")
                {
                    Caption = 'Ship-to Address 2';
                }

                field("shiptopostcode"; Rec."Ship-to Post Code")
                {
                    Caption = 'Ship-to Post Code';
                }

                field("shiptocity"; Rec."Ship-to City")
                {
                    Caption = 'Ship-to City';
                }

                field("shiptocountrycode"; Rec."Ship-to Country/Region Code")
                {
                    Caption = 'Ship-to Country Code';
                }

                field("shiptocontact"; Rec."Ship-to Contact")
                {
                    Caption = 'Ship-to Contact';
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

            part(saleslines; "ITX SalesLines API")
            {
                Caption = 'Sales lines';
                EntityName = 'salesline';
                EntitySetName = 'saleslines';
                SubPageLink = "Document Type" = Field("Document Type"), "Document No." = Field("No.");
            }

            part(shiptoaddresses; "ITX ShipToAddress API")
            {
                Caption = 'Sales lines';
                EntityName = 'shiptoaddress';
                EntitySetName = 'shiptoaddresses';
                SubPageLink = "Customer No." = Field("Sell-to Customer No."), "Code" = Field("Ship-to Code");
            }

            part(customers; "ITX Customer API")
            {
                Caption = 'Customers';
                EntityName = 'customer';
                EntitySetName = 'customers';
                SubPageLink = "No." = Field("Sell-to Customer No.");
            }

        }
    }
}
