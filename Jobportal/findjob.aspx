<%@ Page Title="" Language="C#" MasterPageFile="~/headFoot.Master" AutoEventWireup="true" CodeBehind="findjob.aspx.cs" Inherits="Jobportal.findjob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     
    <main>

        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider section-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/about1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Get your job</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End -->


        <!-- Job List Area Start -->






         <div class="row justify-content-center">
                    <div class="col-xl-10">
                        <!-- single-job-content -->

                        <asp:Repeater ID="Repeater1" runat="server" >
                            <ItemTemplate> 
                        <div class="single-job-items mb-30" >
                            <div class="job-items">

                                <div class="company-img">
                                    <a href='<%# Eval("apply_link") %>' target="_blank">
                                   
                                     <asp:Image ID="Image1"   runat="server" Height="214px" Width="157px"
                                        
                                         ImageUrl = '<%# Eval("company_image") %>' 

                                        />
                                
                                </div>

                                <div class="job-tittle">
                                    <a href='<%# Eval("apply_link") %>' target="_blank"><h4><%# Eval("job_title") %></h4></a>
                                    <ul>
                                        <li><%# Eval("company_name") %></li>
                                        <li><%# Eval("description") %></li>
                                        <li><%# Eval("last_date") %> </li>
                                    </ul>
                                </div>

                            </div>
                            <div class="items-link f-right">
                                &nbsp;<a href='<%# Eval("apply_link") %>' target="_blank"> Apply Link</a>
                                <span>7 hours ago</span>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>

                </div>
                                
         </div>
        
    </main>
</asp:Content>
