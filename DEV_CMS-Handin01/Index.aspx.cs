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
    public partial class Index : System.Web.UI.Page
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
        string sqlMainItem = "SELECT MainItem, Category, Headline, Picture, Description FROM Selection, Items WHERE Selection.MainItem = Items.ItemID";
        string sqlSecondItem = "SELECT SecondItem, Category, Headline, Picture, Description FROM Selection, Items WHERE Selection.SecondItem = Items.ItemID";
        string sqlThirdItem = "SELECT ThirdItem, Category, Headline, Picture, Description FROM Selection, Items WHERE Selection.ThirdItem = Items.ItemID";
        string sqlJokeItem = "SELECT JokeItem, Headline, Description, Picture FROM Selection, Jokes WHERE Selection.JokeItem = Jokes.JokeID";

        protected void Page_Load(object sender, EventArgs e)
        {
            mainItem();
            secondItem();
            thirdItem();
            jokeItem();
        }

        public void mainItem()
        {
            // Anvender et try-catch-finally statement,
            // der kan opfange fejl undervejs i processen.
            try
            {
                // Åbner forbindelsen til DB. 
                conn.Open();

                // Laver en ny instans af SqlCommand klassen,
                // der tager imod to parametrer.
                cmd = new SqlCommand(sqlMainItem, conn);

                // Vi forventer mere end én række bliver returneret,
                // og anvender en ExecuteReader metode.
                rdr = cmd.ExecuteReader();
                RepeaterMainItem.DataSource = rdr; // Fortæller Repeater, hvor den skal få sin data fra (datakilde). Tilegner Repeater-kontrol med DataReaders resultater.
                RepeaterMainItem.DataBind(); // Binder datakildens resultater til Repeater - Data vil blive vist i Repeater.
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

        public void secondItem()
        {
            // Anvender et try-catch-finally statement,
            // der kan opfange fejl undervejs i processen.
            try
            {
                // Åbner forbindelsen til DB. 
                conn.Open();

                // Laver en ny instans af SqlCommand klassen,
                // der tager imod to parametrer.
                cmd = new SqlCommand(sqlSecondItem, conn);

                // Vi forventer mere end én række bliver returneret,
                // og anvender en ExecuteReader metode.
                rdr = cmd.ExecuteReader();
                RepeaterSecondItem.DataSource = rdr; // Fortæller Repeater, hvor den skal få sin data fra (datakilde). Tilegner Repeater-kontrol med DataReaders resultater.
                RepeaterSecondItem.DataBind(); // Binder datakildens resultater til Repeater - Data vil blive vist i Repeater.
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

        public void thirdItem()
        {
            // Anvender et try-catch-finally statement,
            // der kan opfange fejl undervejs i processen.
            try
            {
                // Åbner forbindelsen til DB. 
                conn.Open();

                // Laver en ny instans af SqlCommand klassen,
                // der tager imod to parametrer.
                cmd = new SqlCommand(sqlThirdItem, conn);

                // Vi forventer mere end én række bliver returneret,
                // og anvender en ExecuteReader metode.
                rdr = cmd.ExecuteReader();
                RepeaterThirdItem.DataSource = rdr; // Fortæller Repeater, hvor den skal få sin data fra (datakilde). Tilegner Repeater-kontrol med DataReaders resultater.
                RepeaterThirdItem.DataBind(); // Binder datakildens resultater til Repeater - Data vil blive vist i Repeater.
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

        public void jokeItem()
        {
            // Anvender et try-catch-finally statement,
            // der kan opfange fejl undervejs i processen.
            try
            {
                // Åbner forbindelsen til DB. 
                conn.Open();

                // Laver en ny instans af SqlCommand klassen,
                // der tager imod to parametrer.
                cmd = new SqlCommand(sqlJokeItem, conn);

                // Vi forventer mere end én række bliver returneret,
                // og anvender en ExecuteReader metode.
                rdr = cmd.ExecuteReader();
                RepeaterJokeItem.DataSource = rdr; // Fortæller Repeater, hvor den skal få sin data fra (datakilde). Tilegner Repeater-kontrol med DataReaders resultater.
                RepeaterJokeItem.DataBind(); // Binder datakildens resultater til Repeater - Data vil blive vist i Repeater.
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