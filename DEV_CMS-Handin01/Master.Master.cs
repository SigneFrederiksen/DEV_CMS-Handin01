using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Bibliotek / Kommandoer
using System.Data;
using System.Data.SqlClient;

namespace DEV_CMS_Handin01
{
    public partial class Master : System.Web.UI.MasterPage
    {
        // Instantiere et nyt objekt fra SqlConnection klassen,
        // der opretter forbindelsen til databasen. 
        SqlConnection conn = new SqlConnection(@"data source = DESKTOP-VKU3EK5; integrated security = true; database = CMSDB");

        // Definerer en tom kommando, der vil indeholde selve transaktionen,
        // for et SQL-Statement og forbindelsen til DB.
        // Definerer den type SQL kommando vi gerne vil ha DB til at udfører. 
        SqlCommand cmd = null;

        // Definerer en tom kommando,
        // der vil indeholde de returnerede resultater fra DB.
        // En måde at aflæse den data der returneres. 
        SqlDataReader rdr = null;

        // Definerer en string variabel til SQL-statementet.
        string sqlsel = "SELECT Logo, Name FROM Company WHERE CompanyID = 1";

        protected void Page_Load(object sender, EventArgs e)
        {
            showHeader();
        }

        public void showHeader()
        {
            // Anvender et try-catch-finally statement,
            // der kan opfange fejl undervejs i processen.
            try
            {
                // Åbner forbindelsen til DB. 
                conn.Open();

                // Laver en ny instans af SqlCommand klassen,
                // der tager imod to parametrer.
                cmd = new SqlCommand(sqlsel, conn);

                // Vi forventer mere end én række bliver returneret,
                // og anvender en ExecuteReader metode.
                rdr = cmd.ExecuteReader();
                rdr.Read();

                ImageLogo.ImageUrl = "~/Pictures/" + rdr["Logo"].ToString();
                LabelCompany.Text = rdr["Name"].ToString();     
            }
            catch (Exception ex)
            {
                //LabelMessage.Text = ex.Message;
            }
            finally
            {
                // Lukker forbindelsen til DB.
                conn.Close();
            }
        }
    }
}