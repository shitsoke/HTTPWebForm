<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('https://images.unsplash.com/photo-1695623803163-f2843be82d50?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover; 
            background-position: center; 
            background-repeat: no-repeat; 
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            max-width: 400px;
            width: 100%;
            text-align: center;
            color: white;
        }

        .login-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.3);
            color: white;
        }

        .login-container input::placeholder {
            color: #ddd;
        }

        .login-container select {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.3);
            color: white;
            appearance: none;
            background-image: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMiAxMiIgd2lkdGg9IjEyIiBoZWlnaHQ9IjEyIj48cGF0aCBkPSJNMS43MzEgNS4zNjJhMSAxIDAgMCAxIDEuNDI1LTEuNDI1TDYgNi41NzdsMi44NDQtMi44NDNhMSAxIDAgMCAxIDEuNDEzIDEuNDEybC00LjUgNC41YTEgMSAwIDAgMS0xLjQxMiAwbC00LjUtNC41MUEgMSAxIDAgMCAxIDEuNzMxIDUuMzYyWiIgZmlsbD0id2hpdGUiLz48L3N2Zz4=');
            background-repeat: no-repeat;
            background-position: right 10px center;
        }

        .login-container select option {
            background-color: #333;
            color: white; 
        }

        .button-style {
            width: 100%;
            padding: 15px;
            background-color: #00aaff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button-style:hover {
            background-color: #0099cc;
        }

        .login-container .footer {
            margin-top: 20px;
            font-size: 14px;
        }

        .login-container .footer a {
            color: #ccc;
            text-decoration: none;
            margin: 0 5px;
        }

        .login-container .footer a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: red;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="login-container">
            <h2>WELCOME</h2>


            <asp:TextBox ID="UsernameTextBox" runat="server" placeholder="Username" />
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" placeholder="Password" />
            <asp:DropDownList ID="RoleDropDown" runat="server">
                <asp:ListItem Text="Select Role" Value="" />
                <asp:ListItem Value="admin">Admin</asp:ListItem>
                <asp:ListItem Value="student">Student</asp:ListItem>
                <asp:ListItem Value="teacher">Teacher</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="button-style" OnClick="LoginButton_Click" />
            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>

</body>
</html>






