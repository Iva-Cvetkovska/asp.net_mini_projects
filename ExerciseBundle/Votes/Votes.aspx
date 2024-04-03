<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Votes.aspx.cs" Inherits="ExerciseBundle.Votes.Votes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/VotesStyleSheet.css" rel="stylesheet" />
    <title>Voting Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Choose your most interesting subject:</h2>
        <div class="grid">
            <%-- First column --%>
            <asp:Label CssClass="grid-a" ID="lbProfessor" runat="server" Text=""></asp:Label>
            <div class="grid-d">
                <asp:ListBox ID="lbSubjects" runat="server" OnSelectedIndexChanged="Subject_Selected" AutoPostBack="true"></asp:ListBox>
                <asp:ListBox ID="lbCredits" runat="server"></asp:ListBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lbSubjects" Display="None" ErrorMessage="Please select a subject from the list." Font-Bold="False" ValidationGroup="SubjectList"></asp:RequiredFieldValidator>
            </div>
            <asp:Button CssClass="grid-i" ID="voteBtn" runat="server" Text="Vote" ValidationGroup="SubjectList" OnClick="Vote" />

            <%-- Second column --%>
            <asp:Label CssClass="grid-b" AssociatedControlID="txtSubject" ID="lbSubject" runat="server" Text="Subject:"></asp:Label>
            <asp:TextBox CssClass="grid-c" ID="txtSubject" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a subject." ControlToValidate="txtSubject" Display="None" ValidationGroup="SubjectInfo"></asp:RequiredFieldValidator>

            <asp:Label CssClass="grid-e" AssociatedControlID="txtAddProfessor" ID="lbAddProfessor" runat="server" Text="Professor:"></asp:Label>
            <asp:TextBox CssClass="grid-f" ID="txtAddProfessor" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a professor." ControlToValidate="txtAddProfessor" Display="None" ValidationGroup="SubjectInfo"></asp:RequiredFieldValidator>

            <asp:Label CssClass="grid-g" AssociatedControlID="txtCredits" ID="labelCredits" runat="server" Text="Credits:"></asp:Label>
            <asp:TextBox CssClass="grid-h" ID="txtCredits" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter credits." ControlToValidate="txtCredits" Display="None" ValidationGroup="SubjectInfo"></asp:RequiredFieldValidator>

            <asp:Button CssClass="grid-j" ID="addBtn" runat="server" Text="Add" ValidationGroup="SubjectInfo" OnClick="Add_Subject" BorderStyle="None" />
            <asp:Button CssClass="grid-k" ID="deleteBtn" runat="server" Text="Delete" ValidationGroup="SubjectList" OnClick="Remove_Subject" BorderStyle="None" />
        </div>
        <div class="validation">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="SubjectInfo" />
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="SubjectList" />
        </div>
    </form>
</body>
</html>
