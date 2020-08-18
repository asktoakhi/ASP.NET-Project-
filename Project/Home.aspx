<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Slideshow container */
        .slideshow-container {
            max-width: 1350px;
            position: relative;
            margin: auto;
        }

        /* Hide the images by default */
        .mySlides {
            display: none;
        }

        /* Next & previous buttons */
        .prev,
        .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            margin-top: -22px;
            padding: 16px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

            /* On hover, add a black background color with a little bit see-through */
            .prev:hover,
            .next:hover {
                background-color: rgba(0, 0, 0, 0.8);
            }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

            .active,
            .dot:hover {
                background-color: #717171;
            }

        /* Fading animation */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @-webkit-keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        @keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        /* gallery */
        div.gallery {
            margin: 5px;
            border: 1px solid #ccc;
            float: left;
            width: 434px;
        }

            div.gallery:hover {
                border: 1px solid #777;
            }

            div.gallery img {
                width: 100%;
                height: auto;
            }

        div.desc {
            padding: 15px;
            text-align: center;
            font-family: "Comic Sans MS", cursive, sans-serif;
        }

        /*About*/
        .about {
            color: #d17d1c;
            font-size: 20px;
        }

        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Float four columns side by side */
        .column {
            float: left;
            /*width: -webkit-fill-available;*/
            width: 100%;
            padding: 10px 20px;
        }

        /* Remove extra left and right margins, due to padding */
        .row {
            margin: 0 -5px;
        }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

        /* Responsive columns */
        @media screen and (max-width: 600px) {
            .column {
                width: 100%;
                display: block;
                margin-bottom: 20px;
            }
        }

        /* Style the counter cards */
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            padding: 16px;
            text-align: center;
            background-color: #f1f1f1;
        }

        /* Footer */
        .footer {
            padding: 20px;
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="slideshow-container">

        <!-- Full-width images with number and caption text -->
        <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
            <img src="Images/img1.jpg" style="width: 100%">
            <div class="text">One</div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2 / 3</div>
            <img src="Images/img2.jpg" style="width: 100%">
            <div class="text">Two</div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">3 / 3</div>
            <img src="Images/img3.jpg" style="width: 100%">
            <div class="text">Three</div>
        </div>

        <!-- Next and previous buttons -->
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
    <br>

    <!-- The dots/circles -->
    <div style="text-align: center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>

    <!--gallery Contant-->
    <div class="content">
        <h1 style="text-align: center;">Gallery</h1>
        <div class="gallery">
            <a target="_blank" href="Images/gallery1.jpg">
                <img src="Images/gall1.jpg" alt="Car" width="600" height="400">
            </a>
            <div class="desc">White sports coupe</div>
        </div>

        <div class="gallery">
            <a target="_blank" href="Images/gallery2.jpg">
                <img src="Images/gall2.jpg" alt="Car" width="600" height="400">
            </a>
            <div class="desc">Red car in bus</div>
        </div>

        <div class="gallery">
            <a target="_blank" href="Images/gallery3.jpg">
                <img src="Images/gall3.jpg" alt="Car" width="600" height="400">
            </a>
            <div class="desc">Parked white coupe during night</div>
        </div>
    </div>

    <!--About -->
    <div class="row">
        <h2 style="text-align: center;">About</h2>
        <div class="column">
            <div class="card">
                <div class="desc about">A car (or automobile) is a wheeled motor vehicle used for transportation. Most definitions of cars say that they run primarily on roads, seat one to eight people, have four tires, and mainly transport people rather than goods.</div>

                <div class="desc about">Cars came into global use during the 20th century, and developed economies depend on them. The year 1886 is regarded as the birth year of the modern car when German inventor Karl Benz patented his Benz Patent-Motorwagen. Cars became widely available in the early 20th century. One of the first cars accessible to the masses was the 1908 Model T, an American car manufactured by the Ford Motor Company. Cars were rapidly adopted in the US, where they replaced animal-drawn carriages and carts, but took much longer to be accepted in Western Europe and other parts of the world.</div>

                <div class="desc about">Cars have controls for driving, parking, passenger comfort, and a variety of lights. Over the decades, additional features and controls have been added to vehicles, making them progressively more complex, but also more reliable and easier to operate.[citation needed] These include rear-reversing cameras, air conditioning, navigation systems, and in-car entertainment. Most cars in use in the 2010s are propelled by an internal combustion engine, fueled by the combustion of fossil fuels. Electric cars, which were invented early in the history of the car, became commercially available in the 2000s and are predicted to cost less to buy than gasoline cars before 2025. The transition from fossil fuels to electric cars features prominently in most climate change mitigation scenarios.</div>

            </div>
        </div>
        &nbsp;
    </div>

    <div class="footer">
        <h2>Footer</h2>
    </div>

    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>
</asp:Content>
