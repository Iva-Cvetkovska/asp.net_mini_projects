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
                ResultLabel.Text = "You chose: " + DestinationList.SelectedItem.Text;
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