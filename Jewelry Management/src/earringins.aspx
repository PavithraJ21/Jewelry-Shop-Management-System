<%@ Page Title="" Language="C#" MasterPageFile="~/Sitejms1.Master" AutoEventWireup="true" CodeBehind="earringins.aspx.cs" Inherits="JMS.earringins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 31px;
        text-align: center;
    }
     .auto-style3 {
         text-align: center;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [Jewel_Id], [Jewel_Name], [Jewel_Description], [Price], [Weight], [image] FROM [Jewel1] where [Jewel_Category]='Earring' and [Quantity]>0"></asp:SqlDataSource>
<asp:DataList ID="DataList1" runat="server" CellPadding="0" CellSpacing="15" DataKeyField="Jewel_Id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="2" RepeatDirection="Horizontal">
    <ItemTemplate>
        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style3">Design ID:
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Jewel_Id") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Jewel_Name") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Height="100px" Width="150px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Jewel_Description") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Weight:&nbsp;
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Weight") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Price:&nbsp;
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("Jewel_Id")%>' CommandName="CartAdd" Height="39px" ImageUrl="~/images/buynow.png" Width="59px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
</asp:Content>
