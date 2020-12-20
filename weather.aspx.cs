using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Web.Script.Serialization;
using System.IO;
using System.Text;

/*Credit for this API goes to Github Member Skill-11*/

namespace uMeet
{
    public partial class Weather : System.Web.UI.Page
    {
        public class Temperature
        {
            public double temp_min { get; set; }
            public double temp_max { get; set; }
            public double humidity { get; set; }
        }

        public class DayDetails
        {
            public double day { get; set; }

            public double night { get; set; }
        }
        public class Weatherx
        {
            public string description { get; set; }
            public string icon { get; set; }
        }
        public class Coordinates
        {
            public double lat { get; set; }
            public double lon { get; set; }
        }

        public class City
        {
            public double id { get; set; }
            public string name { get; set; }
            public string country { get; set; }
           
            public Coordinates coord { get; set; }

            public City()
            {
                coord = new Coordinates();
            }

        }

        public class WeatherRpt
        {
            public DayDetails temp { get; set; }
            public int humidity { get; set; }
            public List<Weatherx> weather { get; set; }
            public Temperature main { get; set; }
            
            public WeatherRpt()
            {
                main = new Temperature();
                temp = new DayDetails();
                weather = new List<Weatherx>();
            }
        }

        public class WeatherInfo
        {
            public City city { get; set; }
            public List<WeatherRpt> list { get; set; }
            public WeatherInfo()
            {
                city = new City();
                list = new List<WeatherRpt>();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnWeather_Click(object sender, EventArgs e)
        {
            string appid = "bfc7dabbcf1e59688c5457957bc6dddb";

            string url = string.Format("http://api.openweathermap.org/data/2.5/forecast?q=" + txtCity.Text + "&APPId=" + appid);
            
            using (System.Net.WebClient client = new System.Net.WebClient())
            {
                try
                {
                    String json = client.DownloadString(url);
                    if (json.IndexOf("Error") == -1)
                    {
                        WeatherInfo weatherinfo = (new JavaScriptSerializer()).Deserialize<WeatherInfo>(json);
                        lblCity_Country.Text = weatherinfo.city.name + "," + weatherinfo.city.country;
                       imgCountryFlag.ImageUrl = "http://openweathermap.org/images/flags/" + weatherinfo.city.country.ToLower() + ".png";
                        imgWeatherIcon.ImageUrl = string.Format("http://openweathermap.org/img/w/{0}.png", weatherinfo.list[0].weather[0].icon);

                        double mx = Math.Round(weatherinfo.list[0].main.temp_max - 273.15, 2);
                        double mn = Math.Round(weatherinfo.list[0].main.temp_min - 273.15, 2);
                        double hmd = Math.Round(weatherinfo.list[0].main.humidity, 2);
                        double lng = Math.Round(weatherinfo.city.coord.lon, 4);
                        double ltd = Math.Round(weatherinfo.city.coord.lat, 4);

                        lblTempMax.Text = mx.ToString();
                        lblTempMin.Text = mn.ToString();
                        lblHumidity.Text = hmd.ToString();
                        lblTempDay.Text = mx.ToString();
                        lblTempNight.Text = mn.ToString();
                        lbllong.Text = lng.ToString();
                        lbllat.Text = ltd.ToString();
                        tblWeather.Visible = true;
                        //double d = Math.Round(10 * (weatherinfor.list[0].temp.day )) / 10;
                        //lblTempDay.Text = d.ToString();
                    }
                }
                catch (Exception exx) { Response.Write(exx.StackTrace); };
            }

        }
    }
}