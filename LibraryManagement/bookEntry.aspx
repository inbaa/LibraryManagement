<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookEntry.aspx.cs" Inherits="LibraryManagement.bookEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Entry</title>
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

    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }        
    p{
    word-break: break-all; // will break at end of line 
        }
    .column{
        position: relative;
      
        height: 100vh;
        background-size: cover;
        margin:0 auto; /* this will center the page */
        width:960px; /*  use your width here */
    }
    div{
        overflow: inherit;
    }
    
    </style>
    
<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
 <!-- issue date-->

<!-- due date-->
    <script>
        $(document).ready(function () {
            var date_input = $('input[id="idate"]'); //our date input has the id "dueDate"
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

    <script>
        function ValidNumeric() {

            var charCode = (event.which) ? event.which : event.keyCode;
            if (charCode >= 48 && charCode <= 57) { return true; }
            else { return false; }
        } 
    </script>
</head>
<body>

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
        <li class="nav-item active">
          <a class="nav-link" href="bookEntry.aspx">Book Entry</a>
        </li>
        <li class="nav-item">
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

    <form id="form1" runat="server">
    <div class="container-fluid">
    <div class="page-header">
                <br /><br /> <br /><br /><br />
  <center> <h2>Book Entry</h2></center> 
        </div>
<!----------------------------------- Container 1----------------------------------------------------->

<div class="column">
  
   <br /> 
           <div class="row">
   
            <div class="col">
                <label class="control-label " for="name">
                    Book L No
                </label>
                <asp:TextBox CssClass="form-control" ID="bookLNo" placeholder="Book L No" runat="server" />
                <!-- validation -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="bookLNo" runat="server" ErrorMessage="Enter Book L no" ForeColor="Red" />

                <!--<input class="form-control" id="name" name="userId" type="text" required/> -->

            </div>

            <div class="col">
                <label class="control-label " for="name1">
                    Book Name
                </label>
                <asp:TextBox CssClass="form-control" ID="bookName" placeholder="Book Name" runat="server"  />
                <!-- validation -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="bookName" runat="server" ErrorMessage="Enter Book Name" ForeColor="Red" />
                <!-- <input class="form-control" id="name1" name="bookLNo" type="text" required/> -->
            </div>
        </div>

  <div class="row">
   
            <div class="col">
                <label class="control-label " for="remark">
                    Author Name
                </label>

                <asp:TextBox CssClass="form-control" ID="authorName" runat="server" /> 
            </div>           
      <div class="col">
                <label class="control-label " for="remark">
                    Category
                </label>

                <asp:TextBox CssClass="form-control" ID="category" runat="server" /> 
            </div>

     </div>
    <div class="row">
   
            <div class="col">
                <label class="control-label " for="remark">
                    Subject
                </label>

                <asp:TextBox CssClass="form-control" ID="subject" runat="server" /> 
            </div>           
      <div class="col">
                <label class="control-label " for="remark">
                    Price
                </label>

                <asp:TextBox CssClass="form-control" ID="price" runat="server" onkeypress="return ValidNumeric()" /> 

            </div>

     </div>
    <div class="row">
        <div class="col">
                <label class="control-label requiredField" for="date2">
                   Date
                </label>
                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <asp:TextBox CssClass="form-control" ID="idate" placeholder="DD-MM-YYYY" runat="server" />

                    <!--  <input class="form-control"  id="dueDate"  placeholder="DD-MMYYYY" type="text" /> -->
                </div>
            </div>
        <div class="col">
                <label class="control-label " for="remark">
                    Rack 
                </label>

                <asp:TextBox CssClass="form-control" ID="rack" runat="server" /> 
            </div>           
        </div>

    <br /><br />
        <div class="form-group">
            <div>                
            <center><asp:Button runat="server" name="submit" class="btn btn-primary" Text="Add Book" OnClick="submit_Click" /></center>
            </div>
        </div>
    
    </div>

    
<!----------------------------------- Container fluid end----------------------------------------------------->
    </div>
    </form>
</body>

</html>
