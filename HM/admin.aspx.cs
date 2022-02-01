using System;
using System.IO;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using System.Security;




namespace HM
{
    public partial class admin : System.Web.UI.Page
    {

        protected string UploadPoster()
        {
            string textimg = "";
            string[] st = { "jpeg", "jpg", "png", "tiff", "bmb", "gif" };
            if (Up_poster.HasFile)
            {

                string ast = System.IO.Path.GetExtension(Up_poster.PostedFile.FileName);
                bool s = false;
                for (int i = 0; i < st.Length; i++)
                {
                    if (ast == "." + st[i])
                    {
                        s = true;
                    }
                }
                if (s == false)
                {
                    Response.Write("Unsupported file ");

                }
                else if (s == true)
                {
                    string folderPath = Server.MapPath("~/posters/");
                    Up_poster.SaveAs(folderPath + Path.GetFileName(Up_poster.FileName));
                    textimg = "~/posters/" + Path.GetFileName(Up_poster.FileName);
                }
            }
            else
            {
                textimg = "~/img/nomov.png";
            }
            return textimg;
        }
        protected string UploadimgStars1()
        {
            string textimg = "";
            string[] st = { "jpeg", "jpg", "png", "tiff", "bmb", "gif" };
            if (Upload_star1.HasFile)
            {
                string ast = System.IO.Path.GetExtension(Upload_star1.PostedFile.FileName);
                bool s = false;
                for (int i = 0; i < st.Length; i++)
                {
                    if (ast == "." + st[i])
                    {
                        s = true;
                    }
                }
                if (s == false)
                {
                    Response.Write("Unsupported file ");

                }
                else if (s == true)
                {
                    string folderPath = Server.MapPath("~/stars_img/");
                    Upload_star1.SaveAs(folderPath + Path.GetFileName(Upload_star1.FileName));
                    textimg = "~/stars_img/" + Path.GetFileName(Upload_star1.FileName);
                }
            }
            else
            {
                textimg = "~/img/nost.png";
            }
            return textimg;
        }
        protected string UploadimgStars2()
        {
            string textimg = "";
            string[] st = { "jpeg", "jpg", "png", "tiff", "bmb", "gif" };
            if (Upload_star2.HasFile)
            {
                string ast = System.IO.Path.GetExtension(Upload_star2.PostedFile.FileName);
                bool s = false;
                for (int i = 0; i < st.Length; i++)
                {
                    if (ast == "." + st[i])
                    {
                        s = true;
                    }
                }
                if (s == false)
                {
                    Response.Write("Unsupported file ");

                }
                else if (s == true)
                {
                    string folderPath = Server.MapPath("~/stars_img/");
                    Upload_star2.SaveAs(folderPath + Path.GetFileName(Upload_star2.FileName));
                    textimg = "~/stars_img/" + Path.GetFileName(Upload_star2.FileName);
                }
            }

            else
            {
                textimg = "~/img/nost.png";
            }
            return textimg;
        }
        protected string UploadimgStars3()
        {
            string textimg = "";
            string[] st = { "jpeg", "jpg", "png", "tiff", "bmb", "gif" };
            if (Upload_star3.HasFile)
            {
                string ast = System.IO.Path.GetExtension(Upload_star3.PostedFile.FileName);
                bool s = false;
                for (int i = 0; i < st.Length; i++)
                {
                    if (ast == "." + st[i])
                    {
                        s = true;
                    }
                }
                if (s == false)
                {
                    Response.Write("Unsupported file ");

                }
                else if (s == true)
                {
                    string folderPath = Server.MapPath("~/stars_img/");
                    Upload_star3.SaveAs(folderPath + Path.GetFileName(Upload_star3.FileName));
                    textimg = "~/stars_img/" + Path.GetFileName(Upload_star3.FileName);
                }
            }

            else
            {
                textimg = "~/img/nost.png";
            }
            return textimg;
        }

     
        

     

        protected void InsertButton_Click(object sender, EventArgs e)
        {

            var ddl = FormView1.FindControl("poster_txt0") as TextBox;
            ddl.Text = UploadPoster();
            var textBox1 = (TextBox)FormView1.FindControl("poster_txt1");
            textBox1.Text = UploadimgStars1();
            var textBox2 = (TextBox)FormView1.FindControl("poster_txt2");
            textBox2.Text = UploadimgStars2();
            var textBox3 = (TextBox)FormView1.FindControl("poster_txt3");
            textBox3.Text = UploadimgStars3().ToString();
            Panel0.Visible = false;

        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            Panel0.Visible = true;
        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            Panel0.Visible = true;
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            var ddl = FormView1.FindControl("poster_txt0") as TextBox;
            ddl.Text = UploadPoster();
            var textBox1 = (TextBox)FormView1.FindControl("poster_txt1");
            textBox1.Text = UploadimgStars1();
            var textBox2 = (TextBox)FormView1.FindControl("poster_txt2");
            textBox2.Text = UploadimgStars2();
            var textBox3 = (TextBox)FormView1.FindControl("poster_txt3");
            textBox3.Text = UploadimgStars3().ToString();
            Panel0.Visible = false;
        }

        protected void UpdateCancelButton_Click(object sender, EventArgs e)
        {
            Panel0.Visible = false;
        }
    }
}