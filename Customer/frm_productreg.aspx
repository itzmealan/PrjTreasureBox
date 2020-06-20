<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="frm_productreg.aspx.cs" Inherits="Guest_frm_productreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-11" style="box-shadow: 2px 2px 10px #1b93e1; border-radius: 4px; top: 14px;">
                <h3 style="text-align: center"><b> PRODUCT REGISTRATION</b> </h3>
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="society">Name</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtprname" class="form-control" runat="server" Width="500px" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtprname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="society">Category</label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlcat" runat="server" CssClass="form-control" Width="500px" OnSelectedIndexChanged="ddlcat_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="ddlcat" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                         <div class="form-group">
                        <label class="control-label col-sm-2" for="society">Subcategory</label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlsubcat" runat="server" CssClass="form-control" Width="500px" OnSelectedIndexChanged="ddlsubcat_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="ddlsubcat" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="society">Price</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtprice" class="form-control" runat="server" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtprice" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="society">Quantity</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtqnty" class="form-control" runat="server" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtqnty" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                   <div class="form-group">
                        <label class="control-label col-sm-2" for="society">Image</label>
                        <div class="col-sm-10">
                            <asp:FileUpload ID="FileUpload1" runat="server" Width=""/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                   
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="Materials">Materials</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtmaterial" class="form-control" runat="server" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ControlToValidate="txtmaterial" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                   <%-- <div class="form-group">
                        <label class="control-label col-sm-2" for="gender">Gender</label>
                        <div class="col-sm-10">
                            <asp:RadioButtonList ID="rdbgender" runat="server" RepeatDirection="Horizontal" Height="16px" Width="190px" BackColor="White">
                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                   <%-- <div class="form-group">
                        <label class="control-label col-sm-2" for="place">Address</label>
                        <div class="col-sm-10">

                            <asp:TextBox ID="txtadress" TextMode="MultiLine" class="form-control" runat="server" Width="500px" MaxLength="400"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtadress" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="hourrate">Hourly Rate</label>
                        <div class="col-sm-10">

                            <asp:TextBox ID="txthourrate" class="form-control" runat="server" Width="500px" MaxLength="40"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="txthourrate" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="mobno">Mobile Number</label>
                        <div class="col-sm-10">

                            <asp:TextBox ID="txtmobno" class="form-control" runat="server" Width="500px" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtmobno" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Mobno" ControlToValidate="txtmobno" ForeColor="Red" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                        </div>
                    </div>--%>
                  <%--  <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Email</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtemail" class="form-control" runat="server" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid emailid" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>--%>
                    <%--<div class="form-group">
                        <label class="control-label col-sm-2" for="email">Office Email</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtofficeemail" class="form-control" runat="server" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtofficeemail"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid emailid" ControlToValidate="txtofficeemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>--%>
                   <%-- <div class="form-group" runat="server" id="d1">
                        <label class="control-label col-sm-2" for="pswd">Password</label>
                        <div class="col-sm-10">

                            <asp:TextBox ID="txtpasswd" class="form-control" runat="server" Width="500px" TextMode="SingleLine" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="txtpasswd" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>--%>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnsave_Click" />
                            
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

