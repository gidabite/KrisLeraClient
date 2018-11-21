using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using CollOfDishClient.ServiceReference1;

namespace CollOfDishClient
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Session["myValue"] = HttpContext.Current.Session.SessionID;
            /*string sessionId = (string)Session["myValue"];
            Info info = new Info(sessionId);
            info.client = new AgregatorServerSoapClient();
            string answer;
            answer = info.client.checkSession(info.key);
            Lbl_1.Text = answer;*/
        }
        
        protected void Button2_Click(object sender, EventArgs e) //редактировать
        {
            /*Info info = new Info(TextBox1.Text);
            info.client = new AgregatorServerSoapClient ();
            string answer;
            //answer.Code_status = 200;
            while (true)
            {
                if (info.key != null)
                {
                    answer = info.client.TestMethod(info.key);
                    break;
                }
                else { Label1.Text = "Укажите название статьи!!"; }
            }
            Label1.Text = answer;
            */
        }

        protected void BtnEnter_Click(object sender, EventArgs e)
        {
            string sessionId = (string)Session["myValue"];
            string[] splitAddress = Request.Url.AbsoluteUri.Split(new char[] { '/' });
            string address = splitAddress[0] + "//" + splitAddress[2] + "/";
            Uri baseurl = new Uri(address);
            Uri newurl = new Uri(baseurl, "(S("+sessionId + "))/EnterPage");
            Response.Redirect(newurl.ToString());
           
        }

        protected void BtnRegistration_Click(object sender, EventArgs e)
        {
            string sessionId = (string)Session["myValue"];
            string[] splitAddress = Request.Url.AbsoluteUri.Split(new char[] { '/' });
            string address = splitAddress[0] + "//" + splitAddress[2] + "/";
            Uri baseurl = new Uri(address);
            Uri newurl = new Uri(baseurl, "(S(" + sessionId + "))/Registration");
            Response.Redirect(newurl.ToString());
            
           

        }
    }
}