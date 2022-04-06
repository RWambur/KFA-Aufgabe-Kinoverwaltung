table 50123 Genre
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Bezeichnung; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Komödie","Horror","Abenteuer","Romanze";
        }
    }

    keys
    {
        key(PK; ID)
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