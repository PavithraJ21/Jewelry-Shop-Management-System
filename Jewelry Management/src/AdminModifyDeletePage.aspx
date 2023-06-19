<%@ Page Title="" Language="C#" MasterPageFile="~/Sitejms1.Master" AutoEventWireup="true" CodeBehind="AdminModifyDeletePage.aspx.cs" Inherits="JMS.AdminModifyDeletePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        font-size: large;
        font-family: "Times New Roman", Times, serif;
    }
        .auto-style3 {
            margin-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p class="auto-style1">
    <br />
    <strong>
    <asp:LinkButton ID="LinkBtnInsert" runat="server" href ="AdminInsertOp.aspx" CssClass ="auto-style2">INSERT</asp:LinkButton>
    </strong>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [Jewel1]" DeleteCommand="DELETE FROM [Jewel1] WHERE [Jewel_Id] = @Jewel_Id" InsertCommand="INSERT INTO [Jewel1] ([Jewel_Id], [Jewel_Name], [Jewel_Description], [Price], [Quantity], [Weight], [Jewel_Category], [image]) VALUES (@Jewel_Id, @Jewel_Name, @Jewel_Description, @Price, @Quantity, @Weight, @Jewel_Category, @image)" UpdateCommand="UPDATE [Jewel1] SET [Jewel_Name] = @Jewel_Name, [Jewel_Description] = @Jewel_Description, [Price] = @Price, [Quantity] = @Quantity, [Weight] = @Weight, [Jewel_Category] = @Jewel_Category, [image] = @image WHERE [Jewel_Id] = @Jewel_Id">
        <DeleteParameters>
            <asp:Parameter Name="Jewel_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Jewel_Id" Type="Int32" />
            <asp:Parameter Name="Jewel_Name" Type="String" />
            <asp:Parameter Name="Jewel_Description" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Jewel_Category" Type="String" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Jewel_Name" Type="String" />
            <asp:Parameter Name="Jewel_Description" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Jewel_Category" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="Jewel_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;</p>

   <p class="auto-style1">
        

       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" Height="473px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="995px">
           <Columns>
               <asp:TemplateField HeaderText="Jewel_Id">
                   <EditItemTemplate>
                       <asp:Label ID="Label11" runat="server" Text='<%# Eval("Jewel_Id") %>'></asp:Label>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label4" runat="server" Text='<%# Eval("Jewel_Id") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" />
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Jewel_Name">
                   <EditItemTemplate>
                       <asp:Label ID="Label12" runat="server" Text='<%# Eval("Jewel_Name") %>'></asp:Label>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label5" runat="server" Text='<%# Eval("Jewel_Name") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" />
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Jewel_Description">
                   <EditItemTemplate>
                       <asp:Label ID="Label13" runat="server" Text='<%# Eval("Jewel_Description") %>'></asp:Label>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label6" runat="server" Text='<%# Eval("Jewel_Description") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" />
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Category">
                   <EditItemTemplate>
                       <asp:Label ID="Label14" runat="server" Text='<%# Eval("Jewel_Category") %>'></asp:Label>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label7" runat="server" Text='<%# Eval("Jewel_Category") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" />
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Weight">
                   <EditItemTemplate>
                       <asp:Label ID="Label15" runat="server" Text='<%# Eval("Weight") %>'></asp:Label>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label8" runat="server" Text='<%# Eval("Weight") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" />
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Quantity">
                   <EditItemTemplate>
                       <asp:Label ID="Label16" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label9" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" />
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Price">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Price") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label10" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" />
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Image">
                   <EditItemTemplate>
                       <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("Image") %>' />
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image") %>' />
                   </ItemTemplate>
                   <ControlStyle Height="100px" Width="150px" />
                   <ItemStyle Height="100px" HorizontalAlign="Center" Width="150px" />
               </asp:TemplateField>
               <asp:TemplateField>
                   <EditItemTemplate>
                       <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Update">Update</asp:LinkButton>
                       &nbsp;
                   </EditItemTemplate>
                   <ItemTemplate>
                       &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                   </ItemTemplate>
                   <ItemStyle HorizontalAlign="Center" />
               </asp:TemplateField>
               <asp:TemplateField>
                   <EditItemTemplate>
                       <asp:LinkButton ID="LinkButton9" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:LinkButton ID="LinkButton8" runat="server" CommandName="Delete">Remove</asp:LinkButton>
                   </ItemTemplate>
               </asp:TemplateField>
           </Columns>
       </asp:GridView>
        

</p>
    <br />
    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>

</asp:Content>
