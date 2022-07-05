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
    public partial class LoginFrom : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=siyabongasv.database.windows.net;Initial Catalog=RideYouRent_St10091114;User ID=st10091114;Password=Drugkind22");
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Response.Buffer = true;
                Response.CacheControl = "no-cache";
                Response.AddHeader("Pragma", "no-cache");
                Response.Expires = -1441;
            }
            lblError.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand
                   ("select Inspector.InspectorNo from Inspector where Inspector.InspectorNo = '"+txtLogin.Text+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.HasRows == true && txtPassword.Text.Equals("Password1"))
                {

                    Response.Redirect("OptionsForm.aspx");


                }
                else {
                    lblError.Text = "User does not exist (Password: Password1)";
                    lblError.Visible = true;
                }
                con.Close();

            }
            catch (Exception)
            {
               
                lblError.Visible = true;
                
            }
        }
    }
}