<%@ Page Title="" Language="C#" MasterPageFile="~/DBM.Master" AutoEventWireup="true" CodeBehind="newJob.aspx.cs" Inherits="Jobportal.newJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form method="POST" id="newJob_form">

    <div class="pcoded-inner-content">
        <div class="align-align-self-end">
            <asp:Label ID="lblMsg" runat="server" Visible="true"></asp:Label>
            <%--<asp:Label runat="server" Text="Label" ID="text"></asp:Label>--%>
        </div>
            

        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                    <div class="row">
                        </div>
                    
                        <!-- Data widget start -->
                        <div class="col-md-12 col-xl-6">
                            <div class="card project-task">
                                <div class="card-header">
                                    <div class="card-header-Middle ">
                                        <h5>Category</h5>
                                    </div>
                                    
                                </div>
                                <div class="card-block p-b-10">
                                    <div>
                                        <div class="form-group">
                                            <label for="categoryName">Company Name</label>
                                            <div>                                                
                                                <asp:TextBox ID="companyName" runat="server" CssClass="form-control" placeholder="Enter Company Name" required></asp:TextBox>
                                                
                                            </div>
                                        </div>
                                        <div class="card-block p-b-10">
                                    <div>
                                        <div class="form-group">
                                            <label for="categoryName">Job Title</label>
                                            <div>                                                
                                                <asp:TextBox ID="jobTitle" runat="server" CssClass="form-control" placeholder="Enter Job title" required></asp:TextBox>
                                               
                                            </div>
                                        </div>
                                        <div class="card-block p-b-10">
                                    <div>
                                        <div class="form-group">
                                            <label for="categoryName">Apply link</label>
                                            <div>                                                
                                                <asp:TextBox ID="applyLink" runat="server" CssClass="form-control" placeholder="Enter apply link" required></asp:TextBox>
                                                
                                            </div>
                                        </div>
                                <div class="card-block p-b-10">
                                    <div>
                                        <div class="form-group">
                                            <label for="categoryName">Discription</label>
                                            <div>     
                                                <textarea id="txtDescription" cols="80" rows="4" runat="server" CssClass="form-control" placeholder="Enter Discription" required></textarea>                                          
                                               
                                             
                                            </div>
                                        </div>

                                        <div class="card-block p-b-50">
                                           Last Date to apply:<input type="date" id="inputDate" runat="server"  size="30"  class="form-control"  min="2023-01-1" max="2030-01-01" />



                                </div>
                                        </div>
                                            </div>
                                
                                
                                        
                                        <div class="form-group">
                                            <label for="categoryImage">Company Image</label>
                                            <div>                                                
                                               <%-- <asp:FileUpload ID="companyImage" runat="server" CssClass="form-control" onchange="ImagePreview(this)"  accept=".png, .jpg, .jpeg"></asp:FileUpload>--%>
                                                <asp:TextBox ID="companyImage" runat="server" CssClass="form-control" placeholder="Enter image URL" required></asp:TextBox>
                                            </div>
                                        </div>
                                             <div class="pb-5 ">
                                            <asp:Button ID="btnPost" runat="server" CssClass="btn-primary " Text="Post" OnClick="btnPost_Click" />
                                            
                                            
                                        </div>


                                        <div>
                                            <asp:Image ID="imgCategory" runat="server" CssClass="img-thumbnail"/>
                                        </div>

                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        

                            </div>
                        </div>
                     

                    </div>
                </div>
            </div>

            <div id="styleSelector">
                <br />
                <br />
                <br />
                
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </div>
    
    </div>


        </form>

    
   
</asp:Content>
