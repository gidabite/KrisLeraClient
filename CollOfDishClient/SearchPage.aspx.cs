using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CollOfDishClient.ServiceReference1;

namespace CollOfDishClient
{
    public partial class SearchPage : System.Web.UI.Page
    {
        protected AgregatorServerSoapClient server;
        protected string dishName;
        protected string sessionId;
        protected void Page_Load(object sender, EventArgs e)
        {
            sessionId = (string)Session["myValue"];
            server = new AgregatorServerSoapClient();
            //получть имя клиента
            User user = new User();
            user = server.GetUserInfo(sessionId);
            Lbl_usrName.Text = user.UserFirstName+" "+user.UserSecondName;
            Lbl_usrName.Visible = true;
        }

        protected void Btn_search_Click(object sender, EventArgs e)
        {
            sessionId = (string)Session["myValue"];
            dishName = TxtBox_search.Text;
            DishObject dishObject = new DishObject();
            dishObject = server.SearchDish(sessionId, dishName);
            //заполняем элементы отображения результатами от сервера
            Lbl_AnswerNameDish.Text = dishObject.DishName;
            if (dishObject.ImageURL != null)
            {
                Img_AnswerImage.ImageUrl = dishObject.ImageURL;
            }
            else
            {
                Img_AnswerImage.AlternateText = "Изображение не найдено";
            }
            TxtBox_AnswerText.Text = dishObject.DishDescr;
            //делаем видимым элементы отображения результатов поиска
            Lbl_AnswerNameDish.Visible = true;
            Img_AnswerImage.Visible = true;
            TxtBox_AnswerText.Visible = true;
            Lbl_suggest.Visible = true;
            TxtBox_servings.Visible = true;
            Btn_Suggest.Visible = true;
        }

        protected void Btn_Suggest_Click(object sender, EventArgs e)
        {
            string sessionId = (string)Session["myValue"];
            string[] splitAddress = Request.Url.AbsoluteUri.Split(new char[] { '/' });
            string addressIP = splitAddress[0] + "//" + splitAddress[2] + "/";
            Uri baseurl = new Uri(addressIP);
            string servings = TxtBox_servings.Text;
            dishName = TxtBox_search.Text;
            Uri newurl = new Uri(baseurl, "(S(" + sessionId + "))/Carts?dish="+dishName+"&servings="+servings);
            Response.Redirect(newurl.ToString());
        }
    }
}