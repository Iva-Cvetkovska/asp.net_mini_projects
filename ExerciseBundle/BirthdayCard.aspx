<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BirthdayCard.aspx.cs" Inherits="ExerciseBundle.BirthdayCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Birthday Card</title>
    <style>
        html {
            height: 100%;
        }

        body {
            min-height: 100%;
            margin: 0 auto;
        }

        .grid {
            display: grid;
            grid-template: 1fr / 1fr 1fr;
            height: 100vh;
        }

            .grid section {
                border: 4px ridge;
            }

        .config-window {
            display: grid;
            grid-template: 1fr 1fr 1fr 1fr 1fr / 1fr 1fr;
            background-color: floralwhite;
            justify-items: center;
            align-items: center;
            padding: 0 16px;
        }

        .grid-col-full-width {
            grid-column: 1 / 3;
        }

        .txtArea, .txtArea textarea {
            width: 100%;
        }

        .mt-4 {
            margin-top: 4px;
        }

        .min-width-240 {
            min-width: 240px;
        }

        #card {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid">
            <section class="config-window">
                <div class="min-width-240">
                    <label for="bgColorPicker" id="lbBgColor">Pick Background Color:</label><br />
                    <input type="color" id="bgColorPicker" class="mt-4" name="bgColorPicker" value="" runat="server" />
                </div>
                <div class="min-width-240">
                    <asp:Label for="ddFont" ID="lbFont" runat="server" Text="Pick a Font:"></asp:Label><br />
                    <asp:DropDownList ID="ddFont" class="mt-4" runat="server"></asp:DropDownList>
                </div>
                <div class="min-width-240">
                    <label for="txtColorPicker" id="lbTxtColor" runat="server">Pick Font Color:</label><br />
                    <input type="color" id="txtColorPicker" class="mt-4" name="txtColorPicker" value="" runat="server" />
                </div>
                <div class="min-width-240">
                    <label for="txtFontSize" id="lbFontSize" runat="server">Enter Font Size:</label><br />
                    <input type="number" id="txtFontSize" class="mt-4" name="txtFontSize" runat="server" />
                </div>
                <div class="min-width-240">
                    <asp:Label for="rbBorderStyle" ID="lbBorderStyle" runat="server" Text="Pick Border Style:"></asp:Label><br />
                    <asp:RadioButtonList ID="rbBorderStyle" class="mt-4" runat="server" RepeatColumns="2"></asp:RadioButtonList>
                </div>
                <div class="min-width-240">
                    <label for="imagePicker" id="lbImage" runat="server">Upload Image:</label><br />
                    <asp:FileUpload ID="ImageUpload" runat="server" />
                </div>
                <div class="grid-col-full-width txtArea">
                    <asp:Label for="taCardText" ID="lbCardText" runat="server" Text="Enter Card Text:"></asp:Label><br />
                    <textarea id="taCardText" class="mt-4" rows="6" runat="server"></textarea>
                </div>
                <div class="grid-col-full-width">
                    <asp:Button Font-Size="14" ID="CreateCardBtn" runat="server" Text="Create Card" OnClick="Create_Card" />
                </div>
            </section>
            <section id="card" runat="server">
                <asp:Label ID="lbCard" runat="server" Text=""></asp:Label>
                <asp:Image class="mt-4" ID="cardImage" runat="server" />
            </section>
        </div>
    </form>
</body>
</html>
