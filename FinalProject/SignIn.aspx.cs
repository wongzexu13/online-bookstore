using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SignIn_Click(object sender, EventArgs e)
        {
            String userEmail = email.Text;
            String userPassword = password.Text;
            String databasePassword = " ";

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=mbook;Integrated Security=True");

            con.Open();
            string selectQuery1 = "select password from emailPassword where email like '" + userEmail + "'";
            SqlCommand cmd = new SqlCommand(selectQuery1, con);
            SqlDataReader myDataReader;
            myDataReader = cmd.ExecuteReader();


            if (myDataReader.Read() == true)
            {
                databasePassword = myDataReader["password"].ToString();
                myDataReader.Close();
                con.Close();

                if (userPassword == databasePassword)
                {
                    Response.Redirect("Home.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
                else
                {

                    feedback.Text = "Password incorrect";
                    feedback.Visible = true;
                }
            }
            else
            {
                feedback.Text = "User not exist";
                feedback.Visible = true;
                con.Close();
            }
        }
    }
}