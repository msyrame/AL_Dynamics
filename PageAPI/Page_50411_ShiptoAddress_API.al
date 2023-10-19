page 50411 "ITX ShipToAddress API"
{
    PageType = API;
    APIPublisher = 'ITX';
    APIGroup = 'Common';
    APIVersion = 'v1.0', 'v2.0', 'v3.0';
    EntityName = 'shiptoaddress';
    EntitySetName = 'shiptoaddresses';
    SourceTable = "Ship-to Address";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ///<summary>
                ///Numéro du tiers
                ///</summary>
                field(customerno; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                }

                ///<summary>
                ///Code de livraison du tiers
                ///</summary>
                field(code; Rec."Code")
                {
                    Caption = 'Code';
                }

                ///<summary>
                ///Nom de livraison
                ///</summary>
                field(name; Rec."Name")
                {
                    Caption = 'Name';
                }

                ///<summary>
                ///Nom 2 de livraison
                ///</summary>
                field(name2; Rec."Name 2")
                {
                    Caption = 'Name 2';
                }

                ///<summary>
                ///Adresse de livraison
                ///</summary>
                field(address; Rec."Address")
                {
                    Caption = 'Address';
                }

                ///<summary>
                /// Adresse de livraison 2
                ///</summary>
                field(address2; Rec."Address 2")
                {
                    Caption = 'Address 2';
                }

                ///<summary>
                ///Ville de livraison
                ///</summary>
                field(city; Rec."City")
                {
                    Caption = 'City';
                }

                ///<summary>
                ///Code postal de livraison
                ///</summary>
                field(postcode; Rec."Post Code")
                {
                    Caption = 'Post Code';
                }

                ///<summary>
                ///Code ISO du pays de livraison 
                ///</summary>
                field(countryCode; Rec."Country/Region Code")
                {
                    Caption = 'Country Code';
                }

                ///<summary>
                ///Contact de livraison
                ///</summary>
                field(contact; Rec."Contact")
                {
                    Caption = 'Contact';
                }

                ///<summary>
                ///Numéro de téléphone de livraison
                ///</summary>
                field(phoneno; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                }

                ///<summary>
                ///Fax de livraison
                ///</summary>
                field(faxno; Rec."Fax No.")
                {
                    Caption = 'Fax No.';
                }

                /// <summary>
                /// Code de l'entrepot
                /// </summary>
                field(locationcode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }

            }
        }
    }
}
