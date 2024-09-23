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
           background-repeat : repeat;
          
        
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



    
    .tbox1
    {
        margin-left : 0.5cm;
        margin-top : 1.2cm;
        border: 5px solid white;
        height:6cm;
        width: 15cm;
         background-color: White;
         opacity: 0.7;
         border-radius: 25px;
          text-align : center; 
       
       padding-top: 0.3cm;
        }




     .tsquare {
     
     
     margin-right : 1cm;
        margin-top : 1.2cm;
        border: 5px dashed skyblue;
        height:12cm;
        width: 15cm;
         background-color: white;
         opacity: 0.7;
         
          text-align : center;
     
     
     
     
     
     
     
     
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
    
   
    .hr {
  border-top: 5px solid skyblue;
  margin-left: 95px;
    margin-right: 95px;
   margin-top:4cm;
   /* width: 100%; 
   margin-left: 2cm; */
     
}


     .events {
     
     
     
       margin-top:2cm;
     
     
     
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
          
          
           <div class="tsquare" style="float:right; margin-top: 1cm; margin-right:2cm;">

                <h2><b><u>Stanford Library<b/></u></h2>
             <br/><h5>"Welcome to Stanfod Library, your gateway to boundless knowledge and exploration. We take pride in being more than just a repository of books; we are a vibrant hub where ideas converge and minds ignite.

At Stanfod, we believe in the power of learning, where each book is a portal to a new world and every page turned unveils a new adventure. Whether you're seeking academic resources, immersive storytelling, or intellectual stimulation, our shelves hold a treasure trove catering to diverse interests and pursuits.

Our commitment extends beyond books. We offer a digital oasis, providing access to vast online archives, scholarly journals, and multimedia resources, ensuring your quest for information knows no bounds.

Join us on a journey of discovery, where knowledge meets innovation, and where the past, present, and future converge.


                 
                 
                 
                 
                 
                 <h5/>

           </div>
          
          <div class="tbox" >
          <h3> Libraries play an essential role in local communities by providing access to  information and resources, 
          supporting literacy and education, promoting lifelong learning, and serving as a community gathering space.</h3> </div> 
         
            
            
            
            <div class="tbox1" style="float:right; margin-top: 2em; margin-right:7em;">
      <h3> <b><u>BOOKS OF THE YEAR!</b></u><br/>
          
                1.Don Quixote<br/>
                2.Lord of the Rings<br/>
                3.And Then There Were None<br/>
                4.Catcher in the Rye <br/>
                5.Anne of Green Gables<br/>
      </h3> </div>


            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
    
             
          <div class= "hr"></div>
           
            
            
            
              <div class="events">
             <center><h2><b><u>UPCOMING EVENTS!</u></b></h2>

              <h3> Here at Stanfod we helds various events like fundraiser programmes,festive sales etc<br/>
                    Aliquam lacinia sodales ex, at suscipit justo gravida ac.
                  Vivamus vulputate est sit amet maximus efficitur. Integer convallis ullamcorper justo, 
                 vel interdum libero tempus a. Nulla vehicula vestibulum risus, 
                <br/>
                    <br/>pls click below to know more about upcoming events<br/>
                    <br/>
                    
                    <asp:Button ID="events" runat="server" Text="Events"  class="btn btn-primary" OnClick="events_Click" />  
                
                </h3>
        
         
            
            </center></div>




        
          <br/>
            <br/>
            <br/>
            <br/>
               
       </div>
    
            
            
            
  </form>
</body>
</html>

