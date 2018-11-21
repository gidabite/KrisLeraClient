<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CollOfDishClient._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-12 text-center">
            <div class="title-client">
                <p> COLLOFDISH
            </div>
        </div><!--<div class="main-title">-->
        <div class="col-md-12 text-center">
            <div class="under-title">
                <p>- Find Your Dish -</p>
            </div>
        </div>    
        <div class="col-md-12">
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
        </div>    
        <div class="col-md-12">
            <div class="btn-on-home-page">
            <div class="col-md-6 text-right">
                <asp:Button ID="btnEnter" CssClass="my-btn btn btn-warning" runat="server" Text="ВХОД" OnClick="BtnEnter_Click"/>
            </div>
            <div class="col-md-6 text-left">
                <asp:Button ID="BtnRegistration" runat="server" CssClass="my-btn btn btn-warning" Text="РЕГИСТРАЦИЯ" OnClick="BtnRegistration_Click" />
            </div>
           
        </div>
        </div>           
        
    </div>

</asp:Content>
