<%@ Page Title="" Language="C#" MasterPageFile="~/DBM.Master" AutoEventWireup="true" CodeBehind="userList.aspx.cs" Inherits="Jobportal.userList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" style="margin-left:20%;margin-top:8%;" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"  Height="284px" Width="800px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="User ID " />
            <asp:BoundField DataField="name" HeaderText="User Name " />
            <asp:BoundField DataField="email" HeaderText="User Email" />
            <asp:BoundField DataField="password" HeaderText="Password" />
            <asp:ButtonField ButtonType="Button" HeaderText="Edit" runat="server"   Text="Edit" />
            <asp:ButtonField ButtonType="Button" HeaderText="Delete" runat="server"  Text="Delete " />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>










</asp:Content>
