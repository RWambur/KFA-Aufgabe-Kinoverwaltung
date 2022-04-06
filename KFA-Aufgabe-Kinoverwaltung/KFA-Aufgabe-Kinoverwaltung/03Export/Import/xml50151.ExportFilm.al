xmlport 50151 "Exportiere Film Liste"
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