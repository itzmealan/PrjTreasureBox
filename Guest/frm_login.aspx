<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.master" AutoEventWireup="true" CodeFile="frm_login.aspx.cs" Inherits="Guest_frm_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     </br>
        </br>
        </br>
     </br>
    <div class="container">
        <div class="row">
            <div class="col-md-11" style="box-shadow: 2px 2px 10px #1b93e1; border-radius: 4px; top: 14px;">
                <h3 style="text-align: center"><b>LOGIN</b> </h3>
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="society">Username</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtusername" class="form-control" runat="server" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtusername" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="society">Password</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtpassword" class="form-control" runat="server" Width="500px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button ID="btnsave" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnsave_Click"/>
                            
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

