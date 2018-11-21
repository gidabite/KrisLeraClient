<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CollOfDishClient.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Регистрация </h2>
    <div class="row">
        <div class="form-group " style="padding-top: 5%;">
            <label for="usrName" class="col-xs-2 control-label">Имя *</label>
            <div class="col-xs-8">
            <asp:TextBox ID="TxtBox_usrName" placeholder="Введите имя" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="valid_usrName" ControlToValidate="TxtBox_usrName"
                Display="Dynamic">поле пусто</asp:RequiredFieldValidator>
            </div>
         </div>
        <div class="form-group " style="padding-top: 5%;">
            <label for="usrScdName" class="col-xs-2 control-label">Фамилия *</label>
            <div class="col-xs-8">
            <asp:TextBox ID="TxtBox_usrScdName" placeholder="Введите фамилию" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="valid_usrScdName" ControlToValidate="TxtBox_usrScdName"
                Display="Dynamic">Поле пусто</asp:RequiredFieldValidator>
            </div>
         </div>
        <div class="form-group " style="padding-top: 5%;">
            <label for="usrLogin" class="col-xs-2 control-label">Логин *</label>
            <div class="col-xs-8">
            <asp:TextBox ID="TxtBox_usrLogin" placeholder="Введите логин" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="valid_usrLogin" ControlToValidate="TxtBox_usrLogin"
                Display="Dynamic">Поле пусто</asp:RequiredFieldValidator>
            </div>
         </div>
        <div class="form-group " style="padding-top: 5%;">
            <label for="password" class="col-xs-2 control-label">Пароль *</label>
            <div class="col-xs-8">
            <asp:TextBox ID="TxtBox_pass1" placeholder="Введите пароль" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="valid_pass1" ControlToValidate="TxtBox_pass1"
                Display="Dynamic">Поле пусто</asp:RequiredFieldValidator>
            </div>
         </div>
        <div class="form-group " style="padding-top: 5%;">
            <label for="password2" class="col-xs-2 control-label">Повторите пароль *</label>
            <div class="col-xs-8">
            <asp:TextBox ID="TxtBox_pass2" placeholder="Введите пароль еще раз" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="valid_pass2" ControlToValidate="TxtBox_pass2"
                Display="Dynamic">Поле пусто</asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server" ControlToValidate="TxtBox_pass2" 
                ControlToCompare="TxtBox_pass1" Type="String" Display="Dynamic" ID-="valid_compare_pass">Пароли не совпадают!</asp:CompareValidator>
            </div>
         </div>
        <div class="form-group" style="padding-top:5%;">
            <div class="col-xs-offset-2 col-xs-10">
            <asp:Label ID="Lbl_warning" Visible="false" runat="server" Font-Size="14pt"></asp:Label>
            </div>
        </div>
        <div class="form-group" style="padding-top:10%;">
            <div class="col-xs-offset-2 col-xs-10">
            <asp:Button ID="Btn_registration" runat="server" CausesValidation="true" CssClass="my-btn btn btn-warning" Text="зарегистрироваться" OnClick="Btn_registration_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
