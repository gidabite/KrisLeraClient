using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CollOfDishClient.ServiceReference1;

namespace CollOfDishClient
{
    public partial class Payment : System.Web.UI.Page
    {
        protected AgregatorServerSoapClient server;
        protected string cost;
        protected void Page_Load(object sender, EventArgs e)
        {
            cost = Request.QueryString["cost"];
            Lbl_cost.Text = cost + "pуб.";
        }

        protected void Btn_cardBtn_Click(object sender, EventArgs e)
        {
            string sessionId = (string)Session["myValue"];
            int cartId = Int32.Parse(Request.QueryString["cartId"]);
            Address address = new Address();
            address.City = Request.QueryString["t"];
            address.Street = Request.QueryString["s"];
            address.House = Int32.Parse(Request.QueryString["h"]);
            address.Apartment = Int32.Parse(Request.QueryString["f"]);
            address.Comment = Request.QueryString["c"];

            CreditCard creditCard = new CreditCard();
            creditCard.CardNumber = TxtBox_cardNumber.Text;
            creditCard.CardholdersName = TxtBox_cardHolder.Text;
            creditCard.ValidityMM = Int32.Parse(TxtBox_cardMonth.Text);
            creditCard.ValidityYY = Int32.Parse(TxtBox_cardYear.Text);
            creditCard.CVC = Int32.Parse(TxtBox_cardCVC.Text);
            
            server = new AgregatorServerSoapClient();
            string date = server.CreateOrder(sessionId, cartId, address, Double.Parse(cost), creditCard);

            string[] splitAddress = Request.Url.AbsoluteUri.Split(new char[] { '/' });
            string addressIP = splitAddress[0] + "//" + splitAddress[2] + "/";
            Uri baseurl = new Uri(addressIP);
            Uri newurl = new Uri(baseurl, "(S(" + sessionId + "))/Delivery?date="+date);
            Response.Redirect(newurl.ToString());
        }
    }
}