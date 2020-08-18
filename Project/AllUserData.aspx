<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AllUserData.aspx.cs" Inherits="Project.AllUserData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <table id="tblProfile" runat="server" align="center" style="height: 100px; width: 1000px;">
        <tr>
            <td>
                <asp:GridView  runat="server" ID="GridAllUser" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="User Name" />
                        <asp:BoundField DataField="EmailId" HeaderText="Email Id" />
                        <asp:BoundField DataField="PhoneNo" HeaderText="Phone No" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Hobbies" HeaderText="Hobbies" />
                        <asp:BoundField DataField="City" HeaderText="City" />
                        <asp:ImageField HeaderText="Image" ItemStyle-Width="50px" ItemStyle-Height="50px" ControlStyle-Width="100" ControlStyle-Height = "100"  DataImageUrlField="ImagePath" />
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
            </td>
        </tr>
    </table>
</asp:Content>
