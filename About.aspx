<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="uMeet.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">

    <div class="imgDiv-indexPage">
        <asp:Image runat="server" ImageUrl="~/Image/loveImg.jpg" CssClass="mainImg" />
    </div>

    <div class="aboutdiv">
        <asp:Literal runat="server"><p class="txt1">Over the last 20 years, technology has changed. The way people communicate has changed. But one thing that remains the same is uMeet’s mission: to create meaningful connections which lead to long-term love. It all started in 1997. After 35 years practicing as a clinical psychologist and counseling thousands of couples,uMeet founder Dr. Neil Clark Warren came to believe there had to be a better way to put two people together for relationship success.</p>
            
        </asp:Literal>
    </div>

    <div class="aboutdiv2">
        <asp:Literal runat="server" ID="aboutBigTxt">
            <p>We are all about creating meaningful connections and fullfilling relationships</p>
        </asp:Literal>
    </div>
</asp:Content>
