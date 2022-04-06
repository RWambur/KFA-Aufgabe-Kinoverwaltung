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
            //FieldClass = FlowField;
            //Editable = true;
            TableRelation = Kinositz.ID;
            //CalcFormula = lookup(Vorstellung."Kinosaal ID" where(ID = field("Kinositz ID")));
            trigger OnValidate()
            var
                BSCheck: Record Buchung;
            begin
                BSCheck.SetRange("Kinositz ID");
                if BSCheck.find('-') then
                    repeat
                        if ("Kinositz ID" = BSCheck."Kinositz ID") and ("Vorstellung ID" = BSCheck."Vorstellung ID") then
                            Error('Dieser Sitz ist bereits Bebucht!');
                    until BSCheck.Next() = 0;
            end;
        }
        field(4; "Debitor ID"; Code[20]) //Kunde
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
        }
        field(5; "Kinosaal ID"; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Vorstellung."Kinosaal ID" where(ID = field("Vorstellung ID")));
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