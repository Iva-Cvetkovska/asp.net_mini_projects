<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuccessPage.aspx.cs" Inherits="ExerciseBundle.Votes.SuccessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Success Page</title>
    <style>
        .text-align-center {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-align-center">
            <h1>Thank you for participaiting in the voting!</h1>
            <asp:Label ID="lbEmail" runat="server" Text="The final results will be sent to your email address: "></asp:Label>
        </div>
    </form>
</body>
</html>
