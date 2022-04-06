table 50122 Film
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Titel; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Genre ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Genre.ID;
        }
        field(4; Länge; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Altersfreigabe; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "0","6","12","16","18";

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