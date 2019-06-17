using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            Response.Redirect(Request.UrlReferrer.ToString());
        }
        Lbl_ErrorLogin.Text = "";
    }

    protected void Btn_login_Click(object sender, EventArgs e)
    {
        Lbl_ErrorLogin.Text = "";
        if (Txt_Usernamen.Text != "" || Txt_Password.Text != "")
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=MSI\SQLEXPRESS;Initial Catalog=EvenementenDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
            {
                sqlCon.Open();
                string query = "SELECT Userstatus FROM [User] WHERE Username=@InputName AND Userpass=@InputPassword";
                SqlCommand sqlcmd = new SqlCommand(query, sqlCon);
                sqlcmd.Parameters.AddWithValue("@InputName", Txt_Usernamen.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@InputPassword", Txt_Password.Text);
                string Userstatus = Convert.ToString(sqlcmd.ExecuteScalar());
                sqlCon.Close();
                if (Userstatus != "")
                {
                    Session["UserName"] = Txt_Usernamen.Text.Trim();
                    Session["Userstatus"] = Userstatus;
                    Response.Redirect("Events-overzicht.aspx");
                }
                else
                {
                    Lbl_ErrorLogin.Text = "Gebruikersnaam of wachtwoord is fout.";
                }
            }
        }
        else
        {
            Lbl_ErrorLogin.Text = "Gebruikersnaam of wachtwoord is niet ingevoerd.";
        }
    }
}