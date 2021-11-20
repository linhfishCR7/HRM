<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Default.Master" CodeBehind="Default.aspx.vb" Inherits="HRM._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <marquee style="color:aqua; font-size: 40px; margin-top: 5px; ">Chào mừng bạn đã đến với hệ thống thông tin quản lý doanh nghiệp trực tuyến.</marquee>
    <!-- popular_destination_area_start  -->
    <div class="popular_destination_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section_title text-center mb_70">
                        <h3>TRUY CẬP HỆ THỐNG</h3>
                        <p>Hệ Thống quản lý nhân sự trực tuyến</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single_destination">
                        <div class="thumb">
                            <img src="/Content/Themes/Study4u/img/undraw_product_iteration_kjok.svg" alt="">
                        </div>
                        <div class="content">
                            <p class="d-flex align-items-center">Nhân Sự <a href="/Login.aspx"></a> </p>

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_destination">
                        <div class="thumb">
                            <img src="/Content/Themes/Study4u/img/undraw_co_workers_re_1i6i.svg" alt="">
                        </div>
                        <div class="content">
                            <p class="d-flex align-items-center">Nhân Viên <a href="/Data/STAFF/staffLogin.aspx"></a> </p>

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_destination">
                        <div class="thumb">
                            <img src="/Content/Themes/Study4u/img/undraw_feeling_proud_qne1.svg" alt="">
                        </div>
                        <div class="content">
                            <p class="d-flex align-items-center">Admin <a href="/Data/Admin/A_Login.aspx"></a> </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- popular_destination_area_end  -->

    <div class="popular_places_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section_title text-center mb_70">
                        <h3>THÔNG TIN NỔI BẬT</h3>
                        <p>Minh họa thông tin</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single_place">
                        <div class="thumb">
                            <img src="/Content/Themes/Study4u/img/place/harvard.jpg" alt="">
                        </div>
                        <div class="place_info">
                            <a href="destination_details.html">
                                <h3>Harvard</h3>
                            </a>
                            <p>United State of America</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_place">
                        <div class="thumb">
                            <img src="/Content/Themes/Study4u/img/undraw_education_f8ru.svg" alt="">
                        </div>
                        <div class="place_info">
                            <a href="destination_details.html">
                                <h3>Sách Báo</h3>
                            </a>
                            <p>Minh Họa</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_place">
                        <div class="thumb">
                            <img src="/Content/Themes/Study4u/img/maytinh.jpg" alt="">
                            <!-- <a href="#" class="prise">$500</a> -->
                        </div>
                        <div class="place_info">
                            <a href="destination_details.html">
                                <h3>Công Nghệ</h3>
                            </a>
                            <p>Minh Họa</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_place">
                        <div class="thumb">
                            <img src="/Content/Themes/Study4u/img/phongcanh.jfif" alt="">
                        </div>
                        <div class="place_info">
                            <a href="destination_details.html">
                                <h3>Thiên Nhiên</h3>
                            </a>
                            <p>Minh Họa</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_place">
                        <div class="thumb">
                            <img src="/Content/Themes/Study4u/img/tuvankhachhang.png" alt="">
                        </div>
                        <div class="place_info">
                            <a href="destination_details.html">
                                <h3>Tư Vấn</h3>
                            </a>
                            <p>Minh Họa</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_place">
                        <div class="thumb">
                            <img src="/Content/Themes/Study4u/img/vanphong.jpeg" alt="">
                        </div>
                        <div class="place_info">
                            <a href="destination_details.html">
                                <h3>Văn Phòng</h3>
                            </a>
                            <p>Minh Họa</p>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="more_place_btn text-center">
                        <a class="boxed-btn4" href="#">Xem Thêm</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
