<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LibraryManagement.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>
        Book Issue
    </title>
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css"/>
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="css/mdb.min.css"/>
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" href="css/style.css"/>
   <!-- Extra JavaScript/CSS added manually in "Settings" tab -->
    
<!-- jQuery -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>


<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
 <!-- issue date-->

<!-- due date-->
    <script>
        $(document).ready(function () {
            var date_input = $('input[id="dueDate"]'); //our date input has the id "dueDate"
            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
            var options = {
                format: 'dd-mm-yyyy',
                container: container,
                todayHighlight: true,
                autoclose: true,
            };
            date_input.datepicker(options);
        })
    </script>

<!--- user Id and bookLNo change event empty author and book name -->
    <script type="text/javascript">
        function userIdChange(txt) {
            //$("#userName").val("");
            document.getElementById('userName').value = '';
            document.getElementById('bookName').value = '';
            document.getElementById('authorName').value = '';
        }
    </script>

    
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .column{
        height: 400px;
        float: left;
    }
    #col1{
        width: 40%;
        ///background: tomato;
    }
    #col2{
        width: 60%;
        //background: green;
    }
    p{
    word-break: break-all; // will break at end of line 
        }
    .column{
        position: relative;      
        height: 100vh;
        background-size: cover;
    }
    div{
        
        overflow: inherit;
    }
    
    </style>

</head>
<body class="black-skin">



<!--Main Navigation-->
<header>

    <nav class="navbar fixed-top navbar-expand-lg navbar-dark indigo">
    <a class="navbar-brand" href="home.aspx"><strong>Home</strong></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="bookSearch.aspx">Book Search </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="bookEntry.aspx">Book Entry</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="WebForm1.aspx">Book Issue</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="WebForm2.aspx">Book Return</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="stock.aspx">Stock</a>
        </li>
      </ul>
        <img height="60px"  src="logo1.jpg"/>
    </div>
  </nav>
 
</header>
<!-- main navigation-->

<!-- body part-->
            <br /><br /> <br /><br />
 <!--------------------------- form ---------------------------------------------------------------->
      
 <form runat="server" name="frm">

<div class="container-fluid">
    <div class="page-header">
 <br />
        <center> <h2>Book Issue</h2></center> 
        </div>
<!----------------------------------- Container 1----------------------------------------------------->

<div id="col1" class="column">
  
  
   <br /> 
           <div class="row">
   
            <div class="col">
                <label class="control-label " for="name">
                    User Id
                </label>
                <asp:TextBox CssClass="form-control" ID="userId" placeholder="User ID" runat="server" onFocus="userIdChange(this)" />
                <!-- validation -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="userId" runat="server" ErrorMessage="Enter User ID" ForeColor="Red" />

                <!--<input class="form-control" id="name" name="userId" type="text" required/> -->

            </div>

            <div class="col">
                <label class="control-label " for="name1">
                    Book L No.
                </label>
                <asp:TextBox CssClass="form-control" ID="bookLNo" placeholder="Book L No" runat="server" onFocus="userIdChange(this)" />
                <!-- validation -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="bookLNo" runat="server" ErrorMessage="Enter Book L No" ForeColor="Red" />
                <!-- <input class="form-control" id="name1" name="bookLNo" type="text" required/> -->
            </div>
        </div>


        <!--  search button -->
        <div class="form-group ">
            <center> <asp:Button ID="Button1" class="btn btn-secondary btn-sm" name="search" Text="Search"  runat="server" OnClick="Button1_Click"  /> </center>
        </div>
    
        <div class="row">
            <div class="col">
                <label class="control-label " for="name2">
                    User Name
                </label>
                <asp:TextBox CssClass="form-control" ID="userName" runat="server" Enabled="false" />
                <!-- <input class="form-control"  id="bookName" name="bookName" type="text" required /> -->
            </div>

            <div class="col">
                <label class="control-label " for="name3">
                    Author Name
                </label>
                <asp:TextBox CssClass="form-control" ID="authorName" runat="server" Enabled="false" />
                <!-- <input class="form-control"  id="authorName" name="authorName" type="text" required/> -->
            </div>
        </div>

        <div class="row">
            <div class="col">
                <label class="control-label " for="name2">
                    Book Name
                </label>
                <asp:TextBox CssClass="form-control" ID="bookName" runat="server"  Enabled="false"/>
                <!-- <input class="form-control"  id="bookName" name="bookName" type="text" required /> -->
            </div>
        </div>


        <div class="row">
            <div class="col">
                <label class="control-label requiredField" for="date1">
                    Issue Date
                </label>
                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <asp:TextBox CssClass="form-control" ID="issueDate"  runat="server" Enabled="false"/>
                    <!-- <input class="form-control"  id="issueDate"  placeholder="DD-MM-YYYY" type="text" /> -->
                </div>
            </div>


            <div class="col">
                <label class="control-label requiredField" for="date2">
                    Due Date
                </label>
                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <asp:TextBox CssClass="form-control" ID="dueDate" placeholder="DD-MM-YYYY" runat="server" />

                    <!--  <input class="form-control"  id="dueDate"  placeholder="DD-MMYYYY" type="text" /> -->
                </div>
            </div>
            <div class="col">
                <label class="control-label " for="name">
                    Rack
                </label>
                <asp:TextBox CssClass="form-control" ID="rack" placeholder="Rack" runat="server" Enabled="false"/>
            </div>
        </div>

        <div class="form-group">
            <div>
                
                <center><asp:Button runat="server" name="submit" class="btn btn-primary" Text="Issue Book" OnClick="submit_Click" /></center>
            </div>
        </div>
    
            </div> 

<!----------------------------------- Container 2----------------------------------------------------->
<div id="col2" class="column">
                
                <br />
<center>
    <h4>Book/s issued to this user:</h4>
    <asp:GridView 
        ID="GridView1" 
        runat="server" 
        EmptyDataText="No Data Found!" 
        BackColor="White" 
        BorderColor="#999999" 
        BorderStyle="None" 
        BorderWidth="1px" 
        CellPadding="3" 
        GridLines="None" Width="100%"
        >

        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
     </asp:GridView>
</center>
</div>
    
<!----------------------------------- Container fluid end----------------------------------------------------->
 </div>

    </form>
</body>
</html>

