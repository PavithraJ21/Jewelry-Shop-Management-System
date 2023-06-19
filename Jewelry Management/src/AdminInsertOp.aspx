<%@ Page Title="" Language="C#" MasterPageFile="~/Sitejms1.Master" AutoEventWireup="true" CodeBehind="AdminInsertOp.aspx.cs" Inherits="JMS.Adminoperation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style9 { 
            font-family: "Times New Roman", Times, serif;
            font-size: large;
        }
        .auto-style10 {
            height: 90px;
            background-color: transparent;
            text-align: center;
            border-radius:40px;
        }
        .auto-style11 {
            height: 90px;
            text-align: center;
            outline: none;
            font-size: 30px;
            color: palegoldenrod;
            cursor: pointer;
            border-radius:70px;
            border-top-left-radius:80px;
            transition: .3s ease-in-out;
        }
        
        .auto-style13 {
            width: 540px;
            height: 90px;
            text-align: center;
        }
        .auto-style14 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style15 {
            margin-left: 0px;
        }
    .auto-style16 {
        font-family: "times New Roman", Times, serif;
    }
        .auto-style17 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
        <tr>
            <td colspan="2" class="auto-style17">
               
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Maroon" NavigateUrl="~/AdminModifyDeletePage.aspx">&lt;-Click here to go back</asp:HyperLink>
               
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LableEnterNJewel" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#993333" Text="ENTER NEW JEWEL DETAILS" CssClass="auto-style14"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelDesignID" runat="server" style= "align-content" Font-Bold="True" ForeColor="#003300" Text="DesignID" CssClass="auto-style9" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:RegularExpressionValidator ID="Revdesignid" runat="server" ControlToValidate="txtDesignID" CssClass="auto-style16" ErrorMessage="Enter valid DesignID*" ForeColor="Red" ValidationExpression="[0-9]{4,}"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtDesignID" runat="server" Width="293px" Height="35px" OnTextChanged="txtDesignID_TextChanged"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="Rfvdesignid" runat="server" ControlToValidate="txtDesignID" CssClass="auto-style16" ErrorMessage="DesignID Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="LabelJewelName" runat="server" CssClass="auto-style9" Text="JewelName" Font-Size="X-Large"></asp:Label>
                </strong></td>
            <td class="auto-style10">
                <asp:RegularExpressionValidator ID="Revjewelname" runat="server" ControlToValidate="txtJewelName" CssClass="auto-style16" Display="Dynamic" ErrorMessage="Enter valid Jewel Name*" ForeColor="Red" ValidationExpression="[A-Za-z ]+"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtJewelName" runat="server" Width="293px" Height="35px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="Rfvjewelname" runat="server" ControlToValidate="txtJewelName" CssClass="auto-style16" ErrorMessage="Jewel Name required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="LabelDescription" runat="server" CssClass="auto-style9" Font-Bold="True" Text="Description" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtDescription" runat="server" Width="293px" Height="35px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="Rfvdescription" runat="server" ControlToValidate="txtDescription" CssClass="auto-style16" ErrorMessage="Description Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="LabelPrice" runat="server" CssClass="auto-style9" Text="Price" Font-Size="X-Large"></asp:Label>
                </strong></td>
            <td class="auto-style10">
                <asp:RegularExpressionValidator ID="Revprice" runat="server" ControlToValidate="txtPrice" CssClass="auto-style16" ErrorMessage="Enter Valid Price*" ForeColor="Red" ValidationExpression="[0-9]{4,}"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtPrice" runat="server" Width="293px" Height="35px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="Rfvprice" runat="server" ControlToValidate="txtPrice" CssClass="auto-style16" ErrorMessage="Price Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="LabelQuantity" runat="server" CssClass="auto-style9" Text="Quantity" Font-Size="X-Large"></asp:Label>
                </strong></td>
            <td class="auto-style10">
                <br />
                <asp:TextBox ID="txtQuantity" runat="server" Width="293px" Height="35px"></asp:TextBox>

                <br />
                <asp:RequiredFieldValidator ID="Rfvquantity" runat="server" ControlToValidate="txtQuantity" CssClass="auto-style16" ErrorMessage="Quantity Required*" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="LabelWeight" runat="server" CssClass="auto-style9" Text="Weight" Font-Size="X-Large"></asp:Label>
                </strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="txtWeight" runat="server" Width="293px" Height="35px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="Rfvweight" runat="server" ControlToValidate="txtWeight" CssClass="auto-style16" ErrorMessage="Weight Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="LabelCategory" runat="server" CssClass="auto-style9" Text="Category" Font-Size="X-Large"></asp:Label>
                </strong></td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownCategory" runat="server" CssClass="auto-style15" Height="40px" Width="293px">
                    <asp:ListItem>Bangles</asp:ListItem>
                    <asp:ListItem>Rings</asp:ListItem>
                    <asp:ListItem>Pendant</asp:ListItem>
                    <asp:ListItem>Diamond</asp:ListItem>
                    <asp:ListItem>Necklace</asp:ListItem>
                    <asp:ListItem>Earrings</asp:ListItem>
                    <asp:ListItem>Haram</asp:ListItem>
                    <asp:ListItem>Mangalyam</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="Rfvcategory" runat="server" ControlToValidate="DropDownCategory" CssClass="auto-style16" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>
                <asp:Label ID="LabelImage" runat="server" CssClass="auto-style9" Text="Image" Font-Size="X-Large"></asp:Label>
                </strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="txtImage" runat="server" Width="293px" Height="35px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="Rfvimage" runat="server" ControlToValidate="txtImage" CssClass="auto-style16" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnInsert" runat="server" Text="INSERT" Width="185px" BackColor="#999999" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="#333333" OnClick="BtnInsert_Click" BorderColor="Black" BorderStyle="Solid" />
            </td>
        </tr>
    </table>

</asp:Content>
