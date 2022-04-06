table 50124 Vorstellung
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Kinosaal ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Kinosaal.ID;
        }
        field(3; "Film ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Film.ID;
        }
        field(4; "Datum/Uhrzeit"; DateTime)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                DUCheck: Record Vorstellung;
            begin
                DUCheck.SetRange("Datum/Uhrzeit"); // Filter 
                if DUCheck.find('-') then
                    repeat
                        if ("Datum/Uhrzeit" = DUCheck."Datum/Uhrzeit") and ("Kinosaal ID" = DUCheck."Kinosaal ID") then
                            Error('Zu dieser Zeit wird in diesem Saal schon gespielt!');
                    until DUCheck.Next() = 0;
            end;

        }
    }

    keys
    {
        key(PK; ID, "Kinosaal ID")
        {
            Clustered = true;
        }
    }

    var

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}