page 50131 Vorstellungsliste
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Vorstellung;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
            action("Importiere Vorstellung/en")
            {
                Promoted = true;
                PromotedCategory = new;

                trigger OnAction();
                begin
                    xmlport.Run(50152, false, true);
                end;
            }
            action("Exportiere Vorstellungs Liste")
            {
                Promoted = true;
                PromotedCategory = new;

                trigger OnAction();
                begin
                    xmlport.Run(50153, false, false);
                end;
            }
        }
    }
}