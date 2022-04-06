table 50121 Kinositz
{
    DataClassification = ToBeClassified;
    Extensible = true;

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
    }

    keys
    {
        key(PK; ID, "Kinosaal ID")
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