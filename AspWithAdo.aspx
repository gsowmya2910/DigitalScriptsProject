<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AspWithAdo.aspx.cs" Inherits="DigitalScriptsProject1.AspWithAdo" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
            <hr /><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HM- System</h3>
            <asp:Label ID="hIDLabel" runat="server" Text="Hospital ID*"></asp:Label>
            <asp:TextBox ID="hIDTextBox" runat="server" ></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="hName" runat="server" Text="Hospital Name*"></asp:Label>
            <asp:TextBox ID="hNameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="hAddress" runat="server" Text="Hospital Address"></asp:Label>
            <asp:TextBox ID="hAddressTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="hCityLabel" runat="server" Text="Hospital City*"></asp:Label>
            <asp:TextBox ID="hCityTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="hState" runat="server" Text="Hospital State*"></asp:Label>
           <asp:TextBox ID="hStateTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
            <asp:Label ID="hPhone" runat="server" Text="Hospital Phone"></asp:Label>
            <asp:TextBox ID="hPhoneText" runat="server"></asp:TextBox>
            <br />
        <br />
            <asp:Button ID="SearchButton" runat="server" Text="Button" />
        <br />                   
        <br />
        <hr />     
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            <br />
            <br />
            <asp:Button ID="insertButton" runat="server" OnClick="insertButton_Click" Text="Add" Width="73px" />            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            
            <asp:Button ID="EditButton" runat="server" Text="Edit" OnClick="updateButton_Click" />            
        <br />
    
    </div>
    </form>
</body>
</html>
