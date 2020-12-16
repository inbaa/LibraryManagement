using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace LibraryManagement
{
    public partial class bookSearch : System.Web.UI.Page
    {
        String mycon = "Server=localhost; Database=test; Uid=root; Password=;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select bookName as 'Book Name', authorName as 'Author Name', category as 'Category', subject as 'Subject', price as 'Price', rack as 'Rack' from bookentry WHERE bookLNo='" + bookLNo.Text.Trim() + "'  ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Book not found!')</script>");
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
                              
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select bookLNo as 'Book L No', bookName as 'Book Name', authorName as 'Author Name', category as 'Category', subject as 'Subject', price as 'Price', rack as 'Rack' from bookentry ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Book not found!')</script>");
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();

            }
        }
    }
}