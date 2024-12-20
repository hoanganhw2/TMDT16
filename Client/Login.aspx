<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookStore.Client.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Nhập</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../CSS/client.css" rel="stylesheet" />
    
</head>
<body>
     <div class="container">
        <div class="row justify-content-center">
            <div  class="col-12 col-md-8 col-lg-6 login-container">
                <div class="login-form">
                    <h3 class="text-center">Đăng nhập</h3>
                     <asp:Label runat="server" ID="msg" CssClass="alert alert-danger mb-3" Visible="false"> </asp:Label>
                 <form id="form1" runat="server" class="mt-3">    
                    <div class="mb-3">
                <label for="taikhoan" class="form-label">Tài khoản</label>
                <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" Placeholder="Nhập tài khoản của bạn"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Mật khẩu</label>
                <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server" Placeholder="Nhập mật khẩu" ></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Button ID="btnSubmit" CssClass="btn btn-primary" Text="Đăng nhập" OnClick="DangNhap" runat="server" />
            </div>
            <div class="mb-3 text-center">
                <a href="Register.aspx" class="text-decoration-none">Chưa có tài khoản? Đăng ký ngay</a>
            </div>
        
    </form>
                </div>
            </div>
        </div>
    </div>

    
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
