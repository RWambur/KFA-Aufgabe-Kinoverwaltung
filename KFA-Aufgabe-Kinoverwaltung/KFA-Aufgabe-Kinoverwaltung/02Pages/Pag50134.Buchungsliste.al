page 50134 Buchungsliste
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Buchung;

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
                field("Vorstellung ID"; "Vorstellung ID")
                {
                    ApplicationArea = All;

                }
                field("Kinositz ID"; "Kinositz ID")
                {
                    ApplicationArea = All;

                }
                field("Debitor ID"; "Debitor ID")
                {
                    ApplicationArea = All;

                }
                field("Kinosaal ID"; "Kinosaal ID")
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