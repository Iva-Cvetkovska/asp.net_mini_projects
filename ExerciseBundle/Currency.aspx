<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Currency.aspx.cs" Inherits="ExerciseBundle.Currency" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Currency</title>
    <style>
        .flex {
            display: flex;
            flex-direction: column;
            row-gap: 8px;
        }

        .submit-btn {
            margin: 8px 0;
        }

        .radio-btn-list {
            margin-top: 8px;
        }

        .num_of_list_items {
            display: block;
        }
    </style>
</head>
<body>
    <h2>Example input: Name - EUR, Value - 64. I am using MKD currency as reference, so 64EUR=1MKD. <br /> 
        The idea is to add as much of these name value pairs and then convert them to MKD (or any reference currency you choose).<br />
        The value is converted when selecting an item from the list.
    </h2>
    <form id="form1" runat="server">
        <div class="flex">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                <asp:TextBox ID="Currency_Name" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label2" runat="server" Text="Currency value in denar:"></asp:Label>
                <asp:TextBox ID="Currency_Value" runat="server"></asp:TextBox>
            </div>
        </div>
        <asp:Button CssClass="submit-btn" ID="Button1" runat="server" Text="Add" OnClick="Add_Currency_To_List" />
        <asp:Button CssClass="remove-btn" ID="Button2" runat="server" Text="Remove selected currency" OnClick="Remove_Currency_From_List" /><br />

        <asp:Label ID="Label3" runat="server" Text="Enter value for conversion from the selected value into mkd:"></asp:Label>
        <asp:TextBox ID="Value_For_Conversion" runat="server"></asp:TextBox><br />

        <asp:Label ID="Converted_Value" runat="server" Text=""></asp:Label>

        <asp:RadioButtonList AutoPostBack="true" CssClass="radio-btn-list" ID="Currencies" runat="server" OnSelectedIndexChanged="Currency_Selected"></asp:RadioButtonList>
    </form>
</body>
</html>
