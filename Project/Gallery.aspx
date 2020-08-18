<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Project.Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    /* Header/Logo Title */
    /*.header {
        padding: 15px;
        text-align: center;
        background: #d17d1c;
        color: white;
        font-size: 20px;
    }*/

    /* gallery */
        div.gallery {
            margin: 5px;
            border: 1px solid #ccc;
            float: left;
            width: 430px;
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
    /* Footer */
    .footer {
        padding: 20px;
        text-align: center;        
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

        <div class="gallery">
            <a target="_blank" href="Images/gallery4.jpg">
                <img src="Images/gall4.jpg" alt="Car" width="600" height="400">
            </a>
            <div class="desc">Photo of black lamborghini</div>
        </div>

        <div class="gallery">
            <a target="_blank" href="Images/gallery5.jpg">
                <img src="Images/gallery5.jpg" alt="Car" width="600" height="400">
            </a>
            <div class="desc">Silver mclaren gray concrete road</div>
        </div>

        <div class="gallery">
            <a target="_blank" href="Images/gallery6.jpg">
                <img src="Images/gallery6.jpg" alt="Car" width="600" height="400">
            </a>
            <div class="desc">Black sedan</div>
        </div>

        <div class="gallery">
            <a target="_blank" href="Images/gallery7.jpg">
                <img src="Images/gallery7.jpg" alt="Car" width="600" height="400">
            </a>
            <div class="desc">Grey ford focus hatchback</div>
        </div>

        <div class="gallery">
            <a target="_blank" href="Images/gallery8.jpg">
                <img src="Images/gallery8.jpg" alt="Car" width="600" height="400">
            </a>
            <div class="desc">Black dodge challenger coupe</div>
        </div>

        <div class="gallery">
            <a target="_blank" href="Images/gallery9.jpg">
                <img src="Images/gallery9.jpg" alt="Car" width="600" height="400">
            </a>
            <div class="desc">Car luxury mercedes design</div>
        </div>

    </div>

    <div class="footer">
        <h2>Footer</h2>
    </div>
</asp:Content>
