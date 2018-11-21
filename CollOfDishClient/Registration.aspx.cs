using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CollOfDishClient.ServiceReference1;

namespace CollOfDishClient
{
    public partial class Contact : Page
    {
        protected AgregatorServerSoapClient server;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_registration_Click(object sender, EventArgs e)
        {
            string usrName = TxtBox_usrName.Text;
            string usrScdName = TxtBox_usrScdName.Text;
            string usrLogin = TxtBox_usrLogin.Text;
            string pass = TxtBox_pass2.Text;
            string sessionId = (string)Session["myValue"];
            server = new AgregatorServerSoapClient();
            int result = server.UserRegistration(sessionId,usrName,usrScdName,pass,usrLogin);
            if (result == 200)
            {
                string[] splitAddress = Request.Url.AbsoluteUri.Split(new char[] { '/' });
                string addressIP = splitAddress[0] + "//" + splitAddress[2] + "/";
                Uri baseurl = new Uri(addressIP);
                Uri newurl = new Uri(baseurl, "(S(" + sessionId + "))/Default");
                Response.Redirect(newurl.ToString());
            }
            else
            {
                Lbl_warning.Text = "Зарегистрироваться не удалось";
                Lbl_warning.Visible = true;
            }
        }
    }
}