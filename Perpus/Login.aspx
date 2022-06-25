<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Perpus.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no" >
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
     <link href="additional-file/css/global.css" rel="stylesheet" />
</head>

<body>
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-12"></div>
            <div class="col-md-4 col-sm-12 mt-5">
                <form class="container-form font-weight-bold" runat="server">
                    <h2 class="text-center mb-3">Login</h2>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Username</label>
                      <asp:TextBox ID="TxtUser" CssClass="form-control"  placeholder="Username" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                      <asp:TextBox ID="TxtPassword" TextMode="Password" CssClass="form-control"  placeholder="Password" runat="server"></asp:TextBox>
                  </div>
                    <asp:Button ID="BtnLogin" CssClass="btn btn-primary btn-block mt-3" OnClick="BtnLogin_Click" runat="server" Text="Login" />
                    <asp:Label ID="LblWarning" CssClass="text-danger" runat="server" Text=""></asp:Label>
                </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
        </div>
    </div>

    <script src="bootstrap4/js/bootstrap.min.js"></script>
</body>
</html>