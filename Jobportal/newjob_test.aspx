<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newjob_test.aspx.cs" Inherits="Jobportal.newjob_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
  
    <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="True" Width="100%"  ViewStateMode="Enabled">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="jobID" HeaderText="Job_ID" />
            <asp:BoundField DataField="company_name" HeaderText="Company Name " />
            <asp:BoundField DataField="job_title" HeaderText="Job Title" />
            <asp:BoundField DataField="apply_link" HeaderText="Apply Link " />
            <asp:BoundField DataField="description" HeaderText="Description" />
            <asp:BoundField DataField="last_date" HeaderText="Last Date " />
            <asp:ImageField DataImageUrlFormatString="company_image" HeaderText="Company Image">
            </asp:ImageField>
            <asp:ButtonField ButtonType="Button" HeaderText="Edit" Text="Edit" />
            <asp:ButtonField ButtonType="Button" HeaderText="Delete" Text="Delete " />
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

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            Lablekdkflksdjfklsdfns</div>
    <p>
        sdfsaiudfjhskldfjnkls</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView2" runat="server" Visible="true" ViewStateMode="Enabled">
            </asp:GridView>
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
