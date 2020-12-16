<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LibraryManagement.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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


</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="page-header">
                <br /><br /><br />
  <center> <h2>Library Management System</h2></center> 
        </div>
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">

                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center><br /><br /><br />
                              <h3>Login</h3>

                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
         
                                <hr />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label>Login Id</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="id" runat="server" placeholder="Admin ID"></asp:TextBox>
                         </div>   
                                <label>Password</label>
                         <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="pass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                         </div>   
                            <div class="form-group">
                               <center> <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
                                 </center>
                              </div> 
                        </div>
                    </div>

                </div>
            </div>
            </div></div></div>
    </form>
</body>
</html>
