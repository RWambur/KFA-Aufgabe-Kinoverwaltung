page 50129 Filmkarte
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Film;

    layout
    {
        area(Content)
        {
            group(Allgemein)
            {
                field(ID; ID)
                {
                    ApplicationArea = All;

                }
                field(Titel; Titel)
                {
                    ApplicationArea = All;

                }
                field("Genre ID"; "Genre ID")
                {
                    ApplicationArea = All;

                }
                field("Länge"; "Länge")
                {
                    ApplicationArea = All;

                }
                field(Altersfreigabe; Altersfreigabe)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}