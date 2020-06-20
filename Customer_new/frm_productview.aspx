<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_new/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frm_productview.aspx.cs" Inherits="Customer_frm_productviewaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-11" style="box-shadow: 2px 2px 10px #1b93e1; border-radius: 4px; top: 14px;">
                <h3 style="text-align: center;color:#0083ff"><b>PRODUCT DETAILS </b></h3>
                <div class="form-horizontal">
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:Button ID="Btnaddnew" runat="server" Text="ADD NEW" CssClass="btn btn-success" OnClick="Btnaddnew_Click"/>
                        </div>
                    </div>
                    <table class="table table-hover" style="border: 2px solid #adaaaa; box-shadow: 3px 3px 11px #777777">
                        <thead>
                            <tr>
                                <th scope="col">Sl No</th>
                                <th scope="col">Name</th>
                                <th scope="col">Category</th>
                                <th scope="col">Subcategory</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Image</th>
                                <th scope="col">Material</th>
                                
                                <th scope="col" style="color: green">Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%# Container.DataItemIndex + 1%>
                                        </td>
                                        <td><%# Eval("pr_name") %></td>
                                        <td><%# Eval("cat_name") %></td>
                                        <td><%# Eval("subcat_name") %></td>
                                        <td><%# Eval("pr_price") %></td>
                                        <td><%# Eval("pr_qnty") %></td>
                                        <%--<td><%# Eval("pr_image") %></td>--%>
                                         <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# "image/" +Eval("pr_image")%>' Height="100px" Width="100px" /></td>
                                        <td><%# Eval("pr_meaterial") %></td>
                                         <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Delete" CommandName="dlt" CommandArgument='<%#Eval("product_id") %>'> </asp:LinkButton>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div style="height: 250px;"></div>

    </div>
</asp:Content>

