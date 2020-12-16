<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock.aspx.cs" Inherits="LibraryManagement.stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stock Maintenance</title>
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
        <li class="nav-item">
          <a class="nav-link" href="bookEntry.aspx">Book Entry</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="WebForm1.aspx">Book Issue</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="WebForm2.aspx">Book Return</a>
        </li>
          <li class="nav-item active">
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
  <center> <h2>Stock Maintenance</h2></center> 
        </div>
<!----------------------------------- Container 1----------------------------------------------------->

<div class="column">
  
   <br /> 
           <div class="row">
   
            <div class="col">
                 <asp:Button ID="Button1" class="btn btn-primary" name="Total Books" Text="Total Books"  runat="server" OnClick="total_Click"  />
            </div>
               <div class="col">
                <asp:TextBox CssClass="form-control" ID="totalBooks" placeholder="Total Books" runat="server" Enabled="false" />
               </div>
           </div>
           
           <div class="row">
   
            <div class="col">
                 <asp:Button ID="Button2" class="btn btn-primary" name="Issued Books" Text="Issued Books"  runat="server" OnClick="issued_Click"  />
            </div>
               <div class="col">
                <asp:TextBox CssClass="form-control" ID="issuedBooks" placeholder="Issued Books" runat="server" Enabled="false" />
               </div>
           </div>     
           
            <div class="row">
   
            <div class="col">
                 <asp:Button ID="Button3" class="btn btn-primary" name="Returned Books" Text="Returned Books"  runat="server" OnClick="returned_Click"  />
            </div>
               <div class="col">
                <asp:TextBox CssClass="form-control" ID="returnedBooks" placeholder="Returned Books" runat="server" Enabled="false"/>
               </div>
           </div>     
           
    
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
    <br />

        
                       
        
            

    </div>

    
<!----------------------------------- Container fluid end----------------------------------------------------->
    </div>
    </form>
</body>
</html>
