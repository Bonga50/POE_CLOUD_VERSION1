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
    public partial class CarForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=siyabongasv.database.windows.net;Initial Catalog=RideYouRent_St10091114;User ID=ST10091114;Password=Drugkind22");
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter da;
        DataSet ds;
        String message = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;


           
            }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("OptionsForm.aspx");
        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            try
            {

                con.Open();
                //sql command 
                cmd = new SqlCommand
                    ("select Car.CarNo,Car.CarModel,CarMake.CarMakeDesc,CarBodyType.CarBodyDesc,Car.KilosTraveled, Car.ServiceKilos, Car.Available from((Car inner join CarBodyType on Car.CarBodyTypeID = CarBodyType.CarBodyID)inner join CarMake on Car.CarMakeID = CarMake.CarMakeID) where Car.CarNo ='" + txtCarNo.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                   
                    if (dr.HasRows == true)
                    {

                        carDataGrid.DataSource = dr;
                        carDataGrid.DataBind();
                        

                    }
                    else
                    {
                        throw new ArgumentException("error");
                    }


                con.Close();
                
            }
            catch (ArgumentException)
            {
                lblError.Visible = true;
            }
            catch(Exception)
            { lblError.Visible = true; }
            

        }

        public void viewAll() {

            try
            {

                con.Open();
                //sql command 
                cmd = new SqlCommand
                ("select Car.CarNo, CarMake.CarMakeDesc,Car.CarModel,CarBodyType.CarBodyDesc, Car.KilosTraveled, Car.ServiceKilos, Car.Available from((Car inner join CarMake on Car.CarMakeID = CarMake.CarMakeID)inner join CarBodyType on Car.CarBodyTypeID = CarBodyType.CarBodyID)",con);
                SqlDataReader dr1 = cmd.ExecuteReader();
                if (dr1.HasRows == true)
                {
                    carDataGrid.DataSource = dr1;
                    carDataGrid.DataBind();

                }
                else
                {
                    throw new ArgumentException("error");
                }



                con.Close();
            }
            catch (ArgumentException)
            {
                lblError.Visible = true;
            }
            catch(Exception e) {
                lblError.Visible = true;
            }
            

        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            viewAll();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            carDataGrid.DataSource = null;
            carDataGrid.DataBind();

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {



                con.Open();
                cmd = new SqlCommand
                    ("insert into Car(CarNo,CarMakeID,CarModel,CarBodyTypeID,KilosTraveled,ServiceKilos,Available) values ('" +
                    txtCarNo.Text + "'," +
                    (cmbCarMake.SelectedIndex) + ",'" +
                    txtCarModel.Text + "'," +
                    (cmbCarBody.SelectedIndex) + "," +
                    Int32.Parse(txtKilosT.Text) + "," +
                    Int32.Parse(txtServiceKilos.Text) + ",'" +
                    cmbAvailable.Value + "')", con);
                SqlDataReader dr = cmd.ExecuteReader();
                con.Close();
            }
            catch (Exception)
            {

                lblError.Visible = true;
            }

        }
    }
}