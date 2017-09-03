<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AspWithAdoGridView.aspx.cs" Inherits="DigitalScriptsProject1.AspWithAdoGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">    
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="center-in-bar">
            <h1>
               <i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hospital Information Systems</b></i>
            </h1>
            </div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="HId" runat="server" Text="HId"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSearchByHId" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnHIdSearch" runat="server" Text="Search" OnClick="HIdSearch_Click" />
                    </td>
                 </tr>
            </table>
        </div>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="HId" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" 
            ShowFooter="True" AllowPaging="True" AllowSorting="True" PageSize="5" OnPreRender="GridView3_PreRender">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>                
                <asp:BoundField DataField="HId" HeaderText="HId" ReadOnly="True" SortExpression="HId" InsertVisible="False" />
                <asp:TemplateField HeaderText="HName" SortExpression="HName">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtHName" runat="server" Text='<%# Bind("HName") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvEditHName" runat="server" ErrorMessage="Hospital Name is the required for update"
                             ControlToValidate ="txtHName"  Text="*"  ForeColor="red" ValidationGroup="EditFields">
                         </asp:RequiredFieldValidator> 
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("HName") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtInsertHName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvInsertHName" ErrorMessage="Hospital Name is the required Field"
                             ControlToValidate ="txtInsertHName"  Text="*"  ForeColor="red" ValidationGroup="InsertFields">
                         </asp:RequiredFieldValidator>               
                    </FooterTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="HAdress" SortExpression="HAdress">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtHAddress" runat="server" Text='<%# Bind("HAdress") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("HAdress") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtInsertHAddress" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="HCity" SortExpression="HCity">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtHCity" runat="server" Text='<%# Bind("HCity") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="City is the Required for update " 
                            ControlToValidate ="txtHCity" Text="*"  forecolor="red" ValidationGroup="EditFields">                      
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("HCity") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtInsertHCity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="City is the Required Field " 
                            ControlToValidate ="txtInsertHCity" Text="*"  forecolor="red" ValidationGroup="InsertFields" >                      
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>                    
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="HState" SortExpression="HState">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtHState" runat="server" Text='<%# Bind("HState") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="State is the required for update"
                             ControlToValidate ="txtHState"  Text="*"  forecolor="red"  ValidationGroup="EditFields">
                         </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("HState") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtInsertHState" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" ErrorMessage="State is the required Field"
                             ControlToValidate ="txtInsertHState"  Text="*"  forecolor="red" ValidationGroup="InsertFields" >
                         </asp:RequiredFieldValidator>
                    </FooterTemplate>
                 </asp:TemplateField>
                   
                <asp:TemplateField HeaderText="HPhone" SortExpression="HPhone">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtHPhone" runat="server" Text='<%# Bind("HPhone") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("HPhone") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtInsertHPhone" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" ValidationGroup="EditFields" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick = "return confirm('Are you sure you want to delete this row')" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lnkBtnInsert" ValidationGroup="InsertFields" runat="server" onclick="lnkBtnInsert_Click" Text="Insert"></asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="EditFields" ForeColor="Red" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary2"  ValidationGroup="InsertFields" ForeColor="Red" runat="server" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DigitalScriptsDBConnectionString %>"
            DeleteCommand="DELETE FROM [HospitalDB] WHERE [HId] = @HId"
            InsertCommand="INSERT INTO [HospitalDB] ([HName], [HAdress], [HCity], [HState], [HPhone]) VALUES (@HName, @HAdress, @HCity, @HState, @HPhone)"
            SelectCommand="SELECT * FROM [HospitalDB]"            
            UpdateCommand="UPDATE [HospitalDB] SET [HName] = @HName, [HAdress] = @HAdress, [HCity] = @HCity, [HState] = @HState, [HPhone] = @HPhone WHERE [HId] = @HId">
            <DeleteParameters>
                <asp:Parameter Name="HId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HName" Type="String" />
                <asp:Parameter Name="HAdress" Type="String" />
                <asp:Parameter Name="HCity" Type="String" />
                <asp:Parameter Name="HState" Type="String" />
                <asp:Parameter Name="HPhone" Type="Int64" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HName" Type="String" />
                <asp:Parameter Name="HAdress" Type="String" />
                <asp:Parameter Name="HCity" Type="String" />
                <asp:Parameter Name="HState" Type="String" />
                <asp:Parameter Name="HPhone" Type="Int64" />
                <asp:Parameter Name="HId" Type="Int32" />
            </UpdateParameters>            
        </asp:SqlDataSource>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
    </body>
</html>
