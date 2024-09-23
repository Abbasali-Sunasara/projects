<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Library.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
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
    
    .tbox
    {
        margin-left : 0.5cm;
        margin-top : 0.5cm;
        border: 5px solid black;
        height:6cm;
        width: 15cm;
         background-color: White;
         opacity: 0.8;
         border-radius: 25px;
          text-align : center; 
       
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
         padding-top: 0.7cm;  
      
       margin-top : 1cm;
        border: 5px solid skyblue;
      
        height:15.5cm;
        width: 18cm;
       border-radius: 25px;
     
      
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
       
        <div class="navbrr" >
              <a href="Home.aspx"><b>Home</b></a>
           <a href="Register.aspx"><b>Register</b></a>
            <a href="Login.aspx"><b>Admin</b></a>
         <a href="books.aspx"><b>Books</b></a>
          <a href="usercard.aspx"><b>UserID</b></a>
         <div class="tit" align="right"> 
              <h3>  <img src="images/stanfod.png"  width="3%"   height="3%">  STANFOD </h3>   </div> 
        </div>
   
  

 <div class="container" align="center">

    
    <div class="col-md-5">
  
   <div class="mb-3">
   
   <asp:TextBox ID="fname" runat="server"  class="form-control"  placeholder="FIRST NAME"></asp:TextBox>
  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="fname" runat="server" ForeColor="white"  ErrorMessage="This Field is compulsory"></asp:RequiredFieldValidator> 
        </div>
    
    
    
   <div class="mb-3">
    
    
        <asp:TextBox ID="lname" runat="server"  class="form-control"  placeholder="LAST NAME" ></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="lname" runat="server" ForeColor="white"  ErrorMessage="This Field is compulsory"></asp:RequiredFieldValidator> 
   </div>
  
     
    <div class="mb-3">
   
    
        <asp:TextBox ID="email" runat="server"  class="form-control"   placeholder="EMAIIL" TextMode="Email"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="email" runat="server" ForeColor="white"  ErrorMessage="This Field is compulsory"></asp:RequiredFieldValidator> 
  </div>
  
  
  <div class="mb-3">
  
   <asp:TextBox ID="pincode" runat="server"  class="form-control"  placeholder="PIN CODE"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="pincode" runat="server" ForeColor="white"  ErrorMessage="This Field is compulsory"></asp:RequiredFieldValidator> 
       </div>
  
  
  
  <div class="mb-3">
   
     <asp:TextBox ID="address" runat="server"  class="form-control" placeholder="ADDRESS"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="address" runat="server" ForeColor="white"  ErrorMessage="This Field is compulsory"></asp:RequiredFieldValidator> 
  
  
  </div>
  
         <div class="mb-3">
   
     
             
 <b><asp:Label ID="Label1" runat="server" Text="VALID UPTO :"></asp:Label></b>  <asp:TextBox ID="validdate" runat="server"  class="form-control" placeholder="VALID UPTO" TextMode="Date"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="validdate" runat="server" ForeColor="white"  ErrorMessage="This Field is compulsory"></asp:RequiredFieldValidator> 
  
  
  </div>
  
  
        
        
        
        <div>
  
  
  
            <asp:Button ID="registerbtn" runat="server" class="btn btn-primary" 
                Text="Register" onclick="registerbtn_Click" 
                />

  </div>

  
  </div>
    </div>
      
  
   
  
          

    </form>
</body>
</html>
