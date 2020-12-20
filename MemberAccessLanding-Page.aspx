<%@ Page Title="" Language="C#" MasterPageFile="~/MemberAccessPage.Master" AutoEventWireup="true" CodeBehind="MemberAccessLanding-Page.aspx.cs" Inherits="uMeet.MemberAccessLanding_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/MemAccessLandingPage.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MemberAccessContent" runat="server">

    <form runat="server">

        <asp:Literal runat="server"><h3 class="mapTitle">Who are You Looking For?</h3></asp:Literal>
        <div class="outercontainer">
            <div class="innercontainer">



                <div class="singleDiv">
                    <div>
                        <asp:DropDownList runat="server" ID="maddlist" CssClass="maDropD" AutoPostBack="True">
                            <asp:ListItem Value="0">Make a Selection</asp:ListItem>
                            <asp:ListItem Value="1">I am a Man seeking a Woman</asp:ListItem>
                            <asp:ListItem Value="2">I am a Woman seeking a Man</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="inner-singleDiv">
                        <asp:Button runat="server" Text="Search Now" CssClass="singleDiv-Btn" OnClick="Unnamed2_Click" />
                    </div>



                </div>



            </div>

        </div>
    </form>
</asp:Content>
