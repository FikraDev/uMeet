<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="uMeet.UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/ssLogin.css" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">

    <div class="containerouter">
        <div class="containerinner">
            <form runat="server">

                <asp:Literal runat="server"><h3 class="loginTitle">Welcome</h3></asp:Literal>

                <div class="usernameDiv">
                    <asp:Label CssClass="lblLabels" Text="Username" runat="server"></asp:Label>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtInput" placeholder="Enter Username"></asp:TextBox>
                </div>

                <div class="passwordDiv">
                    <asp:Label CssClass="lblLabels" Text="Password" runat="server"></asp:Label>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtInputP" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                </div>

                <div class="loginbtnDiv">
                    <asp:Button runat="server" CssClass="loginBtnEntr" Text="Enter" ID="btnLogin" OnClick="btnLogin_Click" />
                    <asp:Button runat="server" CssClass="loginBtnCncl" Text="Cancel" ID="btnCancel" OnClick="btnCancel_Click" />
                </div>

                <div>
                    <%--<asp:HyperLink ID="regredirect" runat="server" NavigateUrl="~/SignUp.aspx" CssClass="regLink" Text="Not yet a Member? Register Here"></asp:HyperLink>--%>
                     <a href="<%=Page.ResolveUrl("SignUp.aspx") %>">Not yet a Member? Register Here</a>
                </div>


                <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>


            </form>
        </div>

    </div>
</asp:Content>
