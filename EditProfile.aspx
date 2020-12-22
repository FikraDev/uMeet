<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="uMeet.EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/editProfile.css" type="text/css" />

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">

    


    <div class="outerContainer">

        <div class="innerContainer">
            <form runat="server">

                <asp:Literal runat="server"><h3 class="regTitle">Profile Management</h3></asp:Literal>

                <asp:Literal runat="server"><h2>Update Your Profile</h2></asp:Literal>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtUsername" placeholder="Enter Username" MaxLength="15"></asp:TextBox>

                    <asp:RegularExpressionValidator ID="regExUsrname" runat="server" ControlToValidate="txtUsername" ErrorMessage="Alphanumeric Characters Only" ValidationExpression="^[a-zA-Z0-9\s]{7,15}$" ForeColor="Red">*</asp:RegularExpressionValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtFname" placeholder="Enter First Name" MaxLength="100"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rvfname" runat="server" ErrorMessage="First Name Required!" ForeColor="Red" ControlToValidate="txtFname">*</asp:RequiredFieldValidator>
                </div>


                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtLname" placeholder="Enter Last Name" MaxLength="100"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvLname" runat="server" ErrorMessage="First Name Required!" ForeColor="Red" ControlToValidate="txtLname">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtAddress" placeholder="Enter Address" MaxLength="255" TextMode="MultiLine"></asp:TextBox>

                      <asp:RequiredFieldValidator ID="rvfAddress" runat="server" ErrorMessage="Address Required!" ForeColor="Red" ControlToValidate="txtAddress">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtEmail" placeholder="Email Address" MaxLength="255"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="rvfEmail" runat="server" ErrorMessage="Email Field!" ForeColor="Red" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>

                     <asp:RegularExpressionValidator ID="regValEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Email is not well formed" ForeColor="Red" ControlToValidate="txtEmail">*</asp:RegularExpressionValidator>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtPhone" placeholder="Phone Number" MaxLength="15"></asp:TextBox>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtDOB" TextMode="DateTime" placeholder="Enter D.O.B (YYYY-MM-DD)" MaxLength="100"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rvfDOB" runat="server" ErrorMessage="DOB Required!" ForeColor="Red" ControlToValidate="txtDOB">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:DropDownList runat="server" AutoPostBack="true" CssClass="DDList" ID="drpList">
                        <asp:ListItem Value="0">Please Select Gender</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="DOB Required!" ForeColor="Red" ControlToValidate="drpList">*</asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:FileUpload runat="server" CssClass="upload" ID="fileupload" />
                </div>

                <div class="activDiv">
                    <asp:Label runat="server" Text="Active" CssClass="activ"></asp:Label>
                    <asp:CheckBox runat="server" ID="chkbx" Checked="true" />
                </div>

                <div class="btnDiv">
                    <asp:Button runat="server" CssClass="btnUp" ID="btnUpdate" Text="Update Profile" OnClick="btnUpdate_Click" />
                    <asp:Button runat="server" CssClass="btnCncl" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="false"/>
                </div>
                <asp:Label ID="lblErrorMsg" runat="server" CssClass="errMsg"></asp:Label>
                
                <div>

                </div>
            
                <asp:Literal runat="server"><h2>Delete Your Profile</h2></asp:Literal>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtUsrName" placeholder="Enter Username" MaxLength="15"></asp:TextBox>
                </div>
                <div class="btnDiv">
                    <asp:Button runat="server" ID="btnDelete" Text="Delete Profile" CssClass="btnDel" OnClick="btnDelete_Click" />
                    <asp:Button runat="server" CssClass="btnCncl2" ID="btnDelCancel" Text="Cancel" OnClick="btnDelCancel_Click" />
                </div>
                <asp:Label ID="lblErrMsg" runat="server"></asp:Label>

                 <asp:ValidationSummary ID="MySummary" runat="server" ForeColor="Red" />
            </form>
        </div>

    </div>


</asp:Content>
