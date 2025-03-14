<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userslist.aspx.cs" Inherits="Library.userslist" %>

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
    position: sticky;
    top: 0;
    background-color: rgba(51, 51, 51, 1.0);
    overflow: hidden;
    padding: 7px;
    z-index: 100; /* Add z-index to ensure it stays above other elements */
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
    
   
  .usergrid
  {
      
      border: 2px solid black ;
      
       width:21.68cm;
     
     padding-right:2cm;

      border-width :0.1cm;
     
      
      margin-left: 270px;  
      
      
      } 
   
  
  
  .rgrid
  {
      
      border: 2px solid black ;
      
       width:20.80cm;
     
     padding-right:2cm;

      border-width :0.1cm;
     
      
      margin-left: 270px;  
      
      
      } 
  
  
  
  
   .updatecon
   {
       
       
       margin-left : 25cm;
      margin-top:-350px;
      
      
      
       
       }
   
   .updtbtn
   {
       
       
       
       }
 
   
   
   
   .container
  {
      
         padding-top: 1.5cm;  
         margin-top : 1.5cm;
        border: 5px solid skyblue;
        height:6cm;
        width: 14cm;
       border-radius: 25px;
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
          
          
          


          
                                   <center><h1><u>MANAGE USER</u></h1></center>

     
     
                               <div class="container">

                                   <asp:TextBox ID="deluserid" runat="server" class="form-control" placeholder="USER ID"></asp:TextBox>
                                      <br/>
                                <center>   
                                    <asp:Button ID="deletebtn" runat="server" Text="DELETE USER"   
                                        class="btn btn-primary" onclick="deletebtn_Click" /></center>
                               
                               </div>
       




        <br/>
        <br/>
        <br/>



        <center style="color: white; "><h1><u> <b>USER'S DATA</b></u></h1></center>
          
            <br/>          
            <br/>
            <div class="row">
                <div class="col-md-7">
                    <div class="usergrid"> 
            <asp:GridView ID="usergv" runat="server" AllowPaging="True" 
               PageSize="5" AutoGenerateColumns="False" CellPadding="15" DataKeyNames="id" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="24px" 
                            Width="520px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                        SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" 
                        SortExpression="LastName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="PinCode" HeaderText="PinCode" 
                        SortExpression="PinCode" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="ValidDate" HeaderText="ValidDate" 
                        SortExpression="ValidDate" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>  </div> </div> </div>
        
     









     
     
        

       









     
     
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [regtbl]"></asp:SqlDataSource>
      
  

        
     



     <br/>

     <br/>












     
     
  </div>
   
 </form>
</body>
</html>


