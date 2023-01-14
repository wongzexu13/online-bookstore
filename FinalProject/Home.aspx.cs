using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String title = " ";
        float price = 0;

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=mbook;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                con.Open();
                string selectQuery1 = "select bookName from book where bookId='B001'";
                SqlCommand cmd = new SqlCommand(selectQuery1, con);
                SqlDataReader myDataReader;
                myDataReader = cmd.ExecuteReader();
                myDataReader.Read();
                bookTitle1.Text = myDataReader["bookName"].ToString();
                myDataReader.Close();
                con.Close();

                con.Open();
                string selectQuery2 = "select bookName from book where bookId='B002'";
                SqlCommand cmd2 = new SqlCommand(selectQuery2, con);
                myDataReader = cmd2.ExecuteReader();
                myDataReader.Read();
                bookTitle2.Text = myDataReader["bookName"].ToString();
                myDataReader.Close();
                con.Close();

                con.Open();
                string selectQuery3 = "select bookName from book where bookId='B003'";
                SqlCommand cmd3 = new SqlCommand(selectQuery3, con);
                myDataReader = cmd3.ExecuteReader();
                myDataReader.Read();
                bookTitle3.Text = myDataReader["bookName"].ToString();
                myDataReader.Close();
                con.Close();

                con.Open();
                string selectQuery4 = "select bookName from book where bookId='B004'";
                SqlCommand cmd4 = new SqlCommand(selectQuery4, con);
                myDataReader = cmd4.ExecuteReader();
                myDataReader.Read();
                bookTitle4.Text = myDataReader["bookName"].ToString();
                myDataReader.Close();
                con.Close();

                con.Open();
                string selectQuery5 = "select bookName from book where bookId='B005'";
                SqlCommand cmd5 = new SqlCommand(selectQuery5, con);
                myDataReader = cmd5.ExecuteReader();
                myDataReader.Read();
                bookTitle5.Text = myDataReader["bookName"].ToString();
                myDataReader.Close();
                con.Close();

                con.Open();
                string selectQuery6 = "select bookName from book where bookId='B006'";
                SqlCommand cmd6 = new SqlCommand(selectQuery6, con);
                myDataReader = cmd6.ExecuteReader();
                myDataReader.Read();
                bookTitle6.Text = myDataReader["bookName"].ToString();
                myDataReader.Close();
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            title = bookTitle1.Text;
            price = float.Parse(bookPrice1.Text);

            con.Open();
            //SqlCommand cmd = new SqlCommand("insert into cart (bookId, productName, price, quantity) values ('B001', '" + title + "', '" + price + "', '1')", con);
            SqlCommand cmd = new SqlCommand("if exists (select 1 from cart where bookId = 'B001') update cart set quantity = quantity + 1, total = price * (quantity + 1) where bookId = 'B001' else insert into cart (bookId, productName, price, quantity, total) values ('B001', '" + title + "', '" + price + "', '1', '" + price + "')", con);
            SqlCommand cmd1 = new SqlCommand("Select SUM(total) AS totalPrice from cart", con);
            cmd.ExecuteNonQuery();
            SqlDataReader myDataReader;
            myDataReader = cmd1.ExecuteReader();
            myDataReader.Read();
            Checkout.totalPrice = float.Parse(myDataReader["totalPrice"].ToString());
            con.Close();
            Response.Write("<script>alert('Added to Cart: " + title + "');</script>");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            title = bookTitle2.Text;
            price = float.Parse(bookPrice2.Text);

            con.Open();
            //SqlCommand cmd = new SqlCommand("insert into cart (bookId, productName, price, quantity) values ('B001', '" + title + "', '" + price + "', '1')", con);
            SqlCommand cmd = new SqlCommand("if exists (select 1 from cart where bookId = 'B002') update cart set quantity = quantity + 1, total = price * (quantity + 1) where bookId = 'B002' else insert into cart (bookId, productName, price, quantity, total) values ('B002', '" + title + "', '" + price + "' , '1', '" + price + "')", con);
            SqlCommand cmd1 = new SqlCommand("Select SUM(total) AS totalPrice from cart", con);
            cmd.ExecuteNonQuery();
            SqlDataReader myDataReader;
            myDataReader = cmd1.ExecuteReader();
            myDataReader.Read();
            Checkout.totalPrice = float.Parse(myDataReader["totalPrice"].ToString());
            con.Close();
            Response.Write("<script>alert('Added to Cart: " + title + "');</script>");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            title = bookTitle3.Text;
            price = float.Parse(bookPrice3.Text);

            con.Open();
            //SqlCommand cmd = new SqlCommand("insert into cart (bookId, productName, price, quantity) values ('B001', '" + title + "', '" + price + "', '1')", con);
            SqlCommand cmd = new SqlCommand("if exists (select 1 from cart where bookId = 'B003') update cart set quantity = quantity + 1, total = price * (quantity + 1) where bookId = 'B003' else insert into cart (bookId, productName, price, quantity, total) values ('B003', '" + title + "', '" + price + "', '1', '" + price + "')", con);
            SqlCommand cmd1 = new SqlCommand("Select SUM(total) AS totalPrice from cart", con);
            cmd.ExecuteNonQuery();
            SqlDataReader myDataReader;
            myDataReader = cmd1.ExecuteReader();
            myDataReader.Read();
            Checkout.totalPrice = float.Parse(myDataReader["totalPrice"].ToString());
            con.Close();
            Response.Write("<script>alert('Added to Cart: " + title + "');</script>");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            title = bookTitle4.Text;
            price = float.Parse(bookPrice4.Text);

            con.Open();
            //SqlCommand cmd = new SqlCommand("insert into cart (bookId, productName, price, quantity) values ('B001', '" + title + "', '" + price + "', '1')", con);
            SqlCommand cmd = new SqlCommand("if exists (select 1 from cart where bookId = 'B004') update cart set quantity = quantity + 1, total = price * (quantity + 1) where bookId = 'B004' else insert into cart (bookId, productName, price, quantity, total) values ('B004', '" + title + "', '" + price + "', '1', '" + price + "')", con);
            SqlCommand cmd1 = new SqlCommand("Select SUM(total) AS totalPrice from cart", con);
            cmd.ExecuteNonQuery();
            SqlDataReader myDataReader;
            myDataReader = cmd1.ExecuteReader();
            myDataReader.Read();
            Checkout.totalPrice = float.Parse(myDataReader["totalPrice"].ToString());
            con.Close();
            Response.Write("<script>alert('Added to Cart: " + title + "');</script>");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            title = bookTitle5.Text;
            price = float.Parse(bookPrice5.Text);

            con.Open();
            //SqlCommand cmd = new SqlCommand("insert into cart (bookId, productName, price, quantity) values ('B001', '" + title + "', '" + price + "', '1')", con);
            SqlCommand cmd = new SqlCommand("if exists (select 1 from cart where bookId = 'B005') update cart set quantity = quantity + 1, total = price * (quantity + 1) where bookId = 'B005' else insert into cart (bookId, productName, price, quantity, total) values ('B005', '" + title + "', '" + price + "', '1','" + price + "')", con);
            SqlCommand cmd1 = new SqlCommand("Select SUM(total) AS totalPrice from cart", con);
            cmd.ExecuteNonQuery();
            SqlDataReader myDataReader;
            myDataReader = cmd1.ExecuteReader();
            myDataReader.Read();
            Checkout.totalPrice = float.Parse(myDataReader["totalPrice"].ToString());
            con.Close();
            Response.Write("<script>alert('Added to Cart: " + title + "');</script>");

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            title = bookTitle6.Text;
            price = float.Parse(bookPrice6.Text);

            con.Open();
            //SqlCommand cmd = new SqlCommand("insert into cart (bookId, productName, price, quantity) values ('B001', '" + title + "', '" + price + "', '1')", con);
            SqlCommand cmd = new SqlCommand("if exists (select 1 from cart where bookId = 'B006') update cart set quantity = quantity + 1, total = price * (quantity + 1) where bookId = 'B006' else insert into cart (bookId, productName, price, quantity, total) values ('B006', '" + title + "', '" + price + "', '1', '" + price + "')", con);
            SqlCommand cmd1 = new SqlCommand("Select SUM(total) AS totalPrice from cart", con);
            cmd.ExecuteNonQuery();
            SqlDataReader myDataReader;
            myDataReader = cmd1.ExecuteReader();
            myDataReader.Read();
            Checkout.totalPrice = float.Parse(myDataReader["totalPrice"].ToString());
            con.Close();
            Response.Write("<script>alert('Added to Cart: "+title+"');</script>");
        }
    }
}