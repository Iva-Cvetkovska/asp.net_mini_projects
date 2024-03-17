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
            try
            {
                string name = txtName.Text;
                string password = txtPassword.Value;
                MailAddress email = new MailAddress(txtEmail.Text);

                if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(password)) {
                    errMessage.Text = string.Empty;
                    Response.Redirect("Votes.aspx?email=" + email);
                }
                else
                {
                    errMessage.Text = "You need to enter values for both Name and Password!";
                }

            } catch (Exception ex)
            {
                errMessage.Text = ex.Message;
            }
        }
    }
}