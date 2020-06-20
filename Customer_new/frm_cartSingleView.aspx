<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_new/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="frm_cartSingleView.aspx.cs" Inherits="Customer_new_frm_cartSingleView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <!--start-single-->
	<div class="single contact">
		<div class="container">
			<div class="single-main">
				<div class="col-md-9 single-main-left">
				<div class="sngl-top">
					<div class="col-md-5 single-top-left">	
						<div class="flexslider">
							  <ul class="slides">
                                   <asp:ListView ID="ListView1" runat="server"   >
                                  
                                <ItemTemplate>
                                

								<li data-thumb='<%#"../Customer_new/image/"+Eval("pr_image") %>'>
									<div class="thumb-image"> <img src='<%#"../Customer_new/image/"+Eval("pr_image") %>' data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<%--<li data-thumb='<%#"../OWNER/upload/"+Eval("product_image2") %>'>
									 <div class="thumb-image"> <img src='<%#"../OWNER/upload/"+Eval("product_image2") %>' data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb='<%#"../OWNER/upload/"+Eval("product_image3") %>'>
									 <div class="thumb-image"> <img src='<%#"../OWNER/upload/"+Eval("product_image3") %>' data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li> --%>


                                    </ItemTemplate>
                                       </asp:ListView>
							  </ul>
						</div>
						<!-- FlexSlider -->
						<script src="js/imagezoom.js"></script>
						<script defer src="js/jquery.flexslider.js"></script>
						<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

						<script>
						    // Can also be used with $(document).ready()
						    $(window).load(function () {
						        $('.flexslider').flexslider({
						            animation: "slide",
						            controlNav: "thumbnails"
						        });
						    });
						</script>
					</div>	



                     <asp:ListView ID="ListView2" runat="server" OnItemCommand="ListView2_ItemCommand">
                                  
                                <ItemTemplate>
                                


					<div class="col-md-7 single-top-right">
						<div class="single-para simpleCart_shelfItem">
						<h2><%#Eval("pr_name") %></h2>
							<div class="star-on">
<%--								<ul class="star-footer">
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
									</ul>--%>
								<%--<div class="review">
									<a href="#"> 1 customer review </a>
									
								</div>--%>
							<div class="clearfix"> </div>
							</div>
							
							
                           
                             <b><p>Rs: <%#Eval("pr_price") %></p></b>
							  <b><p>Material: <%#Eval("pr_meaterial") %></p></b>
<%--                             <b><p>Height: <%#Eval("height") %></p></b>
                             <b><p>Number Of Tiles In a Packet : <%#Eval("noOfTiles") %></p></b>
                             <b><p>Description : <%#Eval("description") %></p></b>--%>

							  <%--							<div class="available">
								<ul>
									<li>Color
										<select>
										<option>Silver</option>
										<option>Black</option>
										<option>Dark Black</option>
										<option>Red</option>
									</select></li>
								<li class="size-in">Size<select>
									<option>Large</option>
									<option>Medium</option>
									<option>small</option>
									<option>Large</option>
									<option>small</option>
								</select></li>
								<div class="clearfix"> </div>
							</ul>
						</div>--%>
							<%--<ul class="tag-men">
								<li><span>TAG</span>
								<span class="women1">: Women,</span></li>
								<li><span>SKU</span>
								<span class="women1">: CK09</span></li>
							</ul>--%>
<%--                            <asp:Button ID="Button1" runat="server" Text="ADD TO CART" CssClass="add-cart" BackColor="Black" ForeColor="White" Height="37px" OnClick="Button1_Click"  />--%>
								<%--<a href='cartdetails.aspx?product_id=<%#Eval("product_id") %>' class="add-cart item_add">ADD TO CART</a>
							<a href='Deliveryaddress.aspx?product_id=<%#Eval("product_id") %>' class="add-cart item_add">BUY NOW</a>
			--%>			
                            
                          <asp:LinkButton ID="LinkButton1" runat="server" Text="Delete" CommandName="dlt" CommandArgument="product_id" CssClass="add-cart" BackColor="Black" ForeColor="White" Height="37px" OnClick="LinkButton1_Click"> </asp:LinkButton>                      
                          <asp:LinkButton ID="LinkButton2" runat="server" Text="Buy Now" CommandName="buynow" CommandArgument="product_id" CssClass="add-cart" BackColor="Black" ForeColor="White" Height="37px" OnClick="LinkButton2_Click1"> </asp:LinkButton>                      
                        
                        


						</div>
					</div>

                                    </ItemTemplate>
                         </asp:ListView>
					<div class="clearfix"> </div>
				</div>
                    <%-- <b><p>Quantity : <asp:TextBox ID="txtQty" MinLength="0" TextMode="Number" runat="server" min="1" Text="1"></asp:TextBox></p></b>--%>
                        
		
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-single-->

</asp:Content>

