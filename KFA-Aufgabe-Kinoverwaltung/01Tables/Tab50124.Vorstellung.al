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
        }
    }

    keys
    {
        key(PK; ID, "Kinosaal ID", "Film ID")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

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