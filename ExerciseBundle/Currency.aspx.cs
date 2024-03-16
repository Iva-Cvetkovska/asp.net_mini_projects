using System;
using System.Web.UI.WebControls;

namespace ExerciseBundle
{
    public partial class Currency : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Add_Currency_To_List(object sender, EventArgs e)
        {
            if (Currency_Name.Text != "" && Currency_Value.Text != "")
            {
                ListItem li = new ListItem(Currency_Name.Text, Currency_Value.Text);
                Currencies.Items.Add(li);

                Currency_Name.Text = "";
                Currency_Value.Text = "";
            }
        }

        protected void Remove_Currency_From_List(object sender, EventArgs e)
        {
            Currencies.Items.Remove(Currencies.SelectedItem);
            Converted_Value.Text = "";
        }

        protected void Currency_Selected(object sender, EventArgs e)
        {
            try
            {
                Converted_Value.Text = (Convert.ToDouble(Value_For_Conversion.Text) * Convert.ToDouble(Currencies.SelectedItem.Value)).ToString();
            }
            catch (Exception ex)
            {
                Converted_Value.Text = ex.Message;
            }
        }
    }
}