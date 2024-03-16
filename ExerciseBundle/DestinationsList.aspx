<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DestinationsList.aspx.cs" Inherits="ExerciseBundle.DestinationsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Destinations</title>
    <style>
        h3 {
            text-align: center;
        }

        .submit-btn {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">
        <h3>Example 1 - using Table, ListBox, Button and Label</h3>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>
                <asp:Label runat="server" Text="Choose your destination:"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:ListBox ID="DestinationList" Rows="4" Width="150px" runat="server">
                        <asp:ListItem>Lisbon</asp:ListItem>
                        <asp:ListItem>Oslo</asp:ListItem>
                        <asp:ListItem>Reykjavík</asp:ListItem>
                        <asp:ListItem>Amsterdam</asp:ListItem>
                    </asp:ListBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" CssClass="submit-btn" Text="Choose" OnClick="SubmitBtn_Click" />
                    <asp:Button runat="server" Text="Reset" OnClick="ResetBtn_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
