<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DestinationsList.aspx.cs" Inherits="ExerciseBundle.DestinationsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Destinations</title>
    <style>
        .result-label {
            display: block;
        }

        h3, .result-label {
            text-align: center;
        }

        .result-label, .submit-btn {
            margin-right: 8px;
        }

    </style>
</head>
<body>
    <form id="form" runat="server">
        <h3>Example 1 - ListBox single select</h3>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>
                <asp:Label runat="server" Text="Choose your destination:"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:ListBox OnSelectedIndexChanged="Single_Destination_Selected" ID="DestinationList" Rows="4" Width="150px" runat="server" AutoPostBack="True">
                        <%--The Value represents the distance from each city to Skopje--%>
                        <asp:ListItem Value="3,572km">Lisbon</asp:ListItem>
                        <asp:ListItem Value="2,700km">Oslo</asp:ListItem>
                        <asp:ListItem Value="4,851km">Reykjavík</asp:ListItem>
                        <asp:ListItem Value="2,201km">Amsterdam</asp:ListItem>
                    </asp:ListBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Label ID="ResultLabelSingleSelect" CssClass="result-label" runat="server" Text=""></asp:Label>
        <h3>Example 2 - ListBox multiselect</h3>
        <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:ListBox ID="MultipleDestinationsList" Rows="4" Width="150px" runat="server" SelectionMode="Multiple">
                        <asp:ListItem>Lisbon</asp:ListItem>
                        <asp:ListItem>Oslo</asp:ListItem>
                        <asp:ListItem>Reykjavík</asp:ListItem>
                        <asp:ListItem>Amsterdam</asp:ListItem>
                    </asp:ListBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" CssClass="submit-btn" Text="Choose" OnClick="MultiSelectBtn_Click" />
                    <asp:Button CssClass="reset-btn" runat="server" Text="Reset Lists" OnClick="ResetBtn_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Label ID="ResultLabelMultipleSelect" CssClass="result-label" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
