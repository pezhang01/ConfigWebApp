using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConfigWebApp
{
    public partial class config_data_input : System.Web.UI.Page
    {
        public string ConnectionStringValue = "Data Source=rd-rigel;Initial Catalog=Polaris;Integrated Security=False;User ID=Polaris;Password=polaris;Persist Security Info=True;Application Name=Polaris Application Services;";
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.DataBind();

            //_loadFromRedisCache();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            // connect to Redis Cache in Azure
            RedisCache.FlushAll();

            foreach (TableRow row in ConfigSettings.Rows)
            {
                foreach (TableCell cell in row.Cells)
                {
                    if (cell.HasControls())
                    {
                        foreach (Control ctrl in cell.Controls)
                        {
                            if (ctrl.GetType() == typeof(TextBox))
                            {
                                var key = ctrl.ID;
                                var value = ((TextBox)ctrl).Text;
                                RedisCache.Set(key, value);
                            }
                            else if (ctrl.GetType() == typeof(CheckBox))
                            {
                                var key = ctrl.ID;
                                var value = ((CheckBox)ctrl).Checked.ToString();
                                RedisCache.Set(key, value);
                            }
                        }
                    }
                }
            }

            //RedisCache.Get("foo");
        }

        private void _loadFromRedisCache()
        {
            foreach (TableRow row in ConfigSettings.Rows)
            {
                foreach (TableCell cell in row.Cells)
                {
                    if (cell.HasControls())
                    {
                        foreach (Control ctrl in cell.Controls)
                        {
                            if (ctrl.GetType() == typeof(TextBox))
                            {
                                var key = ctrl.ID;
                                var value = RedisCache.Get(key);
                                ((TextBox)ctrl).Text = value;
                            }
                            else if (ctrl.GetType() == typeof(CheckBox))
                            {
                                var key = ctrl.ID;
                                var value = RedisCache.Get(key);
                                ((CheckBox)ctrl).Checked = bool.Parse(value.ToString());
                            }
                        }
                    }
                }
            }
        }
    }
}