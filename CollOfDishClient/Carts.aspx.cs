using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CollOfDishClient.ServiceReference1;

namespace CollOfDishClient
{
    public partial class Carts : System.Web.UI.Page
    {
        protected AgregatorServerSoapClient server;
        protected void Page_Load(object sender, EventArgs e)
        {
            server = new AgregatorServerSoapClient();
            string sessionId = (string)Session["myValue"];
            string dishName = Request.QueryString["dish"];
            int servings = Int32.Parse( Request.QueryString["servings"]);
            Cart[] carts = server.СartsSearch(sessionId,dishName,servings);
            Lbl_dishName.Text = "Мы подобрали наборы продуктов по вашему запросу:";
            
            Create_Table_Cars(carts.Length, 3, carts);
            Create_Radiobutton_List(carts);
            
        }

        protected void Create_Table_Cars(int row, int col, Cart[] carts)
        {
            int num_car = 1;
            
            TableHeaderRow _headerrow = new TableHeaderRow();
            for (int i=0; i<row; i++)
            {
                TableRow _row = new TableRow();
                for(int j=0; j<col; j++)
                {
                    TableCell _cell = new TableCell();
                    switch(j)
                    {
                        case 0:
                            _cell.Text = "Корзина " + num_car.ToString();
                            break;
                        case 1:
                            _cell.Text = ListProducts(carts[i]); ;
                            break;
                        case 2:
                            _cell.Text = carts[i].TotalPrice.ToString() + "руб.";
                            break;
                    }
                    _row.Cells.Add(_cell);
                }
                
                num_car++;
                Tbl_Carts.Rows.Add(_row);

            }
            TableHeaderCell _headercell1 = new TableHeaderCell();
            _headercell1.Text = "Корзина №";
            _headercell1.Scope = TableHeaderScope.Column;
            _headerrow.Cells.Add(_headercell1);

            TableHeaderCell _headercell2 = new TableHeaderCell();
            _headercell2.Text = "Список ингридиентов";
            _headercell2.Scope = TableHeaderScope.Column;
            _headerrow.Cells.Add(_headercell2);

            TableHeaderCell _headercell3 = new TableHeaderCell();
            _headercell3.Text = "Стоимость";
            _headercell3.Scope = TableHeaderScope.Column;
            _headerrow.Cells.Add(_headercell3);

            Tbl_Carts.Rows.AddAt(0, _headerrow);

            return;
        }

        protected string ListProducts(Cart cart)
        {
            Product[] list_p = cart.ProductList;
            string result="";
            string tmp = "";
            for(int i=0; i<list_p.Length; i++)
            {
                tmp = result;
                result = tmp + list_p[i].Name +" ";
                
            }
            return result;
        }

        protected void Create_Radiobutton_List(Cart[] carts)
        {
            int count = 1;
            for(int i=0; i<carts.Length; i++)
            {
                string name = "Корзина " + count.ToString();
                string id = carts[i].CartId.ToString() + "/";
                string cost = carts[i].TotalPrice.ToString();
                string value = id + cost;
                ListItem item = new ListItem(name, value);
                Rbl_listOfCarts.Items.Add(item);
                count++;
            }
            
        }

        protected void Btn_Order_Click(object sender, EventArgs e)
        {
            string sessionId = (string)Session["myValue"];
            string parse = Rbl_listOfCarts.SelectedItem.Value;
            string[] words = parse.Split('/');
            string cartId = words[0];
            string cost = words[1];
            Uri baseurl = new Uri("http://localhost/CollOfDishClient/");
            Uri newurl = new Uri(baseurl, "(S(" + sessionId + 
                "))/Order?cartId="+cartId+"&cost="+cost);
            Response.Redirect(newurl.ToString());
        }
    }
}