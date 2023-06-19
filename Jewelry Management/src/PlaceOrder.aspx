<%@ Page Title="" Language="C#" MasterPageFile="~/Sitejms1.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="JMS.PlaceOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 100%;
        }
        .auto-style24 {
            width: 402px;
        }
        
        .auto-style27 {
            height: 27px;
        }
        .auto-style30 {
            width: 148px;
            height: 67px;
        }
        .auto-style31 {
            height: 67px;
        }
        .auto-style32 {
            font-family: "times New Roman", Times, serif;
            font-size: large;
        }
        .auto-style33 {
            height: 67px;
            font-family: "times New Roman", Times, serif;
            font-size: large;
        }
        .auto-style34 {
            width: 148px;
            height: 67px;
            font-family: "times New Roman", Times, serif;
            font-size: large;
        }
        .auto-style35 {
            font-family: "times New Roman", Times, serif;
            font-weight: bold;
        }
    .auto-style36 {
        font-family: "times New Roman", Times, serif;
    }
        .auto-style15 {
            font-family: "times New Roman", Times, serif;
        }
        </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Maroon" NavigateUrl="~/CartAdd.aspx">&lt;- click here to go back</asp:HyperLink>
        <br />
    </p>
    <table class="auto-style23">
        <tbody class="auto-style36">
        <tr>
            <td class="auto-style24"><strong>Order Id</strong></td>
            <td>
                <strong>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Order Date</strong></td>
            <td>
                <strong>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" EmptyDataText="No Product Available" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.No.">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="designid" HeaderText="Design ID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Jewel_Name" HeaderText="Jewel_Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                <ControlStyle Height="100px" Width="150px" />
                <ItemStyle HorizontalAlign="Center" Height="100px" Width="150px" />
            </asp:ImageField>
            <asp:BoundField DataField="Description" HeaderText=" Description">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Weight" HeaderText="Weight">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
&nbsp;
    
    <br />
    <table class="auto-style23" align ="center">
        <tr>
            <td class="auto-style30">
                <strong>
                <br />
                <asp:Label ID="txtname" runat="server" Text="Name" CssClass="auto-style32"></asp:Label>
                <br />
                </strong>
                <asp:RequiredFieldValidator ID="RfvCustname" runat="server" ControlToValidate="TxtCustName" CssClass="auto-style36" ErrorMessage="Name Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TxtCustName" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RevCustName" runat="server" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Enter Valid Name*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z]+" ControlToValidate="TxtCustName"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">
                <strong>
                <asp:Label ID="txtemail" runat="server" Text="Email Id" CssClass="auto-style32"></asp:Label>
                <br />
                </strong>
                <asp:RequiredFieldValidator ID="Rfvemail" runat="server" ControlToValidate="TxtCustemailid" CssClass="auto-style36" Display="Dynamic" ErrorMessage="Email Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TxtCustemailid" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RevCustEmail" runat="server" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Enter Valid Email*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TxtCustemailid"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">
                <strong>
                <asp:Label ID="txtmobilnum" runat="server" Text="MobileNo" CssClass="auto-style32"></asp:Label>
                <br />
                </strong>
                <asp:RequiredFieldValidator ID="Rfvmobilenum" runat="server" ControlToValidate="TxtMobilenum" CssClass="auto-style36" ErrorMessage="MobileNumber required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TxtMobilenum" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RevCustMobilenumber" runat="server" ControlToValidate="TxtMobilenum" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Mobile Number Must be of 10 valid digits*" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style34"><strong>Street<br />
                </strong>
                <asp:RequiredFieldValidator ID="Rfvstreet" runat="server" ControlToValidate="TxtStreet" ErrorMessage="Required*" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TxtStreet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">
                <strong>City<br />
                </strong>
                <asp:RequiredFieldValidator ID="Rfvcity" runat="server" ControlToValidate="TxtCity" ErrorMessage="Required*" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
            <td class="auto-style33">
                <strong>Pincode<br />
                </strong>
                <asp:RequiredFieldValidator ID="Rfvpincode" runat="server" ControlToValidate="TxtPincode" Display="Dynamic" ErrorMessage="Required*" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="TxtPincode" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="Revpincode" runat="server" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Enter Valid Pincode(must be of 6 digits)*" ForeColor="Red" ValidationExpression="[0-9]{6}" ControlToValidate="TxtPincode"></asp:RegularExpressionValidator>
        </td>
        </tr>
        <tr>
            <td class="auto-style27" colspan="2">
                <strong>
                <asp:Button ID="btnpalceorder" runat="server" OnClick="Button1_Click" Text="Place Order" CssClass="auto-style35" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                </strong>
        </td>
        </tr>
        <tr>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style27">
        </td>
        </tr>
    </table>
    
</asp:Content>
