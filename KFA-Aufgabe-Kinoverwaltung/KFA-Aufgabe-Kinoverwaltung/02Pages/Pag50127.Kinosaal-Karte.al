page 50127 "Kinosaal-Karte"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Kinosaal;
    Extensible = true;

    layout
    {
        area(Content)
        {
            group(Allegmein)
            {
                field(ID; ID)
                {
                    ApplicationArea = All;

                }
                field(Kinosaalart; Kinosaalart)
                {
                    ApplicationArea = All;

                }
            }
            part(p; Kinositz) // Filter
            {
                ApplicationArea = All;


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