<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BookStore.Client.Register" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đăng Ký</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../CSS/client.css" / rel="stylesheet">
</head>
<body>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <!-- Card đăng ký -->
        <div class="card">
          <div class="card-header text-center">
            <h4>Đăng Ký Tài Khoản</h4>
          </div>
          <div class="card-body">
           <form id="form1" runat="server">
                    <div class="form-group">
                        <label for="txtUsername" class="form-label">Tài Khoản:</label>
                        <div class="input-group">
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Nhập tên tài khoản"></asp:TextBox>
                        </div>
                        <div class="validators">
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server"
                                ControlToValidate="txtUsername"
                                ErrorMessage="*Bắt buộc"
                                CssClass="validator-message"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revUsername" runat="server"
                                ControlToValidate="txtUsername"
                                ErrorMessage="*Ít nhất 5 ký tự"
                                ValidationExpression=".{5,}"
                                CssClass="validator-message"
                                Display="Dynamic">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtPassword" class="form-label">Mật Khẩu:</label>
                        <div class="input-group">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Nhập mật khẩu"></asp:TextBox>
                        </div>
                        <div class="validators">
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                                ControlToValidate="txtPassword"
                                ErrorMessage="*Bắt buộc"
                                CssClass="validator-message"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPassword" runat="server"
                                ControlToValidate="txtPassword"
                                ErrorMessage="*Ít nhất 5 ký tự"
                                ValidationExpression=".{5,}"
                                CssClass="validator-message"
                                Display="Dynamic">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtFullName" class="form-label">Họ Tên:</label>
                        <div class="input-group">
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Nhập họ tên"></asp:TextBox>
                        </div>
                        <div class="validators">
                            <asp:RequiredFieldValidator ID="rfvFullName" runat="server"
                                ControlToValidate="txtFullName"
                                ErrorMessage="*Bắt buộc"
                                CssClass="validator-message"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtEmail" class="form-label">Email:</label>
                        <div class="input-group">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Nhập email"></asp:TextBox>
                        </div>
                        <div class="validators">
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                                ControlToValidate="txtEmail"
                                ErrorMessage="*Bắt buộc"
                                CssClass="validator-message"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                                ControlToValidate="txtEmail"
                                ErrorMessage="*Email không hợp lệ"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                CssClass="validator-message"
                                Display="Dynamic">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtPhone" class="form-label">Số Điện Thoại:</label>
                        <div class="input-group">
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Nhập số điện thoại"></asp:TextBox>
                        </div>
                        <div class="validators">
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                                ControlToValidate="txtPhone"
                                ErrorMessage="*Bắt buộc"
                                CssClass="validator-message"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPhone" runat="server"
                                ControlToValidate="txtPhone"
                                ErrorMessage="*Phải có 10 số"
                                
                                ValidationExpression="^[0-9]{10}$"
                                CssClass="validator-message"
                                Display="Dynamic">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="txtAddress" class="form-label">Địa Chỉ:</label>
                        <div class="input-group">
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Nhập địa chỉ"></asp:TextBox>
                        </div>
                        <div class="validators">
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server"
                                ControlToValidate="txtAddress"
                                ErrorMessage="*Bắt buộc"
                                CssClass="validator-message"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="text-center">
                        <asp:Button ID="btnRegister" runat="server" Text="Đăng Ký" OnClick="DangKy"  
                            CssClass="btn btn-primary w-100 mt-3" />
                    </div>
                </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Thêm Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
