<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="uMeet.ContactPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/contact.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">

    <div class="outerContainer">
        <div class="innerContainer">
            <form runat="server">

        <asp:Literal runat="server"><h3 class="regTitle">Contact Us</h3></asp:Literal>
                <asp:Literal runat="server"><h2>Leave a short message & We will be sure to get back to you.</h2></asp:Literal>

        <div>
            <asp:TextBox runat="server" ID="txtName" class="contactInput" placeholder="Enter Name"></asp:TextBox>

            <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="Required Field!" ForeColor="Red" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:TextBox runat="server" ID="txtEmail" class="contactInput" placeholder="Enter Email"></asp:TextBox>

            <asp:RegularExpressionValidator ID="regValEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Email is not well formed" ForeColor="Red" ControlToValidate="txtEmail">*</asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ID="rfvID" runat="server" ErrorMessage="Required Field!" ForeColor="Red" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:TextBox runat="server" ID="txtMsg" class="contactMulti" TextMode="MultiLine" placeholder="Enter Message Here"></asp:TextBox>

            <asp:RequiredFieldValidator ID="rfvmsg" runat="server" ErrorMessage="Required Field!" ForeColor="Red" ControlToValidate="txtMsg">*</asp:RequiredFieldValidator>
        </div>

        <div class="btnDiv">
            <asp:Button runat="server" Text="Submit" ID="btnSubmit" class="contactSubmit" OnClick="btnSubmit_Click" />

            <asp:Button runat="server" Text="Cancel" ID="btnCancel" class="contactCancel" OnClick="btnCancel_Click" />
        </div>

        <div>
            <asp:Label runat="server" ID="lblErrorMsg"></asp:Label>
        </div>

        <asp:ValidationSummary ID="MySummary" runat="server" ForeColor="Red" />

    </form>

        </div>
    </div>
</asp:Content>
