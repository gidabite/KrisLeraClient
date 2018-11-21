<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="CollOfDishClient.Payment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Оплата заказа</h2>
    <div class="row">
        <div class="col-md-12" style="margin-top:5%;">
            <!-- Credit Card -->
        <div id="form-errors" class="hidden">
            <i class="fa fa-exclamation-triangle"></i>
            <p id="card-error">Card error</p>
        </div>
        <div id="form-container">

          <div id="card-front">
            <div id="shadow"></div>
            <div id="image-container">
              <span id="amount">Оплата: <strong><asp:Label ID="Lbl_cost" runat="server"
                  Visible="true" ></asp:Label></strong></span>
              <span id="card-image">
      
               </span>
            </div>
            <!--- end card image container --->

           <label for="card-number">
                Номер карты
            </label>
           <asp:TextBox ID="TxtBox_cardNumber" ForeColor="Black" CssClass="card-number" placeholder="1234 5678 9101 1112"
                length="16" Visible="true" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="valid_cardNumber" ControlToValidate="TxtBox_cardNumber"
                Display="Dynamic">поле пусто</asp:RequiredFieldValidator>
              <div id="cardholder-container">
                <label for="card-holder">Имя держателя карты
                </label>
                
                <asp:TextBox ID="TxtBox_cardHolder" ForeColor="Black" CssClass="card-holder"
                    placeholder="IVAN IVANOV" Visible="true" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="valid_cardHolder" ControlToValidate="TxtBox_cardHolder"
                Display="Dynamic">поле пусто</asp:RequiredFieldValidator>
              </div>
           <!--- end card holder container --->
            <div id="exp-container">
                <label for="card-exp">
                    Срок действия карты
                </label>
                
                <asp:TextBox ID="TxtBox_cardMonth" ForeColor="Black" Visible="true" placeholder="MM" length="2" runat="server" />
               <asp:RequiredFieldValidator runat="server" ID="valid_cardMonth" ControlToValidate="TxtBox_cardMonth"
                Display="Dynamic">поле пусто</asp:RequiredFieldValidator>
                
                <asp:TextBox ID="TxtBox_cardYear" ForeColor="Black" Visible="true" placeholder="YY" length="2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="valid_cardYear" ControlToValidate="TxtBox_cardYear"
                Display="Dynamic">поле пусто</asp:RequiredFieldValidator>
            </div>
           <div id="cvc-container">
            <label for="card-cvc"> CVC/CVV</label>
            
               <asp:TextBox ID="TxtBox_cardCVC" ForeColor="Black" Visible="true" CssClass="card-cvc" placeholder="XXX" length="3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="valid_cardCVC" ControlToValidate="TxtBox_cardCVC"
                Display="Dynamic">поле пусто</asp:RequiredFieldValidator>
               <p>Last 3 or 4 digits</p>
           </div>
        <!--- end CVC container --->
        <!--- end exp container --->
         </div>
        <!--- end card front --->
           <div id="card-back">
                <div id="card-stripe">
            </div>

            </div>
        <!--- end card back --->
        <input type="text" id="card-token" />
                   

   </div>
    </div>
        <div class="col-md-12 text-center" style="padding-top:5%;">
            <asp:Button ID="Btn_cardBtn" Visible="true" CssClass="my-btn btn btn-warning"
                Text="Оплатить" runat="server" CausesValidation="true" OnClick="Btn_cardBtn_Click" />
        </div>
    </div>
</asp:Content>

