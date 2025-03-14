<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Records.aspx.cs" Inherits="Library.Records" %>

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
    
   
  .igrid
  {
      
      border: 2px solid black ;
      
       width:20.80cm;
     
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
          
          
          
        <center><h1><u> <b>ISSUE RECORDS</b></u></h1></center>
          
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          
          
        
      
            <div class="row">
                <div class="col-md-7">
                    <div class="igrid"> 
                        <asp:GridView ID="issuerecords" runat="server" CellPadding="25" 
                Height="338px" onselectedindexchanged="issuerecords_SelectedIndexChanged1" 
                Width="780px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                 ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="5" >
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="book_Id" HeaderText="book_Id" 
                                    SortExpression="book_Id" />
                                <asp:BoundField DataField="Book _Name" HeaderText="Book _Name" 
                                    SortExpression="Book _Name" />
                                <asp:BoundField DataField="Author" HeaderText="Author" 
                                    SortExpression="Author" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Contact" HeaderText="Contact" 
                                    SortExpression="Contact" />
                            </Columns>
             <EditRowStyle BackColor="#999999" />
             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#E9E7E2" />
             <SortedAscendingHeaderStyle BackColor="#506C8C" />
             <SortedDescendingCellStyle BackColor="#FFFDF8" />
             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Issuebk]"></asp:SqlDataSource>
             </div>
         
        </div>
        </div>

        
        
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         

      

                                            <br>
                                            
                                            
                                            <br>
 

                                           <br>



                              <center><h1><u> <b>RETURN RECORDS</b></u></h1></center>
      
         <br>


      <div class="rgrid"> 
            <asp:GridView ID="returnrecords" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource2" AllowPaging="True"  PageSize="5" CellPadding="15" 
                ForeColor="#333333" GridLines="None" Height="338px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="780px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" 
                        SortExpression="Student_name" />
                    <asp:BoundField DataField="Book_id" HeaderText="Book_id" 
                        SortExpression="Book_id" />
                    <asp:BoundField DataField="Book_name" HeaderText="Book_name" 
                        SortExpression="Book_name" />
                    <asp:BoundField DataField="Author" HeaderText="Author" 
                        SortExpression="Author_name" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </div>
       









     
     
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Returnbk]"></asp:SqlDataSource>

       









     
     
  </div></div>

    </div>
    </div>
   
 </form>
</body>
</html>

