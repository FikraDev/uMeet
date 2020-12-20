<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="indexPage.aspx.cs" Inherits="uMeet.indexPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/indexpageCSS.css" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">

    <div class="banner">
        <asp:Literal runat="server"> <h2 class="heading"> <i class="true-love">True love</i> does not come by<br> finding the perfect person, but by<br /> learning to see an imperfect<br /> person perfectly</h2> </asp:Literal>
    </div>

    <div class="millionDiv">
        <asp:Literal runat="server"> <p class="header2">Over 1 Million Members</p> </asp:Literal>
    </div>

    <div class="blinkinDiv">
        <asp:Literal runat="server"> <a href="SignUp.aspx" class="blink"><span class="blink-me">Join Us Today</span></a> </asp:Literal>
    </div>

    <div class="imgDiv-indexPage">
        <asp:Image runat="server" ImageUrl="~/Image/MainBackground.jpg" CssClass="mainImg" />
    </div>

    <div class="bigDiv">

        <div class="divLeft">
            <asp:Literal runat="server"><h3 class="h03"><a class="a1"> #1 TRUSTED</a> DATING SITE</h3></asp:Literal>
        </div>

        <div class="divMid">
            <asp:Literal runat="server"><h3 class="h03-2"> WHAT ARE YOU WAITING ON?</h3></asp:Literal>
        </div>

        <div class="divRight">
            <asp:Literal runat="server"><h3 class="h03-3"><a class="a1">HIGHEST QUALITY</a> DATING POOL</h3></asp:Literal>
        </div>

    </div>



</asp:Content>
