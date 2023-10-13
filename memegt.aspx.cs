using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using RestSharp;

namespace Web_Memesco
{
    public partial class infobip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                // c.Text = Request.QueryString["body"];
                /*  a.Text = Request.Form["sende"].ToString();
                  b.Text = Request.Form["receiver"].ToString();
                  c.Text = Request.Form["body"].ToString();*/

                string sende = Request.QueryString["sende"].ToString();
                string receiver = Request.QueryString["receiver"].ToString();
                string ab = "234" + receiver.Substring(receiver.Length - 10);//receiver.Substring(receiver.Substring().Length - 10);
                string body = Request.QueryString["body"].ToString();

                a.Text = Request.QueryString["sende"].ToString();
                b.Text = Request.QueryString["receiver"].ToString();
                c.Text = Request.QueryString["body"].ToString();

                if (!string.IsNullOrWhiteSpace(sende) && !string.IsNullOrWhiteSpace(receiver) && !string.IsNullOrWhiteSpace(body))
                {
                    var client = new RestClient("https://api.infobip.com/sms/1/text/single");

                    var request = new RestRequest(Method.POST);
                    request.AddHeader("accept", "application/json");
                    request.AddHeader("content-type", "application/json");
                    request.AddHeader("authorization", "Basic bWVtZVNDTzE6VGVzdDEyMyE=");
                    request.AddParameter("application/json", "{\"from\":\"" + sende.ToString().TrimEnd() + "\", \"to\":[  \"" + ab.TrimEnd() + "\"],\"text\":\"" + body.ToString().TrimEnd() + "\"}", ParameterType.RequestBody);

                    IRestResponse response = client.Execute(request);
                }
                else
                {
                   // Label1.Text = "Something went wrong ...";
                }
            }
            catch (Exception ex)
            {
               // Label1.Text = ex.Message;
            }
          

        }
    }
}