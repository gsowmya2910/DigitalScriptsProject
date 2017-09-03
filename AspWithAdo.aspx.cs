using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace DigitalScriptsProject1
{
    public partial class AspWithAdo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //InsertData(009, "Apollo Health Hospital", "Dellas", "TX");
            //UpdateData(002,"Hicksville");
            //DeleteData(009);
        }
        private void InsertData(int hId, string hName, string city, string state)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Insert into HospitalInfo values(" + hId + ",'" + hName + "',null,'" + city + "','" + state + "',NULL)"; 
                cmd.Connection = con;
                con.Open();
                int numberOfLineInserted = cmd.ExecuteNonQuery();
               DisplayData(numberOfLineInserted);
               
            }
        }
        private void UpdateData(int hId,  string hcity)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "UPDATE HospitalInfo SET HCity = '" + hcity + "' WHERE Hid = " + hId + ""; 
                cmd.Connection = con;
                con.Open();
                int numberOfLineUpdate = cmd.ExecuteNonQuery();
                DisplayData(numberOfLineUpdate);
                
            }
        }
        private void DisplayData(int numberOfLine)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from HospitalInfo";
                cmd.Connection = con;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
                Response.Write("Number of lines affected " + numberOfLine.ToString());
            }
        }
        private void DeleteData(int hId)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = " Delete from HospitalInfo where HId= " + hId + "";
                cmd.Connection = con;
                con.Open();
                int numberOfLineDelete = cmd.ExecuteNonQuery();
                DisplayData(numberOfLineDelete);
               
            }
        }       

        protected void updateButton_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "UPDATE HospitalInfo SET HName = '" + hNameTextBox.Text + "' ,HCity = '" + hCityTextBox.Text + "',HAddress = '" + hAddressTextBox.Text + "', HState = '" + hStateTextBox.Text + "' WHERE Hid = " + hIDTextBox.Text + "";
                cmd.Connection = con;
                con.Open();
                int numberOfLineUpdate = cmd.ExecuteNonQuery();
                DisplayData(numberOfLineUpdate);

            }
        }
 
        protected void insertButton_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}