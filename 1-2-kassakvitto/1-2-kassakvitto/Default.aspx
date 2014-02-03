<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1_2_kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="Getdiscount" defaultfocus="Amount">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Kassakvitto"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Total köpesumma"></asp:Label>
        <asp:TextBox ID="Amount" runat="server" TextMode="SingleLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Total köpesumma får inte vara tom!" ControlToValidate="Amount"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Total köpesumma måste innehålla ett flyttal som är större än noll" ControlToValidate="Amount" Operator="GreaterThan" Type="Double" ValueToCompare="0"></asp:CompareValidator>
        <asp:Button ID="Getdiscount" runat="server" Text="Beräkna rabatt" OnClick="Getdiscount_Click" />
    </div>
    </form>
</body>
</html>
