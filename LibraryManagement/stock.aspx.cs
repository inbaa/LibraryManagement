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
    public partial class stock : System.Web.UI.Page
    {
        String mycon = "Server=localhost; Database=test; Uid=root; Password=;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void total_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select bookLNo as 'Book L No',bookName as 'Book Name', authorName as 'Author Name', category as 'Category', subject as 'Subject', price as 'Price', rack as 'Rack' from bookentry  ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    totalBooks.Text = dt.Rows.Count.ToString();
                }
                else
                {
                    Response.Write("<script>alert('No Book found!')</script>");
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

        protected void issued_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select userId as 'User ID', userName as 'User Name', bookLNo as 'Book L No',bookName as 'Book Name', authorName as 'Author Name', issueDate as 'Issue Date', dueDate as 'Due Date', rack as 'Rack' from bookissue where status='active'  ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    issuedBooks.Text = dt.Rows.Count.ToString();
                }
                else
                {
                    Response.Write("<script>alert('No Book issued!')</script>");
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

        protected void returned_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select userId as 'User ID', bookLNo as 'Book L No', issueDate as 'Issue Date', dueDate as 'Due Date', returnDate as 'Return date' from bookreturn  ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    returnedBooks.Text = dt.Rows.Count.ToString();
                }
                else
                {
                    Response.Write("<script>alert('No Book issued!')</script>");
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