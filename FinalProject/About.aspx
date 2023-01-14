<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FinalProject.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ****#ABOUT US#**** -->
    <style>
        body {
            overflow-x: hidden;
        }

        .auto-style1 {
            width: 100%;
            height: 80vh;
            margin-bottom: 0px;
        }

        .background-image {
            background-image: url(Images/background.jpg);
            width: 100%;
            height: 80vh;
            background-size: cover;
        }

        .text h2 {
            position: relative;
            left: 80px;
            top: 200px;
            font-size: 50px;
            color: #726a95;
        }

        .learn-more {
            position: relative;
            top: 220px;
            left: 80px;
            color: #726a95;
        }

        .title-history {
            font-weight: 500;
            font-size: 40px;
            text-decoration: none;
            color: #726a95;
        }

        .content {
            width: 60%;
            transform: translate(10%,10%);
            letter-spacing: 0.8px;
        }

        .team-row {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            padding: 40px 0;
        }

        .member {
            flex: 1 1 250px;
            margin: 20px;
            text-align: center;
            padding: 20px 10px;
            cursor: pointer;
            max-width: 300px;
            transition: all 0.3s;
        }

            .member:hover {
                box-shadow: 0 10px 20px rgba(0,0,0,0.1);
                transform: translateY(-20px);
            }

            .member img {
                display: block;
                width: 150px;
                height: 150px;
                object-fit: cover;
                border: 4px solid #726a95;
                border-radius: 50%;
                margin: 0 auto;
            }

            .member h2 {
                text-transform: uppercase;
                font-size: 24px;
                color: #726a95;
                margin: 15px 0;
            }

            .member p {
                font-size: 15px;
                color: #838383;
                line-height: 1.6;
            }

        .stars i {
            color: #726a95;
        }
    </style>
    <div class="background-image">
        <div class="text">
            <h2 class="text-uppercase">It's all About Us</h2>
            <a href="#History" class="btn text-light learn-more" style="background-color: #726a95;">Learn More</a>
        </div>
    </div>

    <section id="History">
        <div class="container-fluid py-5">
            <h1 class="title text-center text-uppercase my-5" style="color: #726a95;">Our History</h1>
            <div class="mx-auto w-75" align="justify">
                <p class="lh-lg">
                    Welcome to our online bookstore! We are a team of book lovers and avid readers who have come together to create a space where people from all over the world can find and discover new books.
                    Our online bookstore offers a wide selection of books in various genres, including fiction, non-fiction, children's books, and more. Whether you're looking for the latest bestseller or a classic novel, we have something for everyone.
                    We are committed to providing our customers with a seamless and enjoyable shopping experience. Our website is easy to navigate, and we offer fast and reliable shipping to ensure that you receive your orders in a timely manner.
                    In addition to our extensive selection of books, we also offer a variety of other products, such as bookmarks, book lights, and reading glasses, to help enhance your reading experience.
                    Thank you for choosing our online bookstore. We hope you find something that you love and that you will come back and visit us again soon!<br />
                    <br />
                    <strong>2018:</strong> The idea for an online bookstore is first conceived by a group of book lovers who want to create a space where people can easily discover and purchase books from the comfort of their own homes.
                    <br />
                    <strong>2019:</strong> The team begins working on the website and building a comprehensive database of books.
                    <br />
                    <strong>2020:</strong> The online bookstore officially launches, featuring a wide selection of books in various genres.
                    <br />
                    <strong>2021:</strong> The online bookstore becomes a popular destination for book lovers, and the team expands to meet the growing demand for their services.
                    <br />
                    <strong>2022:</strong> The online bookstore adds a variety of other reading-related products, such as bookmarks and reading glasses, to its inventory.
                </p>
            </div>
        </div>
    </section>

    <section>
        <div class="container-fluid py-5">
            <h1 class="title text-center text-uppercase my-5" style="color: #726a95;">Client Review</h1>
            <div class="team-row">
                <div class="member">
                    <img src="Images/person4.jpg" alt="">
                    <h2>Chloe</h2>
                    <p>The ordering process was quick and easy, and the product arrived within the promised delivery time.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
                <div class="member">
                    <img src="Images/person3.jpg" alt="">
                    <h2>Isabella</h2>
                    <p>The product was exactly as described on the website, and the quality is excellent. Fast delievry.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                </div>
                <div class="member">
                    <img src="Images/person5.jpg" alt="">
                    <h2>Ava</h2>
                    <p>Overall, I had a great experience shopping on this website and I will definitely be a returning customer in the future. </p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                </div>
                <div class="member">
                    <img src="Images/person6.jpg" alt="">
                    <h2>chris jones</h2>
                    <p>I highly recommend the books and the online store. The customer service is good and the good manner seller.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
