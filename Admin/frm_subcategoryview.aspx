<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="frm_subcategoryview.aspx.cs" Inherits="Admin_frm_subcategoryview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-11" style="box-shadow: 2px 2px 10px #1b93e1; border-radius: 4px; top: 14px;">
                <h3 style="text-align: center;color:#0083ff"><b>SUBCATEGORY DETAILS </b></h3>
                 <div class="form-horizontal">
                     <asp:Label ID="lblcat" runat="server" Text="Category"></asp:Label>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlcat" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlcat_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
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
                                
                                <th scope="col">Subctegory Name</th>
                                
                                <th scope="col" style="color: green">Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%# Container.DataItemIndex + 1%>
                                        </td>
                                        <td><%# Eval("subcat_name") %></td>
                                         <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" Text="edit" CommandName="edt" CommandArgument='<%#Eval("subcat_id") %>'> </asp:LinkButton>
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

