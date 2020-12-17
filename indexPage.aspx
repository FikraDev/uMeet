<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="indexPage.aspx.cs" Inherits="uMeet.indexPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/indexpageCSS.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">

    <div class="imgDiv-indexPage">
        <asp:Image runat="server" ImageUrl="~/Image/MainBackground.jpg" CssClass="mainImg" />
    </div>

    <div class="di-h03">
        <asp:Literal runat="server"><h3 class="h03"><a class="a1"> #1 TRUSTED</a> DATING SITE</h3></asp:Literal>
    </div>

    <div class="di-h03-2">
        <asp:Literal runat="server"><h3 class="h03-2"> EVERY <a class="a1">14 MINUTES</a>, SOMEONE FINDS LOVE ON UMEET</h3></asp:Literal>
    </div>

        <div class="di-h03-3">
        <asp:Literal runat="server"><h3 class="h03-3"><a class="a1">HIGHEST QUALITY</a> DATING POOL</h3></asp:Literal>
        </div>
    </div>

    
    

</asp:Content>
