<%@ Page Title="Enter" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EnterPage.aspx.cs" Inherits="CollOfDishClient.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="main-title">
            <div class="title-client">
                <p> COLLOFDISH
            </div>
            <div class="under-title">
                <p>- Find Your Dish -</p>
            </div>
            
        </div>
        <div class="galary">
            
            <div class="col-md-3">
                <img src="Source/Images/348s.jpg" class="img-responsive" alt="Responsive image"/>
            </div>
            <div class="col-md-3">
                <img src="Source/Images/f4e19f8554.jpg" class="img-responsive"  alt="Responsive image"/>
            </div>
            <div class="col-md-3">
                <img src="Source/Images/212783-one-eyeland-roasted_chicken_slices-by-greg-stroube.jpg" class="img-responsive"  alt="Responsive image"/>
            </div>
            <div class="col-md-3">
                <img src="Source/Images/2.jpg" class="img-responsive"  alt="Responsive image" />
            </div>                   
        </div>

        <div style="padding-top:25%; padding-left:25%; ">
           
                <div class="form-group text-center" style="padding-top: 3%;">
                    <label for="usr" class="col-xs-2 control-label">Логин:</label>
                    <div class="col-xs-6">
                        <asp:TextBox ID="TxtBox_login" placeholder="Введите логин" runat="server" CssClass="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="valid_login" ControlToValidate="TxtBox_login"
                        Display="Dynamic">Поле пусто</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group text-center" style="padding-top:8%;">
                    <label for="inputPassword" class="col-xs-2 control-label">Пароль:</label>
                    <div class="col-xs-6">
                    <asp:TextBox ID="TxtBox_password" runat="server" CssClass="form-control" placeholder="Введите пароль" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="valid_pass" ControlToValidate="TxtBox_password"
                        Display="Dynamic">Поле пусто</asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <div class="form-group" style="padding-top:10%;">
                    <div class="col-xs-offset-3 col-xs-10">
                        <asp:Button ID="Btn_login" runat="server" CausesValidation="true" CssClass="my-btn btn btn-warning" Text="войти" OnClick="Btn_login_Click"/>
                    </div>
                </div>
                <div class="form-group" style="padding-top:3%;">
                    <div class="col-xs-offset-3 col-xs-10">
                        <asp:Label ID="Lbl_warning" Visible="false" runat="server"></asp:Label>
                    </div>
                </div>
        </div>
        
    </div>
   
</asp:Content>
