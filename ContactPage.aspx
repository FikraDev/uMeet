<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="uMeet.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">

    <form runat="server">

        <asp:Literal runat="server"><h3 class="regTitle">Contact Us</h3></asp:Literal>

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

    <div>
        <asp:Button runat="server" Text="Submit" id="btnSubmit" class="contactSubmit" OnClick="btnSubmit_Click" />

        <asp:Button runat="server" Text="Cancel" id="btnCancel" class="contactCancel" OnClick="btnCancel_Click" />
    </div>

        <div>
            <asp:Label runat="server" ID="lblErrorMsg"></asp:Label>
        </div>

        <asp:ValidationSummary ID="MySummary" runat="server" ForeColor="Red"/>
   
    </form>

</asp:Content>
