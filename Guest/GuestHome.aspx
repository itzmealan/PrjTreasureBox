<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.master" AutoEventWireup="true" CodeFile="GuestHome.aspx.cs" Inherits="Guest_GuestHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="banner jarallax">
        <div class="banner-info">
            <div class="container">
                <div class="w3-banner-info">
                    <div class="slider">
                        <div class="callbacks_container">
                            <ul class="rslides callbacks callbacks1" id="slider4">
                                <li>
                                    <div class="w3layouts-banner-info">
                                        <h3>Eat. Sleep. Buy. Repeat.</h3>
                                        <p>We have everything you ever dreamed of...</p>
                                        <div class="w3ls-button">
                                            <a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="w3layouts-banner-info">
                                        <h3>Surf to know more.</h3>
                                        <p>We have everything you ever dreamed of...</p>
                                        <div class="w3ls-button">
                                            <a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="w3layouts-banner-info">
                                        <h3>we got you.!</h3>
                                        <p>We have everything you ever dreamed of...</p>
                                        <div class="w3ls-button">
                                            <a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                        <script>
                            // You can also use "$(window).load(function() {"
                            $(function () {
                                // Slideshow 4
                                $("#slider4").responsiveSlides({
                                    auto: true,
                                    pager: true,
                                    nav: false,
                                    speed: 400,
                                    namespace: "callbacks",
                                    before: function () {
                                        $('.events').append("<li>before event fired.</li>");
                                    },
                                    after: function () {
                                        $('.events').append("<li>after event fired.</li>");
                                    }
                                });

                            });
                        </script>
                        <!--banner Slider starts Here-->
                    </div>
                </div>
            </div>
        </div>

    </div>
   <%-- <!-- services -->
    <div class="services">
        <div class="container">
            <div class="agileits-title">
                <h2>Our Services</h2>
                <p>Aliquam maximus cras cursus, nunc sit amet </p>
            </div>

            <div class="services-agileinfo">
                <div class="col-sm-4 col-xs-6 services-w3grids">
                    <div class="services-icon hvr-radial-in">
                        <i class="fa fa-anchor" aria-hidden="true"></i>
                    </div>
                    <p>Sagittis donec non nibh in dui finibus. Duis suscipit arcu vel rhoncus molestie .</p>
                </div>
                <div class="col-sm-4 col-xs-6 services-w3grids">
                    <div class="services-icon hvr-radial-in">
                        <i class="fa fa-line-chart" aria-hidden="true"></i>
                    </div>
                    <p>Sagittis donec non nibh in dui finibus. Duis suscipit arcu vel rhoncus molestie .</p>
                </div>
                <div class="col-sm-4 col-xs-6 services-w3grids">
                    <div class="services-icon hvr-radial-in">
                        <i class="fa fa-check-square-o" aria-hidden="true"></i>
                    </div>
                    <p>Sagittis donec non nibh in dui finibus. Duis suscipit arcu vel rhoncus molestie .</p>
                </div>
                <div class="col-sm-4 col-xs-6 services-w3grids">
                    <div class="services-icon hvr-radial-in">
                        <i class="fa fa-ship" aria-hidden="true"></i>
                    </div>
                    <p>Sagittis donec non nibh in dui finibus. Duis suscipit arcu vel rhoncus molestie .</p>
                </div>
                <div class="col-sm-4 col-xs-6 services-w3grids">
                    <div class="services-icon hvr-radial-in">
                        <i class="fa fa-truck" aria-hidden="true"></i>
                    </div>
                    <p>Sagittis donec non nibh in dui finibus. Duis suscipit arcu vel rhoncus molestie .</p>
                </div>
                <div class="col-sm-4 col-xs-6 services-w3grids">
                    <div class="services-icon hvr-radial-in">
                        <i class="fa fa-plane" aria-hidden="true"></i>
                    </div>
                    <p>Sagittis donec non nibh in dui finibus. Duis suscipit arcu vel rhoncus molestie .</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- //services -->--%>

</asp:Content>

