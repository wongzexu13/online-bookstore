<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FinalProject.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluid">
            <h1 class="title text-center text-uppercase my-5" style="color: #726a95;">Contact Us</h1>
            <div class="mx-auto w-50" align="justify">
                <form class="needs-validation" novalidate>
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">First name</label>
                            <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                        </div>

                        <div class="col-sm-6">
                            <label for="lastName" class="form-label">Last name</label>
                            <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                        </div>


                        <div class="col-12">
                            <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="email" placeholder="you@example.com">
                        </div>

                        <div class="col-12">
                            <label for="address" class="form-label">Phone Number</label>
                            <input type="text" class="form-control" id="phone" required>
                        </div>

                        <div class="col-12">
                            <label for="address" class="form-label">Message</label>
                            <textarea class="form-control" aria-label="With textarea"></textarea>
                        </div>

                        <hr class="my-4">

                            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn text-light" style="background-color: #726a95;" OnClick="Submit"/>
                    </div>
                </form>
            </div>
        </div>
    </section>
</asp:Content>
