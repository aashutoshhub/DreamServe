<%@ Page Title="" Language="C#" MasterPageFile="~/DBM.Master" AutoEventWireup="true" CodeBehind="viewJob.aspx.cs" Inherits="Jobportal.viewJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   


  <div class="d-flex justify-content-center text-justify .small " >
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" style="margin-left:28%; margin-top:8%; margin-right:20%" AutoGenerateColumns="False" CellPadding="1" ForeColor="#333333" GridLines="None"  Height="400px" Width="80%">
        <AlternatingRowStyle BackColor="White" />
        <Columns >
            <asp:BoundField DataField="jobID" HeaderText="Job_ID" />
            <asp:BoundField DataField="company_name" HeaderText="Company Name " />
            <asp:BoundField DataField="job_title" HeaderText="Job Title" />
            <asp:BoundField DataField="apply_link" HeaderText="Apply Link " />
            <asp:BoundField DataField="description" HeaderText="Description" />
            <asp:BoundField DataField="last_date" HeaderText="Last Date " />
            <asp:BoundField DataField="company_image" HeaderText="Company Image URL" />
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

      </div>


  



</asp:Content>
