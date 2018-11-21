<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="CollOfDishClient.SearchPage" %>

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
            <div class="col-md-9" >
            <div class="form-inline">
                
                <div class="form-group" style="padding-top: 3%; padding-right:0; width:87%;">
                    <label  class="col-xs-6 control-label" for="search" style="width:auto; font-size:18pt;">Поиск блюд <span class = "glyphicon glyphicon-search" style="padding-top:3%;"></span>:</label>
                    <asp:TextBox ID="TxtBox_search"  placeholder="Введите название блюда" runat="server"
                    CssClass="txt-search input-lg"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="valid_search" ControlToValidate="TxtBox_search"
                Display="Dynamic">пустой запрос</asp:RequiredFieldValidator>
                </div>
                <asp:Button ID="Btn_search" runat="server" CausesValidation="true" CssClass="btn-search btn btn-warning"
                Text="найти" OnClick="Btn_search_Click" />
            </div>
            
            </div>
            <div class="col-md-3">
            <div class="row" style="padding-top:3%;">
                <div class="col-md-4" style="padding-top:3%;">
                    <img src="Source/Images/user-icon-png-pnglogocom.png" class="img-responsive" alt="Responsive Image"/> 
                </div>
                <div class="col-md-4" style="padding-top:6%;">
                  <asp:Label runat="server" ID="Lbl_usrName" CssClass="lable-user" Visible="false"></asp:Label>  
                </div>
            </div>
        </div>
        </div>
        
            
        
        <div class="col-md-12 text-center" style="padding-top:3%;">
            <div style="background-color:white;">
                <asp:Label ID="Lbl_AnswerNameDish" Visible="false"
                Font-Names="Allerta Stencil" Font-Bold="true" Font-Size="XX-Large" runat="server" Text="Ризотто"></asp:Label>
            
            </div>    
            
        </div>
        <div class="col-md-12">
            <div style="background-color:white; display:-webkit-box;">
                <div class="col-md-6 text-center" style="padding-top:3%;">
                <asp:Image  runat="server" ID="Img_AnswerImage" Visible="false" 
                ImageAlign="AbsMiddle" />
                </div>
                <div class="col-md-6 text-center" style="padding-top:3%; padding-left:5%;">
                <asp:TextBox ID="TxtBox_AnswerText" runat="server" 
                Font-Names="Source Sans Pro" Font-Bold="false" Font-Size="X-Large" ReadOnly="true"
                TextMode="MultiLine" Rows="10" Columns="40" Text="Какой-то текст" 
                BorderStyle="None" Visible="false"></asp:TextBox>
                <asp:Label ID="Lbl_suggest" Text="Мы можем подобрать ингридиенты для этого блюда. Укажите количество порций:" 
                    runat="server" Visible="false" Font-Names="Source Sans Pro" Font-Size="14pt"></asp:Label>
                    <asp:TextBox ID="TxtBox_servings" Visible="false" Text="1" Width="60"  
                        style="text-align:center" TextMode="Number" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator runat ="server" ID="valid_servings"
                        ControlToValidate="TxtBox_servings" ValidationExpression="[1-9]" Display="Dynamic">Укажите число</asp:RegularExpressionValidator> 
                    <div class="text-center" style="padding-top:2%; padding-bottom:5%;">
                        <asp:Button ID="Btn_Suggest" Visible="false" runat="server" CssClass="my-btn btn btn-warning"
                    Text="подобрать продуктовую корзину" OnClick="Btn_Suggest_Click"/>
                    
                    </div>
                    
                </div> 
            </div>
            
        </div>
       
    </div>
</asp:Content>


