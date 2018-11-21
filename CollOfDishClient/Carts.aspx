<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Carts.aspx.cs" Inherits="CollOfDishClient.Carts" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Ингридиенты</h2>
    <div class="row">
        <div class="col-md -12" style="padding-top:2%; padding-left:2%;">
            <asp:Label ID="Lbl_dishName" runat="server" Font-Names="Source Sans Pro" Font-Size="16pt" ></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:Table runat="server" ID="Tbl_Carts"
                BackColor="White"
                Font-Names="Source Sans Pro" Font-Size="16pt"
                CellPadding="15" CellSpacing="10"
                CssClass="table">
               <asp:TableHeaderRow ID="TblHdr_Carts" runat="server">
                </asp:TableHeaderRow> 
            </asp:Table>
        </div>
        <div class="col-md-12" style="padding-top:3%;">
            <p style="font-family:sans-serif; font-size:16pt;">Выберите понравившийся набор продуктов:</p>
        </div>
    </div>
        <asp:RadioButtonList runat="server" Font-Names="Source Sans Pro" Font-Size="16pt" ID="Rbl_listOfCarts" Visible="true">
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="valid_radiobuttonList" runat="server"
            ControlToValidate="Rbl_listOfCarts" Display="Dynamic">Укажите номер корзины</asp:RequiredFieldValidator>
        <div class="col-md-12 text-center">
            <asp:Button ID="Btn_Order" CssClass="my-btn btn btn-warning" 
                Text="оформить заказ" OnClick="Btn_Order_Click" runat="server" />
        </div>
</asp:Content>
