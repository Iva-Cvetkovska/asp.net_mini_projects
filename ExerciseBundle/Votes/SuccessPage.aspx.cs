using System;

namespace ExerciseBundle.Votes
{
    public partial class SuccessPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lbEmail.Text += Request.QueryString["email"];
            }
        }
    }
}