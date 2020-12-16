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
    public partial class bookEntry : System.Web.UI.Page
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

               
                //insert into book return
                MySqlCommand cmd = new MySqlCommand("insert into bookentry(bookLNo,bookName,authorName,category,subject,price,status,rack) values(@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8) ", con);
                    cmd.Parameters.AddWithValue("@a1", bookLNo.Text.Trim());
                    cmd.Parameters.AddWithValue("@a2", bookName.Text.Trim());
                    cmd.Parameters.AddWithValue("@a3", authorName.Text.Trim()); 
                    cmd.Parameters.AddWithValue("@a4", category.Text.Trim());
                    cmd.Parameters.AddWithValue("@a5", subject.Text.Trim());
                    cmd.Parameters.AddWithValue("@a6", price.Text.Trim());
                    cmd.Parameters.AddWithValue("@a7", "active");
                    cmd.Parameters.AddWithValue("@a8", rack.Text.Trim());
                cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Book Added Successfully')</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
                //clear all fields
                bookName.Text = "";
                bookLNo.Text = "";
                authorName.Text = "";
                category.Text = "";
                price.Text = "";
                subject.Text = "";

            }
        
    }
    }
}