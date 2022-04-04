table 50125 Buchung
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Vorstellung ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vorstellung.ID;
        }
        field(3; "Kinositz ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Kinositz.ID;
        }
        field(4; "Debitor ID"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; ID, "Vorstellung ID", "Kinositz ID", "Debitor ID")
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