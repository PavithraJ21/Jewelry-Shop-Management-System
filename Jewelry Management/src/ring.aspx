<%@ Page Title="" Language="C#" MasterPageFile="~/Sitejms1.Master" AutoEventWireup="true" CodeBehind="ring.aspx.cs" Inherits="JMS.ring" %>
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
    <div>
        <form id="form1" runat="server">
        <div>
       <!--     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProductInsert.aspx">Show Shopping Cart</asp:HyperLink>-->
            <br />
            <asp:DataList ID="DataList1" runat="server" CellPadding="3" CellSpacing="1" CssClass="auto-style1" DataKeyField="Jewel_Id" DataSourceID="SqlDataSource1" Height="569px" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal" Width="1288px">
                <ItemTemplate>
                    <table border="1" class="auto-style2">
                        <tr>
                            <td class="auto-style4">Design ID:<asp:Label ID="Label2" runat="server" Text='<%# Eval("Jewel_Id") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Jewel_Name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Jewel_Description") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Weight:<asp:Label ID="Label6" runat="server" Text='<%# Eval("Weight") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Price:<asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Jewel_Id")%>' CommandName="addtocart" Height="37px" ImageAlign="Middle" ImageUrl="~/image/buynow.png" Width="58px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Jewel1]"></asp:SqlDataSource>
        </div>
    </form>
  </div>
</asp:Content>
