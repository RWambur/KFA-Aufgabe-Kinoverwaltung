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
                    trigger OnValidate()
                    var
                        DUCheck: Record Vorstellung;
                    begin
                        DUCheck.SetRange("Datum/Uhrzeit");
                        if DUCheck.find('-') then
                            repeat
                                if ("Datum/Uhrzeit" = DUCheck."Datum/Uhrzeit") then
                                    Error('Zu dieser Zeit wird schon gespielt!');
                            until DUCheck.Next() = 0;
                    end;
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