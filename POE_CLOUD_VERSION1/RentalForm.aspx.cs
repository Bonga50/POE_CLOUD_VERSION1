using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POE_CLOUD_VERSION1
{
    public partial class RentalForm : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["RideYouRent_St10091114ConnectionString"].ConnectionString;
        
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;
            

        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            lblError.Text = "Error";

          
                try
                {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand
                       ("select * from Rental where RentalID = " + Int32.Parse(txtRentalno.Text) + ";", con);
                    SqlDataReader dr = cmd.ExecuteReader();


                    if (dr.HasRows == true)
                    {

                        RentalDataGrid.DataSource = dr;
                        RentalDataGrid.DataBind();

                    }
                    else
                    {
                        throw new ArgumentException();
                    }
                    con.Close();
                }

            }
            catch (Exception)
            {

                lblError.Visible = true;

            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
           // txtRentalStartDate.Text = DateTime.ToString("yyyy-MM-dd");
            //txtRentalEndDate.Text = DateTime.ToString("yyyy-MM-dd");



            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand
                       ("insert into Rental(CarNo, InspectorID, DriverID, Rentalfee, Startdate, EndDate) values('" + txtCarId.Text + "', '" +
                       txtInspectorID.Text + "', " + txtDriverID.Text + ", " + txtRentalFee.Text + ", '" + txtRentalStartDate.Text + "', '" + txtRentalEndDate.Text + "');", con);
                    SqlDataReader dr = cmd.ExecuteReader();


                    if (dr.HasRows == true)
                    {

                        RentalDataGrid.DataSource = dr;
                        RentalDataGrid.DataBind();

                    }
                    lblError.Text = "Created";
                    lblError.Visible = true;
                    con.Close();
                }

            }
            catch (Exception ex )
            {
                lblError.Visible = true;
                lblError.Text = ex.Message.ToString()+txtRentalStartDate.Text;


            }
            

        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            lblError.Text = "Error";


            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand
                       ("select * from Rental;", con);
                    SqlDataReader dr = cmd.ExecuteReader();


                    if (dr.HasRows == true)
                    {

                        RentalDataGrid.DataSource = dr;
                        RentalDataGrid.DataBind();

                    }
                    else
                    {
                        throw new ArgumentException();
                    }
                    con.Close();
                }

            }
            catch (Exception)
            {

                lblError.Visible = true;

            }

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("OptionsForm.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            RentalDataGrid.DataSource = null;
            RentalDataGrid.DataBind();
        }
    }
}
