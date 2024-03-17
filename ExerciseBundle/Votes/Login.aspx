<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExerciseBundle.Votes.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        .grid {
            display: grid;
            grid-template: repeat(4, 1fr) / 120px 200px;
            grid-template-areas:
                "a b"
                "c d"
                "e f"
                ". g";
            grid-row-gap: 8px;
        }

        .grid-a {
            grid-area: a;
        }

        .grid-b {
            grid-area: b;
        }

        .grid-c {
            grid-area: c;
        }

        .grid-d {
            grid-area: d;
        }

        .grid-e {
            grid-area: e;
        }

        .grid-f {
            grid-area: f;
        }

        .grid-g {
            grid-area: g;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid">
            <asp:Label for="txtName" ID="lbName" CssClass="grid-a" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" CssClass="grid-b" name="txtName" runat="server"></asp:TextBox>
            <asp:Label for="txtPassword" ID="lbPassword" CssClass="grid-c" runat="server" Text="Password:"></asp:Label>
            <input type="password" id="txtPassword" class="grid-d" name="txtPassword" runat="server" />
            <asp:Label for="txtEmail" ID="lbEmail" CssClass="grid-e" runat="server" Text="E-mail:"></asp:Label>
            <asp:TextBox ID="txtEmail" CssClass="grid-f" name="txtEmail" runat="server"></asp:TextBox>
            <asp:Button ID="loginBtn" CssClass="grid-g" runat="server" Text="Login" OnClick="Login_User" />
        </div>
        <asp:Label ID="errMessage" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
