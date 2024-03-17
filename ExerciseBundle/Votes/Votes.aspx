<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Votes.aspx.cs" Inherits="ExerciseBundle.Votes.Votes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Voting Page</title>
    <style>
        .mt-8 {
            margin-top: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Choose your most interesting subject:</h2>
        <div>
            <asp:Label ID="lbProfessor" runat="server" Text=""></asp:Label><br />
            <asp:ListBox CssClass="mt-8" ID="lbSubjects" runat="server" OnSelectedIndexChanged="Subject_Selected" AutoPostBack="true"></asp:ListBox>
            <asp:ListBox ID="lbCredits" runat="server"></asp:ListBox><br />
            <asp:Button CssClass="mt-8" ID="voteBtn" runat="server" Text="Vote" OnClick="Vote" />
        </div>
    </form>
</body>
</html>
