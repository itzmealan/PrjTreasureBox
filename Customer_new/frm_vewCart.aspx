<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_new/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frm_vewCart.aspx.cs" Inherits="Customer_new_frm_vewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand">
                                  
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

