using System;
using System.Net.Mail;

namespace ExerciseBundle.Votes
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_User(object sender, EventArgs e)
        {
            MailAddress email = new MailAddress(txtEmail.Text);
            Response.Redirect("Votes.aspx?email=" + email);
        }
    }
}