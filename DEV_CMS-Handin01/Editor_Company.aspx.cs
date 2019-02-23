using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEV_CMS_Handin01
{
    public partial class Editor_Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsViewCompany_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridViewCompany.DataBind();
        }

        protected void ButtonImage_Click(object sender, EventArgs e)
        {
            if (FileUploadImage.HasFile)
            {
                FileUploadImage.SaveAs(Server.MapPath("/Pictures/" + FileUploadImage.FileName));
                LabelMessages.Text = FileUploadImage.FileName + " has been uploaded.";
            }
            else
            {
                LabelMessages.Text = "Wrong file name!";
            }
        }
    }
}