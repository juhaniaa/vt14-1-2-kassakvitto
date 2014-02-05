<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1_2_kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="~/Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" defaultbutton="Getdiscount">
    <div>
        <%-- Rubriker --%>
        <asp:Label ID="Label1" CssClass="Header" runat="server" Text="Kassakvitto"></asp:Label>
        <asp:Label ID="Label2" CssClass="Label" runat="server" Text="Total köpesumma"></asp:Label>

        <%-- Användaren matar in total summa --%>
        <asp:TextBox ID="Amount" runat="server" TextMode="SingleLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Total köpesumma får inte vara tom!" ControlToValidate="Amount"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Total köpesumma måste innehålla ett flyttal som är större än noll" ControlToValidate="Amount" Operator="GreaterThan" Type="Double" ValueToCompare="0"></asp:CompareValidator>
        
        <%-- Knapp för att beräkna rabatten --%>
        <asp:Button ID="Getdiscount" runat="server" Text="Beräkna rabatt" OnClick="Getdiscount_Click"/>
        
        <%-- Kvittot renderas ut --%>
        <asp:Label ID="Subtotal" runat="server" Text="Label" Visible="false" CssClass="Label"></asp:Label>
        <asp:Label ID="DiscountRate" runat="server" Text="Label" Visible="false" CssClass="Label"></asp:Label>
        <asp:Label ID="MoneyOff" runat="server" Text="Label" Visible="false" CssClass="Label"></asp:Label>
        <asp:Label ID="Total" runat="server" Text="Label" Visible="false" CssClass="Label"></asp:Label>
    </div>
    </form>
    <script src="Scripts/MyScript.js"></script>
</body>
</html>
