<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MeliSample.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MercadoGistics</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 80%; text-align: center; margin-left: 10%">
        <div style="height: 500px; font-size: 96px; color: #3E52A1">
            <label>
                MercadoGistics
            </label>
            <br />
            <img src="assets/logo.png" height="300px" width="300px" />
        </div>
        <asp:Button ID="Button1" class="btn large btn-primary" runat="server" OnClick="LoginClicked"
            Text="Ingresar" Width="300px" Height="50px" Font-Size="30px" />
    </div>
    </form>
</body>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</html>


