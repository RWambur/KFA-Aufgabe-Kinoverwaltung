page 50128 Filmliste
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Film;

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
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Exportiere Film Liste")
            {
                Promoted = true;
                PromotedCategory = new;

                trigger OnAction();
                begin
                    xmlport.Run(50151, false, false);
                end;
            }
            action("Importiere Film/e")
            {
                Promoted = true;
                PromotedCategory = new;

                trigger OnAction();
                begin
                    xmlport.Run(50150, false, true);
                end;
            }
        }
    }
}