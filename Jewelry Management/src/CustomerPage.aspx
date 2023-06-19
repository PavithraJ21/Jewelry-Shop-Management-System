<%@ Page Title="" Language="C#" MasterPageFile="~/Sitejms1.Master" AutoEventWireup="true" CodeBehind="CustomerPage.aspx.cs" Inherits="JMS.CustomerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 90%;
            margin-left: 67px;
            margin-top: 73px;
        }
        .auto-style2 {
            height: 70px;
        }
        .auto-style5 {
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
        }
        .auto-style6 {
            text-align: center;
            height: 80px;
        }
        .auto-style7 {
            height: 71px;
        }
        .auto-style9 {
            height: 71px;
            width: 472px;
            text-align: center;
        }
        .auto-style10 {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
        .auto-style11 {
            height: 70px;
            width: 472px;
            text-align: center;
        }
        .auto-style12 {
            margin-top: 0px;
        }
        .auto-style13 {
            height: 135px;
            text-align: center;
        }
        .auto-style15 {
            font-family: "times New Roman", Times, serif;
        }
        .auto-style16 {
            font-family: "times New Roman", Times, serif;
            font-weight: bold;
            font-size: large;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="border: thick solid black" >
        <tr>
            <td class="auto-style6" colspan="2"><strong>
                <asp:Label ID="LabelCustDetails" runat="server" CssClass="auto-style5" ForeColor="#FF9966" Text="CUSTOMER DETAILS"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>
                <br />
                <asp:Label ID="LabelCustName" runat="server" CssClass="auto-style10" Text="NAME"></asp:Label>
                <br />
                </strong></td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="RevCustName" runat="server" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Enter Valid Name*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z]+" ControlToValidate="txtCustName"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtCustName" runat="server" CssClass="auto-style12" Height="33px" Width="364px" AutoPostBack="True"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvCustName" runat="server" ControlToValidate="txtCustName" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Name Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>
                <br />
                <asp:Label ID="LabelMNum" runat="server" CssClass="auto-style10" Text="MOBILE NUMBER"></asp:Label>
                <br />
                </strong></td>
            <td class="auto-style7">
                <asp:RegularExpressionValidator ID="RevCustMobileNumber" runat="server" ControlToValidate="txtMobileNumber" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Mobile Number Must be of 10 valid digits*" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtMobileNumber" runat="server" Height="33px" Width="364px" AutoPostBack="True"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvCustMobileNumber" runat="server" ControlToValidate="txtMobileNumber" CssClass="auto-style15" ErrorMessage="Mobile Number Required to Contact*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>
                <br />
                <asp:Label ID="LabelCustemail" runat="server" CssClass="auto-style10" Text="E-MAIL"></asp:Label>
                <br />
                </strong></td>
            <td class="auto-style2">
                <asp:RegularExpressionValidator ID="RevCustEmail" runat="server" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Enter Valid Email*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtEmail" runat="server" Height="33px" Width="364px" AutoPostBack="True"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvCustEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Email Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2"><strong>
                <asp:Button ID="btnSubmit" runat="server" BackColor="#999999" BorderColor="Black" Border-radius="30%" BorderStyle="Solid" CssClass="auto-style16" ForeColor="Black" Height="52px" Text="SUMBIT" Width="132px" PostBackUrl="~/BillPage.aspx" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
