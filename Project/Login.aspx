<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        form {
            border: 3px solid #f1f1f1;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            text-align: center;
        }

        button:hover {
            opacity: 0.8;
        }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 10%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <h2>Login Form</h2>

    <form runat="server">
        <div class="imgcontainer">
            <img src="Images/img_avatar2.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <asp:Label runat="server" ID="lblUserName" Text="User Name" ForeColor="black"></asp:Label>
            <asp:TextBox runat="server" ID="txtUserName" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredUserNameValidator" runat="server" ControlToValidate="txtUserName" ErrorMessage="User Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label runat="server" ID="lblPassword" Text="Password" ForeColor="black"></asp:Label>
            <asp:TextBox runat="server" ID="txtPassword" MaxLength="50" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredPasswordValidator" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button class="button" runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" />
        </div>

        <div class="container" style="background-color: #f1f1f1">
            <a href=" Home.aspx">Back To Home</a>
            <span class="psw">New?  <a href="Register.aspx">Sign-Up</a></span>            
        </div>
    </form>
</body>
</html>
