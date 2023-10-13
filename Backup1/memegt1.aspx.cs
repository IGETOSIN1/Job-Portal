using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;

namespace Web_Memesco
{
    public partial class memegt1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(sender_title.Text) && !string.IsNullOrWhiteSpace(message.Text) && !string.IsNullOrWhiteSpace(receiver.Text))
            {
                try
                {
                    string ab = "234" + receiver.Text.Substring(receiver.Text.Length - 10);

                    var client = new RestClient("https://api.infobip.com/sms/1/text/single");

                    var request = new RestRequest(Method.POST);
                    request.AddHeader("accept", "application/json");
                    request.AddHeader("content-type", "application/json");
                    request.AddHeader("authorization", "Basic bWVtZVNDTzE6VGVzdDEyMyE=");
                    request.AddParameter("application/json", "{\"from\":\"" + sender_title.Text.TrimEnd() + "\", \"to\":[  \"" + ab.TrimEnd() + "\"],\"text\":\"" + message.Text.TrimEnd() + "\"}", ParameterType.RequestBody);

                    IRestResponse response = client.Execute(request);
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
    }
}