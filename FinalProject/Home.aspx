<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalProject.WebForm1" MaintainScrollPositionOnPostback="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ****#HOMEPAGE#**** -->
    <section>
        <div class="container-fluid py-5">
            <div class="row flex-lg-row-reverse align-items-center my-3 py-3">
                <div class="col-sm-5 mx-5">
                    <img src="Images/book1.jpg" class="d-block img-fluid mx-auto w-75" alt="Bootstrap Themes" width="700" height="500" loading="lazy">
                </div>
                <div class="col-sm-5 mx-5" align="justify">
                    <h1 class="text-uppercase mb-3" style="color: #726a95;">Book of The Year</h1>
                    <p class="lead">A Promised Land. This beautifully written and powerful book captures Barack Obama's conviction that democracy is not a gift from on high but something founded on empathy and common understanding and built together, day by day.</p>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                        <a href="#Bestsellers" class="btn text-light" style="background-color: #726a95;">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="Bestsellers">
        <div class="container-fluid py-5">
            <h1 class="title text-center text-uppercase my-5" style="color: #726a95;">Bestsellers</h1>
            <div class="row align-items-center my-3 py-3">
                <div class="col-sm-4">
                    <div class="card text-center w-75 m-auto pt-4">
                        <img src="Images/book1.jpg" class="card-img-top w-50 mx-auto"" alt="">
                        <div class="card-body">
                            <%--<h5 class="card-title">A Promised Land</h5>--%>
                            <%--<p class="card-text">RM 80.00</p>--%>
                            <asp:Label ID="bookTitle1" runat="server" Text="A Promised Land" CssClass="card-title h5"></asp:Label><br />
                            <asp:Label ID="Label1" runat="server" Text="RM " CssClass="card-text"></asp:Label>
                            <asp:Label ID="bookPrice1" runat="server" Text="80.00" CssClass="card-text"></asp:Label><br /><br />
                            <asp:Button ID="Button1" runat="server" Text="Add to Cart" class="btn text-light" style="background-color: #726a95;" OnClick="Button1_Click"/>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4"> 
                    <div class="card text-center w-75 m-auto pt-4">
                        <img src="Images/book3.jpg" class="card-img-top w-50 mx-auto"" alt="">
                        <div class="card-body">
                            <%--<h5 class="card-title">When Breath Becomes Air</h5>
                            <p class="card-text">RM 16.50</p>--%>
                            
                            <asp:Label ID="bookTitle2" runat="server" Text="When Breath Becomes Air" CssClass="card-title h5"></asp:Label><br />
                            <asp:Label ID="Label2" runat="server" Text="RM " CssClass="card-text"></asp:Label>
                            <asp:Label ID="bookPrice2" runat="server" Text="16.50" CssClass="card-text"></asp:Label><br /><br />
                            <asp:Button ID="Button2" runat="server" Text="Add to Cart" class="btn text-light" style="background-color: #726a95;" OnClick="Button2_Click"/>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="card text-center w-75 m-auto pt-4">
                        <img src="Images/book4.jpg" class="card-img-top w-50 mx-auto"" alt="">
                        <div class="card-body">
                            <%--<h5 class="card-title">Neither Civil Nor Servant: The Philip Yeo Story</h5>
                            <p class="card-text">RM 38.50</p>--%>
                            
                            <asp:Label ID="bookTitle3" runat="server" Text="Neither Civil Nor Servant: The Philip Yeo Story" CssClass="card-title h5"></asp:Label><br />
                            <asp:Label ID="Label3" runat="server" Text="RM " CssClass="card-text"></asp:Label>
                            <asp:Label ID="bookPrice3" runat="server" Text="38.50" CssClass="card-text"></asp:Label><br /><br />
                            <asp:Button ID="Button3" runat="server" Text="Add to Cart" class="btn text-light" style="background-color: #726a95;" OnClick="Button3_Click"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row align-items-center my-3 py-3">
                <div class="col-sm-4">
                    <div class="card text-center w-75 m-auto pt-4">
                        <img src="Images/book5.jpg" class="card-img-top w-50 mx-auto"" alt="">
                        <div class="card-body">
                            <%--<h5 class="card-title">What's In A Name</h5>
                            <p class="card-text">RM 32.50</p>--%>
                            <asp:Label ID="bookTitle4" runat="server" Text="What Is In A Name" CssClass="card-title h5"></asp:Label><br />
                            <asp:Label ID="Label4" runat="server" Text="RM " CssClass="card-text"></asp:Label>
                            <asp:Label ID="bookPrice4" runat="server" Text="32.50" CssClass="card-text"></asp:Label><br /><br />
                            <asp:Button ID="Button4" runat="server" Text="Add to Cart" class="btn text-light" style="background-color: #726a95;" OnClick="Button4_Click"/>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4"> 
                    <div class="card text-center w-75 m-auto pt-4">
                        <img src="Images/book6.jpg" class="card-img-top w-50 mx-auto"" alt="">
                        <div class="card-body">
                            <%--<h5 class="card-title">The Ride of a Lifetime: Lessons Learned from 15 Years as CEO of the Walt Disney Company</h5>
                            <p class="card-text">RM 32.50</p>--%>
                            <asp:Label ID="bookTitle5" runat="server" Text="The Ride of a Lifetime: Lessons Learned from 15 Years as CEO of the Walt Disney Company" CssClass="card-title h5"></asp:Label><br />
                            <asp:Label ID="Label5" runat="server" Text="RM " CssClass="card-text"></asp:Label>
                            <asp:Label ID="bookPrice5" runat="server" Text="32.50" CssClass="card-text"></asp:Label><br /><br />
                            <asp:Button ID="Button5" runat="server" Text="Add to Cart" class="btn text-light" style="background-color: #726a95;" OnClick="Button5_Click"/>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="card text-center w-75 m-auto pt-4">
                        <img src="Images/book7.jpg" class="card-img-top w-50 mx-auto" alt="">
                        <div class="card-body">
                            <%--<h5 class="card-title">Finding Chika: A Little Girl, an Earthquake, and the Making of a Family</h5>
                            <p class="card-text">RM 18.00</p>--%>
                            <asp:Label ID="bookTitle6" runat="server" Text="Finding Chika: A Little Girl, an Earthquake, and the Making of a Family" CssClass="card-title h5"></asp:Label><br />
                            <asp:Label ID="Label6" runat="server" Text="RM " CssClass="card-text"></asp:Label>
                            <asp:Label ID="bookPrice6" runat="server" Text="18.00" CssClass="card-text"></asp:Label><br /><br />
                            <asp:Button ID="Button6" runat="server" Text="Add to Cart" class="btn text-light" style="background-color: #726a95;" OnClick="Button6_Click"/>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
    </section>
</asp:Content>
