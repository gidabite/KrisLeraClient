<%@ Page Title="Delivery" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Delivery.aspx.cs" Inherits="CollOfDishClient.Delivery" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12 text-center">
            <p style="font-family:sans-serif; font-size:14pt;">Спасибо за ваш заказ!</p>
        </div>
        <div class="col-md-12 text-center">
            <asp:Label ID="Lbl_dateDelivery" Font-Names="Source Sans Pro" Font-Size="16pt"
                runat="server" ></asp:Label>
        </div>
        <div class="col-md-12 text-center">
            <asp:Button ID="Btn_GoSearch" runat="server" 
                Text="продолжить поиск блюд" CssClass="my-btn btn btn-warning"
                OnClick="Btn_GoSearch_Click"/>
        </div>
    </div>
</asp:Content>
