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

                <div class="activDiv">
                    <asp:Label runat="server" Text="Active" CssClass="activ"></asp:Label>
                    <asp:CheckBox runat="server" ID="chkbx" Checked="true" />
                </div>

                <div class="btnDiv">
                    <asp:Button runat="server" CssClass="btnUp" ID="btnUpdate" Text="Update Profile" OnClick="btnUpdate_Click" />
                    <asp:Button runat="server" CssClass="btnCncl" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />
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
            </form>
        </div>

    </div>


</asp:Content>
