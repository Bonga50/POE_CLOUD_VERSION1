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
    public partial class Driver : System.Web.UI.Page
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

        protected void btnRead_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;
            try
            {
                con.Open();
                cmd = new SqlCommand("select * from Driver where DriverID = "+ Int32.Parse(txtDriverID.Text)+";", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    DriverDataGrid.DataSource = dr;
                    DriverDataGrid.DataBind();

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
            // insert into Driver(FirstName, LastName, Email, Mobile, StreetNo, City, States, zipcode) values('Bro', 'Ham', 'bro@email.com', 0665123357, 45, 'berry st joburg', 'Gauteng', 4455);
            lblError.Visible = false;
            try
            {
                con.Open();
                cmd = new SqlCommand("insert into Driver(FirstName, LastName, Email, Mobile, StreetNo, City, States, zipcode) values('"+
                    txtDrivername.Text + "', '"
                    + txtDriverSurname.Text + "', '" 
                    + txtDriverEmail.Text + "', " 
                    + Int32.Parse(txtDriverMobile.Text) + ", "+ 
                    Int32.Parse(txtAddressNum.Text) + ", '"+
                    txtDriverStreet.Text+"', '"+
                    txtDriverState.Text+"', "+ 
                    Int32.Parse(txtDriverZip.Text) + ");", con); ;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    DriverDataGrid.DataSource = dr;
                    DriverDataGrid.DataBind();

                }
                lblError.Text = "Created";
                lblError.Visible = true;
                con.Close();

            }
            catch (Exception)
            {
                lblError.Visible = true;

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
            try
            {
                con.Open();
                cmd = new SqlCommand("update Driver set FirstName ='"
                    +txtDrivername.Text+"', LastName='"+
                    txtDriverSurname.Text + "', Email='"+
                    txtDriverEmail.Text + "',Mobile = "+
                    Int32.Parse(txtDriverMobile.Text) + 
                    ",StreetNo="+ Int32.Parse(txtAddressNum.Text) 
                    + ",City='"+ txtDriverStreet.Text 
                    + "',States='"+ txtDriverState.Text
                    + "',zipcode="+ Int32.Parse(txtDriverZip.Text) 
                    + " where DriverID = "+ Int32.Parse(txtDriverID.Text) + ";", con); ;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    DriverDataGrid.DataSource = dr;
                    DriverDataGrid.DataBind();

                }
                lblError.Text = "Updated";
                lblError.Visible = true;
                con.Close();

            }
            catch (Exception)
            {
                lblError.Visible = true;

            }


        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //delete from Driver where DriverID = 1;
            try
            {
                con.Open();
                cmd = new SqlCommand("delete from Driver where DriverID = "+ Int32.Parse(txtDriverID.Text) + ";", con); ;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    DriverDataGrid.DataSource = dr;
                    DriverDataGrid.DataBind();

                }
                lblError.Text = "Deleted";
                lblError.Visible = true;
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
            DriverDataGrid.DataSource = null;
            DriverDataGrid.DataBind();
        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("select * from Driver", con); ;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    DriverDataGrid.DataSource = dr;
                    DriverDataGrid.DataBind();

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