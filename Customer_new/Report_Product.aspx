﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_new/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="Report_Product.aspx.cs" Inherits="Customer_new_Report_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-top: 40PX; font-style: initial">
        <h2 style="margin-top: 20px;">
            <center><b>Product Details</b></center>
        </h2>
    </div>
    <div>

        <div class="container" style="width: 40%;">

            <div class="pull-right" style="margin-left: 276px; margin-top: 20px; margin-bottom: 20px;">
                <asp:Button ID="btnexport" runat="server" CssClass="btn btn-primary" Text="Export to Excel" ValidationGroup="Save" OnClick="btnexport_Click"/>
            </div>
            <div style="margin-top: 50px;">
                <table class=" table table-bordered table-responsive">
                    <tr>
                        <th style="color: green; text-align: center"><b>Sl No</b></th>
                        <th style="color: green; text-align: center"><b>Name</b></th>
                        <th style="color: green; text-align: center"><b>Category</b></th>
                        <th style="color: green; text-align: center"><b>Subcategory</b></th>
                        <th style="color: green; text-align: center"><b>Price</b></th>
                        <th style="color: green; text-align: center"><b>Quantity</b></th>
                        <th style="color: green; text-align: center"><b>Image</b></th>
                        <th style="color: green; text-align: center"><b>Material</b></th>
                        <%--<th style="text-align: center; color: green"><b>Contact Number</b></th>
                        <th style="text-align: center; color: green"><b>E-mail</b></th>--%>

                    </tr>
                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td style="text-align: center"><%#Container.DataItemIndex+1 %></td>
                                <td style="text-align: center"><%#Eval("pr_name")%></td>
                                <td style="text-align: center"><%#Eval("cat_name")%></td>
                                <td style="text-align: center"><%#Eval("subcat_name")%></td>
                                <td style="text-align: center"><%#Eval("pr_price")%></td>
                                <td style="text-align: center"><%#Eval("pr_qnty")%></td>
                               <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# "image/" +Eval("pr_image")%>' Height="100px" Width="100px" /></td>
                                <td style="text-align: center"><%#Eval("pr_meaterial")%></td>
                                <%--<td style="text-align: center"><%#Eval("cus_phone")%></td>
                                <td style="text-align: center"><%#Eval("cus_email")%></td>--%>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
