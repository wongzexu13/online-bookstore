<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="FinalProject.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Neucha&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section>
                <div class="container-fluid text-center">
                    <img class="w-25 mt-2" src="Images/logo.png" alt="">
                    <div class="card w-50 mx-auto m-3" style="padding: 100px;">
                        <form>
                            <h1 class="title text-center text-uppercase mb-5" style="color: #726a95;">sign up</h1>
                            <div class="mb-3 text-start">
                                <label class="form-label text-capitalize">Email address</label>
                                <%--<input type="email" class="form-control" placeholder="name@example.com">--%>
                                <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email" Placeholder="name@example.com"></asp:TextBox>
                            </div>
                            <div class="mb-3 text-start">
                                <label class="form-label text-capitalize">Password</label>
                                <%--<input type="password" class="form-control" id="password" placeholder="Password">--%>
                                <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Password"></asp:TextBox>
                            </div>
                              <div class="mb-3 text-start">
                                <label class="form-label text-capitalize">Password</label>
                                <%--<input type="password" class="form-control" id="confirmPassword" placeholder="Confirm Password"><br />--%>
                                   <asp:TextBox ID="confirmPassword" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Confirm Password"></asp:TextBox>
                            </div>
                            <asp:Button runat="server" Text="sign up" class="btn text-light text-capitalize" style="background-color: #726a95;" OnClick="SignUp_Click"/>
                            <asp:Label ID="feedback" runat="server" Text="Error Message" Visible="false"></asp:Label>
                            <p class="mt-3 text-muted">© 2022 XBook, Inc. All rights reserved.</p>
                        </form>
                    </div>
                </div>
            </section>
        </div>
    </form>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Neucha&display=swap');

        * {
            margin: 0;
            padding: 0;
            font-family: 'Neucha', cursive;
        }

        .title {
            text-align: center;
            text-transform: capitalize;
            margin: 10px 0;
            position: relative;
        }

            .title::after {
                content: "";
                position: absolute;
                width: 20%;
                height: 2px;
                background-image: linear-gradient(to left, transparent 5%, #726a95);
                bottom: -10px;
                left: 50%;
                transform: translate(-50%);
            }

        .btn:hover {
            transform: scale(1.1);
            color: #625B80;
        }
    </style>
</body>
</html>
