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
                con.Open();
                 cmd = new SqlCommand("select * from Inspector",con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                    {
                    InspectorDataGrid.DataSource = dr;
                    InspectorDataGrid.DataBind ();
               
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
            lblError.Visible = false;
            try
            {
                con.Open();
                cmd = new SqlCommand("select * from Inspector where inspectorNo = '"+txtInspectorNum.Text+"';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    InspectorDataGrid.DataSource = dr;
                    InspectorDataGrid.DataBind();

                }
                else {
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
            
            lblError.Visible = false;
            try
            {
                con.Open();
                cmd = new SqlCommand("insert into  Inspector(InspectorNo, FirstName, LastName, Email, Mobile) values('"+
                    txtInspectorNum.Text+"', '"
                    +txtinspectorFname.Text+"', '"
                    +txtInspectorSurname.Text+"', '"
                    +txtInspectorEmail.Text+"', "
                    +Int32.Parse(txtInspectorMobile.Text)+");", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    InspectorDataGrid.DataSource = dr;
                    InspectorDataGrid.DataBind();

                }
                else
                {
                    throw new ArgumentException();
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
            

            lblError.Visible = false;
            try
            {
                con.Open();
                cmd = new SqlCommand("update Inspector set FirstName = '"
                    +txtinspectorFname.Text+"', LastName = '"
                    +txtInspectorSurname.Text+"', Email = '"
                    +txtInspectorEmail.Text+"', Mobile = "
                    +Int32.Parse (txtInspectorMobile.Text)+"where InspectorNo = '"+txtInspectorNum.Text+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    InspectorDataGrid.DataSource = dr;
                    InspectorDataGrid.DataBind();

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
            lblError.Visible = false;
            try
            {
                con.Open();
                cmd = new SqlCommand("delete from Inspector where InspectorNo = '"+txtInspectorNum.Text+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    InspectorDataGrid.DataSource = dr;
                    InspectorDataGrid.DataBind();

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
            InspectorDataGrid.DataSource = null;
            InspectorDataGrid.DataBind();
        }
    }
}