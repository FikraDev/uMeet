﻿<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="uMeet.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/signUp.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">
    <div class="outerContainer">

        <div class="innerContainer">
            <form runat="server">

                <asp:Literal runat="server"><h3 class="regTitle">Registration</h3></asp:Literal>

                <asp:Literal runat="server"><h2>Register for free and test our service</h2></asp:Literal>

                <div class="newDiv">

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtUsername" placeholder="Enter Username"></asp:TextBox>


                    <asp:RegularExpressionValidator ID="regExUsrname" runat="server" ControlToValidate="txtUsername" ErrorMessage="Enter Only Numeric and characters" ValidationExpression="^[a-zA-Z0-9\s]{7,15}$" ForeColor="Red">*</asp:RegularExpressionValidator>

                   
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtInputP" placeholder="Enter Password" TextMode="Password" ></asp:TextBox>

                    <asp:RegularExpressionValidator ID="regExPwd" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{7,15}$" runat="server" ErrorMessage="Password must be between 7-15 Characters" ForeColor="Red" ControlToValidate="txtInputP">*</asp:RegularExpressionValidator>

                    <asp:RequiredFieldValidator ID="rvfpwd" runat="server" ErrorMessage="Password Required!" ForeColor="Red" ControlToValidate="txtInputP">*</asp:RequiredFieldValidator>

                </div>

                <div class="newDiv2">

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtFname" placeholder="Enter First Name" MaxLength="100"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rvfname" runat="server" ErrorMessage="First Name Required!" ForeColor="Red" ControlToValidate="txtFname">*</asp:RequiredFieldValidator>


                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtLname" placeholder="Enter Last Name" MaxLength="100"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rvfLname" runat="server" ErrorMessage="Last Name Required!" ForeColor="Red" ControlToValidate="txtLname">*</asp:RequiredFieldValidator>
                </div>

                <div class="newDiv3">
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtAddress" placeholder="Enter Address" MaxLength="255"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rvfAddress" runat="server" ErrorMessage="Address Required!" ForeColor="Red" ControlToValidate="txtAddress">*</asp:RequiredFieldValidator>

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtEmail" placeholder="Email Address" MaxLength="255"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rvfEmail" runat="server" ErrorMessage="Email Field!" ForeColor="Red" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="regValEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Email is not well formed" ForeColor="Red" ControlToValidate="txtEmail">*</asp:RegularExpressionValidator>

                </div>

                <div class="newDiv4">
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtPhone" placeholder="Phone Number" MaxLength="15"></asp:TextBox>

                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtDOB" TextMode="DateTime" placeholder="Enter D.O.B (YYYY-MM-DD)" MaxLength="100"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rvfDOB" runat="server" ErrorMessage="DOB Required!" ForeColor="Red" ControlToValidate="txtDOB">*</asp:RequiredFieldValidator>
                </div>

                <div class="newdiv5">
                    <asp:DropDownList runat="server" AutoPostBack="true" CssClass="DDList" ID="drpList">
                        <asp:ListItem Value="0">Please Select Gender</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:DropDownList>

                    <asp:FileUpload runat="server" CssClass="upload" ID="fileupload" />
                </div>

                <div class="chkDiv">
                    <asp:Label runat="server" Text="Active"></asp:Label>
                    <asp:CheckBox runat="server" ID="chkbx" Checked="true" />
                </div>

                <div class="btnDiv">
                    <asp:Button runat="server" CssClass="btnSign" ID="btnSignup" Text="Sign Up" OnClick="btnSignup_Click" />
                    <asp:Button runat="server" CssClass="btnCncl" CausesValidation="false" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />
                </div>

                <div>
                    <asp:HyperLink NavigateUrl="~/UserLogin.aspx" runat="server" CssClass="regLink" Text="Already a Member? Click Here to Login"></asp:HyperLink>
                </div>

                <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>

                <asp:ValidationSummary ID="MySummary" runat="server" ForeColor="Red" />





            </form>
        </div>

    </div>
</asp:Content>
