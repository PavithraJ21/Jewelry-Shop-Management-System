<%@ Page Title="" Language="C#" MasterPageFile="~/Sitejms1.Master" AutoEventWireup="true" CodeBehind="BillPage.aspx.cs" Inherits="JMS.BillPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 87%;
            margin-left: 86px;
            margin-top: 82px;
        }
        .auto-style5 {
            height: 106px;
            text-align: center;
        }
        .auto-style6 {
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
        }
        .auto-style8 {
            width: 333px;
            height: 64px;
        }
        .auto-style9 {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
        .auto-style13 {
            width: 311px;
            height: 64px;
            text-align: justify;
        }
        .auto-style14 {
            width: 311px;
            height: 64px;
        }
        .auto-style15 {
            width: 333px;
            height: 64px;
            text-align: justify;
        }
        .auto-style16 {
            height: 147px;
            text-align: center;
        }
        .auto-style17 {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            background-color: #999999;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<table class="auto-style1">
        <tr>
            <td class="auto-style5" colspan="2"><strong>
                <asp:Label ID="LabelConfirmPurchase" runat="server" CssClass="auto-style6" ForeColor="#FFCC66" Text="BILL"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="LabelBillID" runat="server" CssClass="auto-style9" Text="Bill ID"></asp:Label>
                </strong></td>
            <td class="auto-style15">&nbsp;<asp:Label ID="lblBillid" runat="server" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style9" Text="Customer Name"></asp:Label>
                </strong></td>
            <td class="auto-style15">&nbsp;<asp:Label ID="Label8" runat="server" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>
                <asp:Label ID="LabelCustName" runat="server" CssClass="auto-style9" Text="Order date"></asp:Label>
                </strong></td>
            <td class="auto-style15">
                <asp:Label ID="lblCustName" runat="server" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Street"></asp:Label>
                </strong></td>
            <td class="auto-style15">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="City"></asp:Label>
                </strong></td>
            <td class="auto-style15">
                <asp:Label ID="Label4" runat="server" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="Pincode"></asp:Label>
                </strong></td>
            <td class="auto-style15">
                <asp:Label ID="Label6" runat="server" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="LabelCustMum" runat="server" CssClass="auto-style9" Text="Mobile Number"></asp:Label>
                </strong></td>
            <td class="auto-style8">
                <asp:Label ID="lblMobileNumber" runat="server" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="LabelCustEmail" runat="server" CssClass="auto-style9" Text="E-Mail"></asp:Label>
                </strong></td>
            <td class="auto-style15">
                <asp:Label ID="lblEmail" runat="server" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="LabelTotalCost" runat="server" CssClass="auto-style9" Text="TotalCost"></asp:Label>
                </strong></td>
            <td class="auto-style8">
                <asp:Label ID="lblTotalCost" runat="server" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2"><strong>
                <asp:HyperLink ID="HLPurchase" runat="server" BorderStyle="Solid" CssClass="auto-style17" NavigateUrl="~/Homepage.aspx">Thank You For Shopping</asp:HyperLink>
                </strong></td>
        </tr>
    </table>
</asp:Content>
