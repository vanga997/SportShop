<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auth.aspx.cs" Inherits="shop.Auth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Авторизация</title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 276px;
            font-family: 'Microsoft JhengHei';
        }
        .auto-style9 {
            width: 139%;
            height: 39px;
        }
        .container {
            width: 100%;
            max-width: 100%;
            //padding: 0 15px;
            //margin: 0 auto;
            font-family: 'Microsoft YaHei';
            font-size: 22pt;
            text-align:center;
            background-color:wheat;
            flex: 1 0 auto;
        }
        .footer {
            
            background-color:wheat;
            font-family: 'Microsoft YaHei';
            font-size: 18pt;
            width: 100%;
            font-style: italic;
            grid-row-start: 2;
            grid-row-end: 3;

        }
        .h2 {
            color:black;
        }
        html {
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;

        }
        body {
            min-height: 100%;
            display: grid;
            grid-template-rows: 1fr auto;
        }
       
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            height: 45px;
        }
       
    </style>
</head>
<body style="background-color: chocolate">
    <form id="form1" runat="server">
        
    <header>
        <div class="container">
            <p>
                <h1>Магазин спортивных товаров</h1>
            <asp:Label ID="Label3" runat="server" Text="Войдите в систему"></asp:Label>
            </p>
        </div>

    </header>
     <div class="">
        <table class="auto-style2" style="text-align: center; font-family: 'Microsoft YaHei'; font-size: 20pt" >
            <tr>
                <td class="auto-style11" style="background-color: chocolate">
                    <asp:Label ID="Label1" runat="server" Text="Логин"></asp:Label>
                    <asp:TextBox ID="login_text" runat="server" Width="160px" Height="33px" BackColor="#FFFFCC" BorderStyle="Ridge"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style12" style="background-color: chocolate">
                    <asp:Label ID="Label2" runat="server" Text="Пароль"></asp:Label>
                    <asp:TextBox ID="password_text" runat="server" Width="155px" Height="32px" BackColor="#FFFFCC" BorderColor="#003300" BorderStyle="Ridge"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: chocolate">
                    <asp:Button ID="btn_enter" runat="server" Height="44px" OnClick="btn_enter_Click" Text="Войти" Width="100px" BackColor="#FFFFCC" BorderStyle="Ridge" Font-Bold="True" Font-Names="Microsoft YaHei" />
                </td>
            </tr>
        </table>
      </div>
    </form>

    <footer class="footer">
        <p>
            <h class="h2">2023. Copyright</h>
        </p>
    </footer>
</body>
</html>
