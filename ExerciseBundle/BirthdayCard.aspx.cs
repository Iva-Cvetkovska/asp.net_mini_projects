using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace ExerciseBundle
{
    public partial class BirthdayCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] borderStyles = { "Dotted", "Dashed", "Solid", "Double", "Groove", "Ridge", "Inset", "Outset" };

                foreach (FontFamily font in FontFamily.Families)
                {
                    ListItem li = new ListItem(font.Name, font.Name);
                    ddFont.Items.Add(li);
                }
                foreach (string borderStyle in borderStyles)
                {
                    ListItem li = new ListItem(borderStyle, borderStyle.ToLower());
                    rbBorderStyle.Items.Add(li);
                }
            }
        }

        private void Upload_Image()
        {
            String savePath = "ImageStorage/";
            String fileName = ImageUpload.FileName;
            savePath += fileName;
            ImageUpload.SaveAs(Server.MapPath(savePath));
            cardImage.ImageUrl = "~/" + savePath;
        }

        protected void Create_Card(object sender, EventArgs e)
        {
            if (ImageUpload.HasFile)
            {
                Upload_Image();
            }
            
            string text = taCardText.Value;
            lbCard.Text = text;

            AttributeCollection cardAttributes = card.Attributes;
            string bgColor = bgColorPicker.Value;
            string txtColor = txtColorPicker.Value;
            string fontSize = txtFontSize.Value;
            if (ddFont.SelectedIndex > -1)
            {
                string font = ddFont.SelectedItem.Value;
                cardAttributes.CssStyle.Add("font-family", font);
            }
            if (rbBorderStyle.SelectedIndex > -1)
            {
                string borderStyle = rbBorderStyle.SelectedItem.Value;
                cardAttributes.CssStyle.Add("border-style", borderStyle);
            }
            cardAttributes.CssStyle.Add("background-color", bgColor);
            cardAttributes.CssStyle.Add("color", txtColor);
            if (Convert.ToInt32(fontSize) > 0)
            {
                cardAttributes.CssStyle.Add("font-size", fontSize + "px");
            }
        }
    }
}