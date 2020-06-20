<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="frm_locationview.aspx.cs" Inherits="Admin_frm_locationview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container">
        <div class="row">
            <div class="col-md-11" style="box-shadow: 2px 2px 10px #1b93e1; border-radius: 4px; top: 14px;">
                <h3 style="text-align: center;color:#0083ff"><b>LOCATION DETAILS </b></h3>
                 <div class="form-horizontal">
                     <asp:Label ID="lbldistrict" runat="server" Text="District"></asp:Label>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddldistrict" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
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
                                
                                <th scope="col">Location Name</th>
                                
                                <th scope="col" style="color: green">Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand1">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%# Container.DataItemIndex + 1%>
                                        </td>
                                        <td><%# Eval("locationname") %></td>
                                         <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" Text="edit" CommandName="edt" CommandArgument='<%#Eval("location_id") %>'> </asp:LinkButton>
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

