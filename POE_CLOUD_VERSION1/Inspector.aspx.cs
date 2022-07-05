using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POE_CLOUD_VERSION1
{
    public partial class Inspector : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=siyabongasv.database.windows.net;Initial Catalog=RideYouRent_St10091114;User ID=st10091114;Password=Drugkind22");
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;

        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;
            try
            {

            }
            catch (Exception)
            {
                lblError.Visible = true;
                throw;
            }
        }
    }
}