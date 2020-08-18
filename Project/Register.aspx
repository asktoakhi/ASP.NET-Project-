<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /*body {
            background-image: url(Images/BlackCar.jpg);
        }*/
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
    <h2>Registration Form</h2>

    <form runat="server">
        <div class="imgcontainer">
            <img src="Images/img_avatar2.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <asp:Label runat="server" ID="lblUserName" Text="User Name" ForeColor="black"></asp:Label>
            <asp:TextBox runat="server" ID="txtUserName" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredUserNameValidator" runat="server" ControlToValidate="txtUserName" ErrorMessage="User Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label runat="server" ID="lblEmailId" Text="Email Id" ForeColor="black"></asp:Label>
            <asp:TextBox runat="server" ID="txtEmailId" MaxLength="100"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredEmailIdValidator" runat="server" ControlToValidate="txtEmailId" ErrorMessage="Email Id Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularEmailIdValidator" runat="server" ControlToValidate="txtEmailId" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
            <br />
            <asp:Label runat="server" ID="lblPhoneNo" Text="Phone No" ForeColor="black"></asp:Label>
            <asp:TextBox runat="server" ID="txtPhoneNo" MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredPhoneNoValidator" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Phone No Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label runat="server" ID="lblPassword" Text="Password" ForeColor="black"></asp:Label>
            <asp:TextBox runat="server" ID="txtPassword" MaxLength="50" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredPasswordValidator" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label runat="server" ID="lblGender" Text="Gender" ForeColor="black"></asp:Label>
            <asp:RadioButtonList runat="server" ID="rdGender" RepeatDirection="Horizontal" ForeColor="black">
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredGenderValidator" runat="server" ControlToValidate="rdGender" ErrorMessage="Gender Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <asp:Label runat="server" ID="lblHobbies" Text="Hobbies" ForeColor="black"></asp:Label>
            <asp:CheckBox runat="server" ID="chkMusic" ForeColor="black" Text="Music" />
            <asp:CheckBox runat="server" ID="chkDancing" ForeColor="black" Text="Dancing" />
            <asp:CheckBox runat="server" ID="chkTravelling" ForeColor="black" Text="Travelling" /> <br />
            <br />

            <asp:Label runat="server" ID="lblCity" Text="City" ForeColor="black"></asp:Label>

            <asp:DropDownList ID="ddlCity" runat="server">
                <asp:ListItem Value="">Select</asp:ListItem>
                <asp:ListItem Value="Toronto">Toronto</asp:ListItem>
                <asp:ListItem Value="Montreal">Montreal</asp:ListItem>
                <asp:ListItem Value="Calgary">Calgary</asp:ListItem>
                <asp:ListItem Value="Ottawa">Ottawa</asp:ListItem>
                <asp:ListItem Value="Edmonton">Edmonton</asp:ListItem>
            </asp:DropDownList>
            <br />

            <asp:RequiredFieldValidator ID="RequiredCityValidator" runat="server" ControlToValidate="ddlCity" ErrorMessage="City Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <asp:Label runat="server" ID="lblImage" Text="Upload Image" ForeColor="black"></asp:Label>
            <asp:FileUpload runat="server" ID="fileImage" ForeColor="black" />
            <asp:RequiredFieldValidator ID="RequiredfileImageValidator" runat="server" ControlToValidate="fileImage" ErrorMessage="Image Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <asp:Button runat="server" class="button" ID="btnRegister" Text="Register" OnClick="btnRegister_Click" />

        </div>

        <div class="container" style="background-color: #f1f1f1">
            <a href=" Home.aspx">Back To Home</a>
            <span class="psw">Already Account?<a href="Login.aspx">Login</a></span>
        </div>
    </form>
    
</body>
</html>
