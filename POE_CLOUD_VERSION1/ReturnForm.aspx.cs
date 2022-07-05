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
    public partial class ReturnForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=tcp:siyabongasv.database.windows.net,1433;Initial Catalog=RideYouRent_St10091114;User Id=st10091114@siyabongasv;Password=Drugkind22");
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
            try
            {
                con.Open();
                cmd = new SqlCommand
                   ("select * from ReturnCar;", con);
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.HasRows == true)
                {

                    ReturnDataGrid.DataSource = dr;
                    ReturnDataGrid.DataBind();

                }
                else
                {
                    throw new ArgumentException();
                }
                con.Close();

            }
            catch (Exception)
            {

                lblError.Visible = true;

            }
        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            //select * from ReturnCar where ReturnID =1;SELECT ReturnID,RentalID,ReturnDate, 

 
            try

            {
                con.Open();
                cmd = new SqlCommand
                   ("SELECT ReturnCar.ReturnID,ReturnCar.RentalID,ReturnCar.ReturnDate,DATEDIFF(day, Rental.EndDate, ReturnDate)As ElapsedDays,(DATEDIFF(day, Rental.EndDate, ReturnDate) * 500)AS LateFines from ReturnCar join Rental on ReturnCar.RentalID = Rental.RentalID where ReturnCar.ReturnID = "+Int32.Parse(txtReturnID.Text)+"; ", con);
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.HasRows == true)
                {

                    ReturnDataGrid.DataSource = dr;
                    ReturnDataGrid.DataBind();

                }
                else
                {
                    throw new ArgumentException();
                }
                con.Close();

            }
            catch (Exception)
            {

                lblError.Visible = true;

            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand
                   ("insert into ReturnCar(RentalID, ReturnDate) values("+Int32.Parse(txtRentalFK.Text)+", '"+ txtReturnDate.Text+"')", con);
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.HasRows == true)
                {

                    ReturnDataGrid.DataSource = dr;
                    ReturnDataGrid.DataBind();

                }
                else
                {
                    throw new ArgumentException();
                }
                con.Close();

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
            ReturnDataGrid.DataSource = null;
            ReturnDataGrid.DataBind();
        }
    }
}