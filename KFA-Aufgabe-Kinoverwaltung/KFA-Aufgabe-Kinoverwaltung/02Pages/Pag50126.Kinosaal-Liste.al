page 50126 "Kinosaal-Liste"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Kinosaal;

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
                field(Kinosaalart; Kinosaalart)
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