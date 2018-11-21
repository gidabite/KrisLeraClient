<%@ Page Title="Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="CollOfDishClient.Order" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Оформление заказа</h2>
    <div class="row">
        <div>
            <h3 style="padding-left:2%;">Адрес доставки</h3>
        </div>
        <div class="form-group " style="padding-top: 5%;">
        <label for="usrTown" class="col-xs-2 control-label">Город *</label>
            <div class="col-xs-6">
            <asp:TextBox ID="TxtBox_usrTown" placeholder="Укажите город" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="valid_usrAdress" ControlToValidate="TxtBox_usrTown"
                Display="Dynamic">поле пусто</asp:RequiredFieldValidator>
            </div>
        </div>
         <div class="form-group " style="padding-top: 5%;">
             <label for="usrStreet" class="col-xs-2 control-label">Улица *</label>
            <div class="col-xs-6">
            <asp:TextBox ID="TxtBox_usrStreet" placeholder="Укажите улицу" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="valid_usrStreet" ControlToValidate="TxtBox_usrStreet"
                Display="Dynamic">поле пусто</asp:RequiredFieldValidator>
            </div>
         </div>
        
        <div class="form-group " style="padding-top: 5%;">
            <label for="usrHouse" class="col-xs-2 control-label">Дом *</label>
            <div class="col-xs-6">
            <asp:TextBox ID="TxtBox_usrHouse" placeholder="Укажите номер дома" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="valid_usrHouse" ControlToValidate="TxtBox_usrHouse"
                Display="Dynamic">поле пусто</asp:RequiredFieldValidator>
            </div>
        </div>
         <div class="form-group " style="padding-top: 5%;">
            <label for="usrFlat" class="col-xs-2 control-label">Квартира *</label>
            <div class="col-xs-6">
            <asp:TextBox ID="TxtBox_usrFlat" placeholder="Укажите номер квартиры" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="valid_usrFlat" ControlToValidate="TxtBox_usrFlat"
                Display="Dynamic">поле пусто</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group " style="padding-top: 5%;">
            <label for="usrComment" class="col-xs-2 control-label">Комментарии</label>
            <div class="col-xs-6">
            <asp:TextBox ID="TxtBox_usrComment" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        </div>
        <div class="form-group" style="padding-top:10%;">
            <div class="col-xs-offset-2 col-xs-8">
            <asp:Button ID="Btn_ConfirmOrder" runat="server" CausesValidation="true" CssClass="my-btn btn btn-warning" 
                Text="перейти к оплате" OnClick="Btn_ConfirmOrder_Click"/>
            </div>
        </div>
        

        
        
    </div>
    
</asp:Content>
