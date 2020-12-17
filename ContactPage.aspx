<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="uMeet.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">

    <form runat="server">

        <asp:Literal runat="server"><h3 class="regTitle">Contact Us</h3></asp:Literal>

    <div>
        <asp:TextBox runat="server" ID="txtName" class="contactInput" placeholder="Enter Name"></asp:TextBox>
    </div>

    <div>
        <asp:TextBox runat="server" ID="txtEmail" class="contactInput" placeholder="Enter Email"></asp:TextBox>
    </div>

    <div>
        <asp:TextBox runat="server" ID="txtMsg" class="contactMulti" TextMode="MultiLine" placeholder="Enter Message Here"></asp:TextBox>
    </div>

    <div>
        <asp:Button runat="server" Text="Submit" id="btnSubmit" class="contactSubmit" OnClick="btnSubmit_Click" />

        <asp:Button runat="server" Text="Cancel" id="btnCancel" class="contactCancel" OnClick="btnCancel_Click" />
    </div>

        <div>
            <asp:Label runat="server" ID="lblErrorMsg"></asp:Label>
        </div>
   
    </form>

</asp:Content>
