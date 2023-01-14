using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            String userEmail = email.Text;
            String userPassword = password.Text;
            String userConfirmPassword = confirmPassword.Text;

            if (userPassword == userConfirmPassword)
            {
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=mbook;Integrated Security=True");

                con.Open();
                SqlCommand cmd = new SqlCommand("insert into emailPassword (email, password) values ('" + userEmail + "', '" + userPassword + "')", con);

                //to solve bug 
                SqlCommand cmd1 = new SqlCommand("insert into emailPassword (email, password) values ('" + userEmail + "', '" + userPassword + "')", con);

                cmd.ExecuteNonQuery();
                cmd1.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('You have been registered.');</script>");
                Server.Transfer("SignIn.aspx");
            }
            else
            {
                feedback.Text = "Password not match";
                feedback.Visible = true;
            }
        }
    }
}