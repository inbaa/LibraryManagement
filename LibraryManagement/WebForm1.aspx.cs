using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls.Expressions;

namespace LibraryManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //string mycon = "server =localhost; Uid=root; password = ; persistsecurityinfo = True; database =test; SslMode = none;";
        string mycon = "Server=localhost;Database=test;Uid=root;Password= ;";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //issue date (today)
            issueDate.Text = System.DateTime.Now.ToString("dd-MM-yyyy");
           // DateTime id = Convert.ToDateTime(issueDate.Text);
            //dueDate.Text=Convert.ToString(id.AddDays(30));
            dueDate.Text=DateTime.Now.AddDays(30).ToString("dd-MM-yyyy");
            

        }

        //Text did not give empty value changed by js on client side so postback attribute is used in asp textbox and being emptied here
        //protected void ctrlChanged(Object sender, EventArgs e)
        //{
          //  userName.Text = "";
          //  bookName.Text = "";
           // authorName.Text = "";
        //}

        protected void submit_Click(object sender, EventArgs e)
        {
            if(checkMemberExist() && checkBookExist())
            {
                if(checkIfEntryExist())
                {
                    Response.Write("<script>alert('This member has this book')</script>");
                    bookLNo.Text = "";
                }
                else
                {
                    // is used bcoz userName.Text did not give empty value changed by js on client side  
                    string x = userName.Text;
                    if (String.IsNullOrEmpty(dueDate.Text) || String.IsNullOrEmpty(x) || x.Equals(""))
                    {
                        Response.Write("<script>alert('Enter Due Date or Click Search again!')</script>");
                        userName.Text = "";
                        bookName.Text = "";
                        authorName.Text = "";
                    }
                    else
                    {
                        //Compare due date an issue date
                        string IssueDate = issueDate.Text.Trim();
                        string DueDate = dueDate.Text.Trim();
                        DateTime id, dt;
                        id = Convert.ToDateTime(IssueDate);
                        dt = Convert.ToDateTime(DueDate);
                        if ((DateTime.Compare(id, dt)) >= 0)
                        {
                            Response.Write("<script>alert('Due date cannot be earlier than issue date')</script>");
                        }
                        else
                        {
                            bookIssue(); 
                        }
                    }
                    
                }
            }
            else
            {
                Response.Write("<script>alert('Member or Book ID is wrong')</script>");
                bookLNo.Text = "";
                userId.Text = "";
            }
            
        }
       
        // search asp button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExist() && checkBookExist())
            {
                if (checkIfEntryExist())
                {
                    Response.Write("<script>alert('This member has this book')</script>");
                    bookLNo.Text = "";
                }
                else
                {
                    search();
                }

            }
            else
            {
                Response.Write("<script>alert('Member or Book ID is wrong')</script>");
                bookLNo.Text = "";
                userId.Text = "";
            }
        }

        //check member exists
        bool checkMemberExist()
        {
            // check if member exists no need to check for no of books issued as it is shown in gridview
            return true;
        }

        //check book exist
        bool checkBookExist()
        {
            //check if book exists and if stock>0 else print no stock
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //grid view for all the books user issued and active
                MySqlCommand cmd = new MySqlCommand("select bookName from bookentry WHERE bookLNo='" + bookLNo.Text.Trim() + "' and status= 'active' ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            finally
            {
                con.Close();
            }

        }

        //check if entry exist
        bool checkIfEntryExist()
        {           
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                MySqlCommand cmd = new MySqlCommand("select * from bookissue WHERE userId='" + userId.Text.Trim() + "' and bookLNo='" + bookLNo.Text.Trim() + "' and status= 'active' ", con);
                //returns true if entry exists else false
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();
                
            }
        }

        //search
        void search()
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {
                
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //changeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                MySqlCommand cmd = new MySqlCommand("select authorName,bookName, rack from bookentry WHERE  bookLNo='" + bookLNo.Text.Trim() + "' and status= 'active' ", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    //need to search from user table
                    userName.Text = "jnjn";
                    authorName.Text = dt.Rows[0]["authorName"].ToString();
                    bookName.Text= dt.Rows[0]["bookName"].ToString();
                    rack.Text = dt.Rows[0]["rack"].ToString();
                }

                //grid view for all the books issued by this user and active
                cmd = new MySqlCommand("select userName as 'User Name', bookName as 'Book Name', authorName as 'Author Name', issueDate as 'Issue Date', dueDate as 'Due Date', rack as 'Rack' from bookissue WHERE userId='" + userId.Text.Trim() + "' and status= 'active' ", con);
                 da = new MySqlDataAdapter(cmd);
                 dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
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

        //issue book 
        void bookIssue()
        {
            MySqlConnection con = new MySqlConnection(mycon);
            try
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                /*
                string UserId = Request.Form.Get("userId").Trim();
                string BookLNo = Request.Form.Get("bookLNo").Trim();
                string BookName = Request.Form.Get("bookName");
                string AuthorName = Request.Form.Get("authorName");
                string IssueDate = Request.Form.Get("issueDate");
                string DueDate = Request.Form.Get("dueDate");
                */

                MySqlCommand cmd = new MySqlCommand("insert into BookIssue(userId,bookLNo,userName,bookName,authorName,issueDate,dueDate,status,rack) values(@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8,@a9)", con);
                cmd.Parameters.AddWithValue("@a1", userId.Text.Trim());
                cmd.Parameters.AddWithValue("@a2", bookLNo.Text.Trim());
                cmd.Parameters.AddWithValue("@a3", userName.Text.Trim());
                cmd.Parameters.AddWithValue("@a4", bookName.Text.Trim());
                cmd.Parameters.AddWithValue("@a5", authorName.Text.Trim());
                cmd.Parameters.AddWithValue("@a6", issueDate.Text.Trim());
                cmd.Parameters.AddWithValue("@a7", dueDate.Text.Trim());
                cmd.Parameters.AddWithValue("@a8", "active");
                cmd.Parameters.AddWithValue("@a9", rack.Text.Trim());
                cmd.ExecuteNonQuery();
                //need to update stock table
                cmd = new MySqlCommand("update bookentry SET status = 'inactive' where bookLNo='" + bookLNo.Text.Trim() + "' and status= 'active' ", con);
                int result=cmd.ExecuteNonQuery();

                if(result>0)
                {
                    //update query
                    Response.Write("<script>alert('Book Issued Successfully')</script>");
                }
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
                //clear all fields
                userId.Text="";
                bookLNo.Text = "";
                userName.Text = "";
                bookName.Text = "";
                authorName.Text = "";
                GridView1.DataSource = null;
                GridView1.DataBind();

            }

            
        }

        
    }
}