<%@ Page Title="" Language="C#" MasterPageFile="~/uMeetMaster.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="uMeet.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_Content" runat="server">

     <div class="outerContainer">

        <div class="innerContainer">
            <form runat="server">

                <asp:Literal runat="server"><h3 class="regTitle">Edit Profile</h3></asp:Literal>

                <asp:Literal runat="server"><h2>Edit Your Profile</h2></asp:Literal>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtInputP" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtFname" placeholder="Enter First Name" MaxLength="100"></asp:TextBox>
                </div>


                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtLname" placeholder="Enter Last Name" MaxLength="100"></asp:TextBox>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtAddress" placeholder="Enter Address" MaxLength="255" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtEmail" placeholder="Email Address" MaxLength="255"></asp:TextBox>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtPhone" placeholder="Phone Number" MaxLength="15"></asp:TextBox>
                </div>

                <div>
                    <asp:TextBox runat="server" CssClass="txtInputs" ID="txtDOB" TextMode="DateTime" placeholder="Enter D.O.B (YYYY-MM-DD)" MaxLength="100"></asp:TextBox>
                </div>

                <div>
                    <asp:DropDownList runat="server" AutoPostBack="true" CssClass="DDList" ID="drpList">
                        <asp:ListItem Value="0">Please Select Gender</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div>
                    <asp:FileUpload runat="server" CssClass="upload" ID="fileupload" />
                </div>

                <div>
                    <asp:Label runat="server" Text="Active"></asp:Label>
                    <asp:CheckBox runat="server" ID="chkbx" Checked="true" />
                </div>

                <div class="btnDiv">
                    <asp:Button runat="server" CssClass="btn" ID="btnSignup" Text="Sign Up" OnClick="btnSignup_Click" />
                    <asp:Button runat="server" CssClass="btn" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />
                </div>


                <div>
                    <asp:HyperLink NavigateUrl="~/UserLogin.aspx" runat="server" CssClass="regLink" Text="Already a Member? Login"></asp:HyperLink>
                </div>

                <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>





            </form>
        </div>

    </div>
</asp:Content>
