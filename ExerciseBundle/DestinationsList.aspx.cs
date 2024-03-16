using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
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

        protected void Single_Destination_Selected(object sender, EventArgs e)
        {
            if (DestinationList.SelectedIndex > -1)
            {
                ResultLabelSingleSelect.Text = "You chose: ";
                ResultLabelSingleSelect.Text += DestinationList.SelectedItem.Text;
                ResultLabelSingleSelect.Text += ", which is ";
                ResultLabelSingleSelect.Text += DestinationList.SelectedItem.Value;
                ResultLabelSingleSelect.Text += " away from Skopje.";
            }
        }

        protected void MultiSelectBtn_Click(object sender, EventArgs e)
        {
            string msg = "";
            foreach (ListItem li in MultipleDestinationsList.Items)
            {
                if (li.Selected && msg != "")
                {
                    msg += ", " + li.Text;
                } else if (li.Selected)
                {
                    msg += "Selected cities: " + li.Text;
                }
            }
            ResultLabelMultipleSelect.Text = msg;
        }

        protected void ResetBtn_Click(object sender, EventArgs e)
        {
            Reset_List(DestinationList, ResultLabelSingleSelect);
            Reset_List(MultipleDestinationsList, ResultLabelMultipleSelect);
        }

        private void Reset_List(ListBox list, System.Web.UI.WebControls.Label label)
        {
            if (list.SelectedIndex > -1)
            {
                list.SelectedIndex = -1;
                label.Text = "";
            }
        }
    }
}