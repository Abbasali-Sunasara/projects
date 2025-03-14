<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Library.Books" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
             /*background-color: #E48F45; */
        
        }

        .backimg {
           background-image: url("images/lib-blur.jpg");
            background-size: cover;
        }

         .navbrr {
            background-color: rgba(51, 51, 51, 1.0); /* Adjust the alpha value (0.5 in this example) for transparency */
            overflow: hidden;
          padding : 7px;

       
        }

        .navbrr a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            border-radius: 25px;
        }

        .navbrr a:hover {
            background-color: #ddd;
            color: black;
        }
    
    .Ibox
    {
        margin-left : 5cm;
        margin-top : 2cm;
        border: 5px solid skyblue;
        height:7cm;
        width: 10cm;
         background-color: White;
         opacity: 0.8;
         border-radius: 25px;
          text-align : center; 
       padding-top:0.7cm;
        }
    
   
  
   .Rbox
    {
        margin-left : 19cm;
        margin-top : -6.9cm;
        border: 5px solid skyblue;
        height:6.9cm;
        width: 10cm;
         background-color: White;
         opacity: 0.8;
         border-radius: 25px;
          text-align : center; 
          padding-top:0.7cm;
        
        }
  
  
  
  
   .welc
   {
       
       color:White;
       
        margin-right : 0.5cm;
       
       
       
       }
   
   .im1
   {
     border: 2px solid white;  
     border-width : 1cm;
     border-height: 2cm;
     
       
       
       }
   
    
  .container
  {
        padding-top: 0.9cm;  
      
       margin-top : 2.5cm;
        border: 5px solid skyblue;
        height:11cm;
        width: 18cm;
       border-radius: 25px;
     
      
      }  
    
    
    .tit
    {
        
        
     color: white;
     margin-top: 0.2cm;   
      
        }
    
    .hr {
  border-top: 5px solid skyblue;
  margin-left: 95px;
    margin-right: 95px;
   margin-top:1.2cm;
   /* width: 100%; 
   margin-left: 2cm; */
     
}

   

  




   </style>

</head>
<body class="backimg">
    
    
    
    
    <form id="form1" runat="server">
       
        <div class="navbrr" >
              <a href="Home.aspx"><b>Home</b></a>
           <a href="Register.aspx"><b>Register</b></a>
            <a href="Login.aspx"><b>Admin</b></a>
        <a href="books.aspx"><b>Books</b></a>
          <a href="usercard.aspx"><b>UserID</b></a>
         <div class="tit" align="right"> 
              <h3>  <img src="images/stanfod.png" / width="3%"   height="3%">  STANFOD </h3>   </div> 
        </div>
  

 


       <div class="Ibox" >
          <h3> PLEASE CLICK <br>BELOW TO <br>ISSUE BOOK <br>RIGHT AWAY!!<br><br>           
          
           <asp:Button ID="isubtn" runat="server" Text="ISSUE" onclick="ibtn_Click"  class="btn btn-primary" /></h3> 

          
          </div> 
    
    
     <div class="Rbox" >
          <h3> PLEASE CLICK <br>BELOW TO <br> RETURN BOOK <br>RIGHT AWAY!!<br><br>
          
          
         <asp:Button ID="rtnbtn" runat="server" Text="RETURN" onclick="rbtn_Click"    class="btn btn-primary"/></h3>
          
           </div> 
          
          <div class= "hr"></div>
    
    <br/>
     <br/>
           
       <center>
         <div class="recbtn">
         <asp:Button ID="loginbtn" runat="server" Text="BOOK RECORDS" class="btn btn-primary" OnClick="loginbtn_Click" />    </></div>
    </center>
 
    
    
    </form>
</body>
</html>
