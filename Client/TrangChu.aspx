<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Layout.Master" AutoEventWireup="true" CodeFile="~/Client/TrangChu.aspx.cs" Inherits="BookStore.Client.TrangChu" %>
<asp:Content ID="Content" ContentPlaceHolderID="tieude" runat="server">
    Trang chủ
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="danhmuc" runat="server"> 
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="col-6 col-md-3 mb-4">
                <div class="category-card p-3 border" >
                    <div class="category-box mb-2 ">
                        <img src="../img/danhmuc/<%# Eval("image") %>" class="d-block w-100" />
                    </div>
                    <p><%# Eval("name") %></p>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater> 
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="sanpham" runat="server" >
    <div class="col-6 col-md-3 mb-4">
        <div class="p-3 border bg-white">
            <div class="mb-2" style="width: 150px; height: 150px; background-color: #e9ecef; margin: 0 auto;"></div>
            <p>Sách hay 4</p>
            <p class="text-danger">499.000 VNĐ</p>
        </div>
    </div>
</asp:Content>
 <asp:Content ID="Content3" runat="server" ContentPlaceHolderID="phantrang">
     <nav aria-label="Page navigation example">
         <ul class="pagination justify-content-center">
             <li class="page-item disabled">
                 <a class="page-link">Trang trước</a>
             </li>
             <li class="page-item active"><a class="page-link" href="#">1</a></li>
             <li class="page-item"><a class="page-link" href="#">2</a></li>
             <li class="page-item"><a class="page-link" href="#">3</a></li>
             <li class="page-item">
                 <a class="page-link" href="#">Trang Sau</a>
             </li>
         </ul>
     </nav>
 </asp:Content> 



