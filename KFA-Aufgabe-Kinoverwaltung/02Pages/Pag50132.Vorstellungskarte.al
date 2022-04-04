page 50132 Vorstellungskarte
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vorstellung;

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
                field("Kinosaal ID"; "Kinosaal ID")
                {
                    ApplicationArea = All;

                }
                field("Film ID"; "Film ID")
                {
                    ApplicationArea = All;

                }
                field("Datum/Uhrzeit"; "Datum/Uhrzeit")
                {
                    ApplicationArea = All;

                }
            }

        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}