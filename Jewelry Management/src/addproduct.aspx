<%@ Page Title="" Language="C#" MasterPageFile="~/Sitejms1.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="JMS.addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 146px;
        }
        .auto-style2 {
            width: 98%;
            height: 292px;
        }
        .auto-style4 {
            text-align: center;
            width: 246px;
            background-color: #CCFFFF;
        }
        .auto-style5 {
            width: 246px;
            background-color: #CCFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProductInsert.aspx">Show Shopping Cart</asp:HyperLink>
            <br />
            <asp:DataList ID="DataList1" runat="server" CellPadding="3" CellSpacing="1" CssClass="auto-style1" DataKeyField="Jewel_Id" DataSourceID="SqlDataSource1" Height="569px" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal" Width="1288px">
                <ItemTemplate>
                    Jewel_Id:
                    <asp:Label ID="Jewel_IdLabel" runat="server" Text='<%# Eval("Jewel_Id") %>' />
                    <br />
                    Jewel_Name:
                    <asp:Label ID="Jewel_NameLabel" runat="server" Text='<%# Eval("Jewel_Name") %>' />
                    <br />
                    Jewel_Description:
                    <asp:Label ID="Jewel_DescriptionLabel" runat="server" Text='<%# Eval("Jewel_Description") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    <br />
                    Weight:
                    <asp:Label ID="WeightLabel" runat="server" Text='<%# Eval("Weight") %>' />
                    <br />
                    Jewel_Category:
                    <asp:Label ID="Jewel_CategoryLabel" runat="server" Text='<%# Eval("Jewel_Category") %>' />
                    <br />
                    image:
                    <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JewellaryManagementConnectionString %>" SelectCommand="SELECT * FROM [Jewel1]"></asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
