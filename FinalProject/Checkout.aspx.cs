using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Checkout : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=mbook;Integrated Security=True");
        public static float totalPrice = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            int rowCount = GridView1.Rows.Count;
            cartCount.Text = rowCount.ToString();
            GridView1.ShowFooter = true;
            GridView1.Columns[6].FooterText = totalPrice.ToString();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void updateQuantity(object sender, GridViewCommandEventArgs e)
        {
           
            //con.Open();
            //string query = "update mbook set Quantity=@q where id=@id";
            //SqlCommand sqlCmd = new SqlCommand(query, con);
            //sqlCmd.Parameters.AddWithValue("@id", GridView1.DataKeys[e.RowIndex].Value.ToString())

            //if (e.CommandName == "M_Quantity")
            //{
            //    int q = Convert.ToInt32(e.CommandArgument);

            //}
            //else if(e.CommandName == "P_Quantity")
            //{
            //    int q = Convert.ToInt32(e.CommandArgument);
            //    q++;

            //}
            //else
            //{
            //    return;
            //}
        }

        protected void Remove_Click(object sender, EventArgs e) 
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            String pid = (GridView1.Rows[rowindex].Cells[0].Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete cart where bookId = '" + pid + "'", con);
            cmd.ExecuteNonQuery();
            if (GridView1.Rows.Count > 1)
            {
                SqlCommand cmd1 = new SqlCommand("Select SUM(total) AS totalPrice from cart", con);
                SqlDataReader myDataReader;
                myDataReader = cmd1.ExecuteReader();
                myDataReader.Read();
                totalPrice = float.Parse(myDataReader["totalPrice"].ToString());
            }
            con.Close();
            GridView1.DataBind();
            Page_Load(this, null);
        }

        protected void M_Click(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            String pid = (GridView1.Rows[rowindex].Cells[0].Text);
            int q = int.Parse(GridView1.Rows[rowindex].Cells[4].Text);

            q--;
            if (q < 1)
                q = 1;

            float price = float.Parse(GridView1.Rows[rowindex].Cells[2].Text);
            float total = 0;
            total = price * q;

            con.Open();
            SqlCommand cmd = new SqlCommand("Update cart set quantity = '" + q + "', total = '" + total + "' where bookId = '" + pid + "'", con);
            SqlCommand cmd1 = new SqlCommand("Select SUM(total) AS totalPrice from cart", con);
            cmd.ExecuteNonQuery();
            SqlDataReader myDataReader;
            myDataReader = cmd1.ExecuteReader();
            myDataReader.Read();
            totalPrice = float.Parse(myDataReader["totalPrice"].ToString());
            con.Close();
            GridView1.DataBind();
            Page_Load(this, null);
        }

        protected void P_Click(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            String pid = (GridView1.Rows[rowindex].Cells[0].Text);
            int q = int.Parse(GridView1.Rows[rowindex].Cells[4].Text);

            q++;

            float price = float.Parse(GridView1.Rows[rowindex].Cells[2].Text);
            float total = 0;
            total = price * q;

            con.Open();
            SqlCommand cmd = new SqlCommand("Update cart set  quantity = '" + q + "',  total = '" + total + "' where bookId = '" + pid + "'", con);
            SqlCommand cmd1 = new SqlCommand("Select SUM(total) AS totalPrice from cart", con);
            cmd.ExecuteNonQuery();
            SqlDataReader myDataReader;
            myDataReader = cmd1.ExecuteReader();
            myDataReader.Read();
            totalPrice = float.Parse(myDataReader["totalPrice"].ToString());
            con.Close();
            GridView1.DataBind();
            Page_Load(this, null);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("truncate table cart", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Your payment has been processed. Thank you.');</script>");
            Server.Transfer("Home.aspx");

        }

        //protected void priceT_Load(object sender, EventArgs e)
        //{
        //    int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        //    float price = float.Parse(GridView1.Rows[rowindex].Cells[2].Text);
        //    int q = int.Parse(GridView1.Rows[rowindex].Cells[4].Text);
        //    float sum = (float)price * q;

        //    Label lbl = (sender as Control).Parent.FindControl("Label1") as Label;
        //    lbl.Text= sum.ToString();


        //}
    }
}