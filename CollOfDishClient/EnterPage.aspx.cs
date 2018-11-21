using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CollOfDishClient.ServiceReference1;
namespace CollOfDishClient
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        private class Info //Вложеный класс, который содержит информацию для соединения
        {
            public string login;
            public string password;
            public string sessionId;
            public AgregatorServerSoapClient client;
            public Info(string sesId, string log, string pass)
            {
                login = log;
                password = pass;
                sessionId = sesId;
            }
        }
        protected void Btn_login_Click(object sender, EventArgs e)
        {
            string sessionId = (string)Session["myValue"];
            
            //ждем проверку от сервера
            Info info = new Info(sessionId, TxtBox_login.Text, TxtBox_password.Text);
            info.client = new AgregatorServerSoapClient();
            int result = info.client.UserEnter(info.sessionId, info.login, info.password);
            //если проверка прошла, запускаем следующую страницу
            if (result == 200)
            {
                string[] splitAddress = Request.Url.AbsoluteUri.Split(new char[] { '/' });
                string address = splitAddress[0] + "//" + splitAddress[2] + "/";
                Uri baseurl = new Uri(address);
                Uri newurl = new Uri(baseurl, "(S(" + sessionId + "))/SearchPage");
                Response.Redirect(newurl.ToString());
            }
            else
            {
                Lbl_warning.Text = "Неверный логин или пароль";
                Lbl_warning.Visible = true;
            }
            
           

        }
    }
}