<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_new/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="viewcategory.aspx.cs" Inherits="Customer_viewcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
     <%--<div class="container" style="width:1000px">
        <div class="row">
            <div class="col-md-11" style="box-shadow: 2px 2px 10px #1b93e1; border-radius: 4px; top: 14px;">
                <h3 style="text-align: center;color:#0083ff"><b>PRODUCT DETAILS </b></h3>
                <div class="form-horizontal">
                 

                    <div class="row">
                    
                      
                             
                           
                            <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand"   >
                                  
                                <ItemTemplate>
                                   <div class="col-md-4">
                                    <table class="table table-hover" style="border: 2px solid #adaaaa; box-shadow: 3px 3px 11px #777777; align-items:center;width:200px;height:200px">
                      

                        <tbody>
                                    
                                     <tr>
                                          
                                      
                                        <td style="background-color:brown;color:white;"><%# Eval("category_name") %> </td>
                                      </tr>
                                      
                                   <div class="col-md-4">
                                        <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# "../Admin/img/"+ Eval("image")%>' Height="200px" Width="200px"/></td>
                                        </tr>
                                    <tr>
<%--                                           <td style="color:green;font-size:large;">Rate:<%# Eval("rate") %>/-</td>--%>
                                         
                                        
                                   
                                        
                                       
                            <%--         </tr>
                                       </div>
                                    <tr>
                                        <td style="color:green;">
                                            <asp:LinkButton ID="LinkButton1" runat="server" Text="More Details" CommandName="viewmore" CommandArgument='<%#Eval("category_id") %>' > </asp:LinkButton>
                                        </td>

                                         </tr>
                                      
                            
                             </tbody>
                    </table>
                             </div>
      
                                </ItemTemplate>
                            </asp:ListView>

                            

                       </div>


                </div>
            </div>
        </div>

        <div style="height: 250px;"></div>

    </div>
--%>





     <div class="prdt"> 
		<div class="container">
			<div class="prdt-top">
				<div class="col-md-12 prdt-left">
<div class="product-one">

     <asp:Label ID="lblcat" runat="server" Text="Category"></asp:Label>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlcat" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlcat_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
    </br>
    </br>
     <asp:Label ID="lblsubcat" runat="server" Text="Subcategory"></asp:Label>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlsubcat" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlsubcat_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>

                </br>
                  
   </br>
      <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand1"  >
                                  
                                <ItemTemplate>
                                



                                    
						<div class="col-md-3 product-left p-left">
							<div class="product-main simpleCart_shelfItem">
								<a href='viewcategory.aspx?category_id=<%#Eval("product_id") %>' class="mask"><img class="img-responsive zoom-img" src='<%#"../Customer_new/image/"+ Eval("pr_image") %>' alt="" style="min-height:250px; max-height:250px" /></a>
								<div class="product-bottom">
									<h3><%# Eval("pr_name") %></h3>
                                    
                                     <asp:LinkButton ID="LinkButton1" runat="server" Text="View More" CommandName="view" CommandArgument='<%#Eval("product_id") %>'> </asp:LinkButton>
                                        
									<%--<p>Explore Now</p>--%>
									<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price"><%#"Rs "+Eval("pr_price") %></span></h4>
								</div>
								<div class="srch srch1">
									<span>-50%</span>
								</div>
							</div>
						</div>
                                       
					
      
                                </ItemTemplate>
                            </asp:ListView>


    </div>

                    <div class="clearfix"></div>
                    </div>




               <%--  <div class="col-md-3 prdt-right">
					<div class="w_sidebar">
						<section  class="sky-form">
							<h4>Catogories</h4>
							<div class="row1 scroll-pane">
								<div class="col col-4">
									<label class=""><input type="radio" name="checkbox" checked=""><i></i>All Accessories</label>
								</div>
								<div class="col col-4">								
									<label class=""><input type="radio" name="checkbox"><i></i>Women Watches</label>
									<label class=""><input type="radio" name="checkbox"><i></i>Kids Watches</label><br />
									<label class=""><input type="radio" name="checkbox"><i></i>Men Watches</label>			
								</div>
							</div>
						</section>

                        </div>
        </div>--%>

                <div class="clearfix"></div>

			</div>
            </div>
        </div>



</asp:Content>

