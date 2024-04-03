<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExerciseBundle.Votes.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/LoginStyleSheet.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid">
            <asp:Label AssociatedControlID="txtName" ID="lbName" CssClass="grid-a" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" CssClass="grid-b" name="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name field is required." ValidationGroup="PersonalInfo" ControlToValidate="txtName" Display="None" Visible="True"></asp:RequiredFieldValidator>

            <asp:Label AssociatedControlID="txtEmail" ID="lbEmail" CssClass="grid-c" runat="server" Text="E-mail:"></asp:Label>
            <asp:TextBox ID="txtEmail" CssClass="grid-d" name="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email field is required." ControlToValidate="txtEmail" ValidationGroup="PersonalInfo" ViewStateMode="Inherit" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email format." ControlToValidate="txtEmail" Display="None" ValidationGroup="PersonalInfo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            <asp:Label AssociatedControlID="tbPassword" ID="lbPassword" CssClass="grid-e" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox TextMode="Password" ID="tbPassword" CssClass="grid-f" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password field is required." ValidationGroup="PersonalInfo" ControlToValidate="tbPassword" Display="None" Visible="True"></asp:RequiredFieldValidator>
            <asp:Label AssociatedControlID="tbPasswordConfirm" ID="lbPassConfirm" CssClass="grid-g" runat="server" Text="Confirm password:"></asp:Label>
            <asp:TextBox TextMode="Password" ID="tbPasswordConfirm" CssClass="grid-h" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm password field is required." ControlToValidate="tbPasswordConfirm" Display="None" ValidationGroup="PersonalInfo"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords are not matching." ValidationGroup="PersonalInfo" ControlToValidate="tbPasswordConfirm" ControlToCompare="tbPassword" Display="None" Font-Italic="False" Visible="True"></asp:CompareValidator>

            <asp:Label AssociatedControlID="txtYears" ID="lbYears" CssClass="grid-i" runat="server" Text="Years:"></asp:Label>
            <asp:TextBox ID="txtYears" CssClass="grid-j" name="txtYears" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Allowed range for years is 18 - 100" ValidationGroup="PersonalInfo" ControlToValidate="txtYears" Display="None" Font-Bold="False" MaximumValue="100" MinimumValue="18" Type="Integer" Visible="True"></asp:RangeValidator>

            <asp:Button ID="validatePersonalInfoBtn" CssClass="grid-k" runat="server" Text="Validate Personal Info" OnClick="Login_User" ValidationGroup="PersonalInfo" />
        </div>
        <div class="validation">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="PersonalInfo" />
        </div>
        <asp:Label ID="errMessage" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
