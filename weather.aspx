<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="Weather.aspx.cs" Inherits="uMeet.Weather" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/weather.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">

    <div class="outer">
        <div class="inner">

            <form id="form1" runat="server">
        <asp:TextBox ID="txtCity" runat="server" CssClass="txtInput" Text=""/>
        <asp:Button ID="btnWeather" runat="server" CssClass="weatherBtn" Text="Get Weather Information" OnClick="btnWeather_Click" />
        <hr />
        <table id="tblWeather" cellpadding="2" cellspacing="2" runat="server" visible="false" class="tableX">
            <tr>
                <th colspan="16">Weather Information
                </th>

            </tr>
            <tr>
                <td colspan="8" align="center">
                    <asp:Image ID="imgWeatherIcon"  runat="server" />
                </td>
                <td colspan="8" align="center">
                    <asp:Label ID="lblCity_Country" runat="server"></asp:Label><br />
                    <asp:Image ID="imgCountryFlag" runat="server" />
                    <br />
                    <asp:Label ID="lblDescription" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td colspan="8" align="center">Humidity:
                </td>
                <td colspan="8" align="center">
                    <asp:Label ID="lblHumidity" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="16" align="center">
                    <b>TEMPERATURE</b>
                </td>
            </tr>
            <tr>
                <td colspan="4" align="center">Min
                </td>
                <td colspan="4" align="center">Max
                </td>
                <td colspan="4" align="center">Day
                </td>
                <td colspan="4" align="center">Night
                </td>
            </tr>
            <tr>

                <td colspan="4" align="center">
                    <asp:Label ID="lblTempMin" runat="server"></asp:Label>
                </td>
                <td colspan="4" align="center">
                    <asp:Label ID="lblTempMax" runat="server"></asp:Label>
                </td>
                <td colspan="4" align="center">
                    <asp:Label ID="lblTempDay" runat="server"></asp:Label>
                </td>
                <td colspan="4" align="center">
                    <asp:Label ID="lblTempNight" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="16" align="center">
                    <b>CO-ORDINATES</b>
                </td>
            </tr>
            <tr>
                <td colspan="8" align="center">Longitudes
                </td>
                <td colspan="8" align="center">Latitudes
                </td>
            </tr>
            <tr>
                <td colspan="8" align="center">
                    <asp:Label ID="lbllong" runat="server"></asp:Label>
                </td>
                <td colspan="8" align="center">
                    <asp:Label ID="lbllat" runat="server"></asp:Label>
                </td>
            </tr>
            
        </table>
    </form>
        </div>
    </div>
</asp:Content>
