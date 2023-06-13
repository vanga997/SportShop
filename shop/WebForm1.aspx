<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="shop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>test</title>
    <style type="text/css">
        .content {
            text-align: center;

        }
        body {
            background-color: wheat;
        }
    </style>
</head>
<body>
    <header>
        
            <h1>Магазин спортивных товаров</h1>
        
    </header>
    <form id="form1" runat="server">
        <div сlass="content">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_order" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id_order" HeaderText="id_order" InsertVisible="False" ReadOnly="True" SortExpression="id_order" />
                    <asp:BoundField DataField="count" HeaderText="count" SortExpression="count" />
                    <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                    <asp:BoundField DataField="id_client" HeaderText="id_client" SortExpression="id_client" />
                    <asp:BoundField DataField="id_emp" HeaderText="id_emp" SortExpression="id_emp" />
                    <asp:BoundField DataField="id_prod" HeaderText="id_prod" SortExpression="id_prod" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportshopConnectionString1 %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
