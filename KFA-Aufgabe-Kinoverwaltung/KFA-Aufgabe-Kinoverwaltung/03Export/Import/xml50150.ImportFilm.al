xmlport 50150 "Importiere Film"
{
    schema
    {
        textelement(Filme)
        {
            tableelement(Film; Film)
            {
                fieldattribute(ID; Film.ID)
                {

                }
                fieldattribute(Titel; Film.Titel)
                {

                }
                fieldattribute(GenreID; Film."Genre ID")
                {

                }
                fieldattribute(Länge; Film."Länge")
                {

                }
                fieldattribute(Altersfreigabe; Film.Altersfreigabe)
                {

                }
            }
        }
    }
}