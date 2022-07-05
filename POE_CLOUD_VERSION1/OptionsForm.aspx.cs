using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POE_CLOUD_VERSION1
{
    public partial class OptionsForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCar_Click(object sender, EventArgs e)
        {
            Response.Redirect("CarForm.aspx");
        }

        protected void btnDriver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Driver.aspx");
        }

        protected void btnInspectors_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inspector.aspx");
        }

        protected void btnRental_Click(object sender, EventArgs e)
        {
            Response.Redirect("RentalForm.aspx");
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReturnForm.aspx");
        }
    }
}