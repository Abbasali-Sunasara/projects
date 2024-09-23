using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Xml.Linq;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace Library
{
    public partial class usercard : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Library.mdf;Integrated Security=True;User Instance=True"); 
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void seachbtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(" select * from regtbl where id like'" + srcuserid.Text + "%'", con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            useriddv.DataSource = ds;
            useriddv.DataBind();
        }

        protected void donwloadid_Click(object sender, EventArgs e)
        {
            string imagePath = Server.MapPath("~/myimages/user.png"); // Replace with your image path
            string pdfFilePath = Server.MapPath("~/LIBRARY IDCARD.pdf"); // Replace with your desired PDF file path

            // Create a document
            Document doc = new Document();

            try
            {
                // Create a PDF writer to write to the file
                PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream(pdfFilePath, FileMode.Create));

                // Open the document
                doc.Open();

                // Load the image from the local path
                iTextSharp.text.Image image = iTextSharp.text.Image.GetInstance(imagePath);
                image.ScaleToFit(doc.PageSize.Width - 500, doc.PageSize.Height - 500); // Adjust image size by reducing width by 100px
                image.SetAbsolutePosition(1, doc.PageSize.Height - image.ScaledHeight - 1); // Adjust positioning by 100px horizontally and 50px vertically

                // Add the image to the document
                doc.Add(image);

                // Add blank space between image and idcard content (adjust as needed)
                Paragraph blankSpace = new Paragraph("\n\n\n"); // Add multiple newline characters for spacing
                doc.Add(blankSpace);

                // Add a rectangle around the idcard content
                PdfContentByte cb = writer.DirectContent;
                cb.SetLineWidth(2f); // Set the line width of the rectangle border
                cb.Rectangle(17, 530, 510, 220); // Define the rectangle position and size (x, y, width, height)
                cb.Stroke(); // Draw the rectangle

                // Render the content of 'forprint1' div as HTML
                StringWriter sw = new StringWriter();
                HtmlTextWriter hw = new HtmlTextWriter(sw);
                idcard.RenderControl(hw);
                string divContent = sw.ToString();

                using (StringReader srHtml = new StringReader(divContent))
                {
                    iTextSharp.text.html.simpleparser.HTMLWorker htmlWorker = new iTextSharp.text.html.simpleparser.HTMLWorker(doc);
                    htmlWorker.Open();
                    htmlWorker.Parse(srHtml);
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions (log or display an error message)
                Console.WriteLine("Error: " + ex.Message);
            }
            finally
            {
                // Close the document
                doc.Close();
            }

            // Offer the PDF file for download
            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment; filename=Library Id.pdf");
            Response.TransmitFile(pdfFilePath);
            Response.Flush();
            Response.End();



        }


        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }


    }
}