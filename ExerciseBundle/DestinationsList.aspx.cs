using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExerciseBundle
{
    public partial class DestinationsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            if (DestinationList.SelectedIndex > -1)
            {
                ResultLabel.Text = "You chose: ";
                ResultLabel.Text += DestinationList.SelectedItem.Text;
                ResultLabel.Text += ", which is ";
                ResultLabel.Text += DestinationList.SelectedItem.Value;
                ResultLabel.Text += " away from Skopje.";
            }
        }

        protected void ResetBtn_Click(object sender, EventArgs e)
        {
            if (DestinationList.SelectedIndex > -1)
            {
                DestinationList.SelectedIndex = -1;
                ResultLabel.Text = "";
            }
        }
    }
}