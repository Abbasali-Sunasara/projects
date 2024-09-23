
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Library.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
 <style>
        body {
            margin: 0;
            padding: 0;
            /*font-family: Arial, sans-serif;
             background-color: #F4F27E;*/ 
        
        }

        .backimg {
           background-image: url("images/lib-blur.jpg");
           background-size:cover;
           background-repeat : no-repeat;
          
        
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
    
    .tbox
    {
        margin-left : 0.5cm;
        margin-top : 1.2cm;
        border: 5px solid skyblue;
        height:6cm;
        width: 15cm;
         background-color: White;
         opacity: 0.7;
         border-radius: 25px;
          text-align : center; 
       
       padding-top: 0.3cm;
        }
    
   
   .welc
   {
       
        font-family: " Constantia";
       color: Black;
       
        margin-right : 1.1cm;
       
       
       
       }
   
   .im1
   {
     border: 2px solid white;  
     border-width : 0.3cm;
     border-height: 0.4cm;
     
       
       
       }
   
  
    
    
    .tit
    {
        
        
     color: white;
     margin-top: 0.2cm;   
      
        }
    
    </style>
</head>
    <body class="backimg">
    <form id="form1" runat="server">
        <div class="navbrr">
            <a href="Home.aspx"><b>Home</b></a>
           <a href="Register.aspx"><b>Register</b></a>
            <a href="Login.aspx"><b>Admin</b></a>
              <a href="books.aspx"><b>Books</b></a>
              <a href="usercard.aspx"><b>UserID</b></a>
              <div class="tit" align="right"> 
                                 <h3 >  <img src="images/stanfod.png" / width="3%"   height="3%">  STANFOD </h3>   </div> 
          
          </div>
        
        
        
        

            <br>
        
        <div>
          
          
          
          <div class="welc"><h1 style="text-align :center; "> <u><b> STANFOD LIBRARY </b></u></h1></div>
          
          
          
          
          <div class="tbox" >
          <h3> Libraries play an essential role in local communities by providing access to  information and resources, 
          supporting literacy and education, promoting lifelong learning, and serving as a community gathering space.</h3> </div> 
         
         
          
  

        
        
        
        </div>
    </form>
</body>
</html>

