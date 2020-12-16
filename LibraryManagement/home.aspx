<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="LibraryManagement.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
   <!--Main Navigation-->
<header>
    
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark indigo">
    <a class="navbar-brand active" href="home.aspx"><strong>Home</strong></a>
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
        <li class="nav-item ">
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
  <center> <h2>Library Management System</h2></center> 
        </div>
<!----------------------------------- Container 1----------------------------------------------------->
    <br /><h3><b>About Library Management System</h3></b>
    <p>A Library management system is a software that uses to maintain the record of the library. It contains work like the number of available books in the library, the number of books are issued or returning or renewing a book or late fine charge record, etc.</p>
    <br />
    <h3>Welcome to University of Madras</h3>
    <p>The University of Madras or Madras University is a public state university in Chennai, Tamil Nadu, India. Established in 1857, it is one of the oldest universities in India, incorporated by an Act of Legislative Council of India under the British government.</p>

   <br /><h3> Some of the courses offered by IDE has no parallel in this country to name a few,</h3>
    <ul>
        <li>B.Music</li>
        <li>M.Music</li>
        <li>M.A. Vaishnavism</li>
        <li>M.A. Christian Studies</li>
        <li>M.C.A. and M.B.A.are well designed professional training courses for aspiring graduates.</li>
    </ul>
    
    <br />
 <strong>  <p>The University has been accredited by National Assessment and Accreditation Council (NAAC) with the five star rating first, and later with an A rating. The UGC has recognised the University as one of the centres for "potential for excellence" in the country.</p>
    </strong>
     </form>
</body>
</html>
