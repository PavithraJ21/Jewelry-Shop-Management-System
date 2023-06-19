<%@ Page Title="" Language="C#" MasterPageFile="~/Sitejms1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="JMS.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 0px;
            margin-left: 846px;
            margin-top: 0px;
        }
        .auto-style2 {
            width: 100%;
            height: 320px;
            align-content:center;
            top: 100px;
        }
        .auto-style5 {
            font-family: "times New Roman", Times, serif;
        }
        .auto-style9 {
            height: 81px;
        }
        .auto-style10 {
            height: 4px;
        }
        .auto-style11 {
            height: 11px;
        }
        .auto-style12 {
            height: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br/><br />
    <div align="center" class="auto-style1">
    
    <link href="styleadmin.css" rel="stylesheet" />
    <div class ="loginbox" >
        
        <img src ="images/admin.jpg" alt =" Alternate Text " class =" user" />
        <h2>LOGIN HERE</h2>
              <form>
                <asp:Label Text="Email" CssClass="lblemail" runat="server" />
                <asp:TextBox ID="Txtadmin" runat="server" CssClass ="txtemail" placeholder ="Enter Email" />
                <asp:Label Text="Password" CssClass="lblpass" runat="server" />
                <asp:TextBox ID ="Txtpass" runat ="server" CssClass ="txtpass" placeholder ="********" TextMode="Password" />
                <asp:Button Text="LOGIN" CssClass="btnsubmit" runat="server" OnClick="Btn_Submit"/>
                <!--  <asp:Label ID ="Lblmsg" Text="" CssClass="lblemail" runat="server" />
                <asp:LinkButton Text="Change Password" CssClass="btnchange" runat="server" />-->

            </form>
    </div>
        <section>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RfvAdminEmail" runat="server" ControlToValidate="Txtadmin" CssClass="auto-style5" Display="Dynamic" ErrorMessage="Email Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RevAdminEmail" runat="server" ControlToValidate="Txtadmin" CssClass="auto-style5" ErrorMessage="Please Enter Valid Email*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:CompareValidator ID="CvAdminEmail" runat="server" ControlToValidate="Txtadmin" CssClass="auto-style5" ErrorMessage="Email Incorrect*" ForeColor="Red" ValueToCompare="admin119@gmail.com"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RfvAdminPassword" runat="server" ControlToValidate="Txtpass" CssClass="auto-style5" ErrorMessage="Password Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RevAdminPassword" runat="server" ControlToValidate="Txtpass" CssClass="auto-style5" ErrorMessage="Please Enter Valid Password of length 8-10 with Alteast 1 Uppercase character, numbers, special characters*" ForeColor="Red" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:CompareValidator ID="CvAdminPass" runat="server" ControlToValidate="Txtpass" CssClass="auto-style5" ErrorMessage="Password Incorrect*" ForeColor="Red" ValueToCompare="Admin@1234"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        </section>
    </div>
</asp:Content>
