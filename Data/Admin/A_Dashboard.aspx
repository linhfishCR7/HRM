<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Data/Admin/Admin.Master" CodeBehind="A_Dashboard.aspx.vb" Inherits="HRM.A_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">HRM</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
                <h4 class="page-title">Welcome !</h4>
            </div>
        </div>
    </div>
    <!-- end page title -->

    <div class="row">

        <div class="col-xl-3 col-md-6">
            <div class="card-box">
                <div class="float-left" dir="ltr">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <input data-plugin="knob" data-width="70" data-height="70" data-fgcolor="#1abc9c" data-bgcolor="#d1f2eb" value="<%# Eval("NhanVienPhanTram") %>" data-skin="tron" data-angleoffset="0" data-readonly="true" data-thickness=".15">
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                    </asp:Panel>
                </div>
                <div class="text-right">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <h3 class="mb-1"><%# Eval("NhanVien") %> </h3>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                    </asp:Panel>
                    <p class="text-muted mb-1">Nhân Viên</p>
                </div>
            </div>
        </div>
        <!-- end col -->

        <div class="col-xl-3 col-md-6">
            <div class="card-box">
                <div class="float-left" dir="ltr">
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource2">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <input data-plugin="knob" data-width="70" data-height="70" data-fgcolor="#3bafda" data-bgcolor="#d8eff8" value="<%# Eval("CongTyPhanTram") %>" data-skin="tron" data-angleoffset="0" data-readonly="true" data-thickness=".15">
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                    </asp:Panel>
                </div>
                <div class="text-right">
                    <asp:Panel ID="Panel4" runat="server">
                        <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource2">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <h3 class="mb-1"><%# Eval("CongTy") %> </h3>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                    </asp:Panel>
                    <p class="text-muted mb-1">Công Ty</p>
                </div>
            </div>
        </div>
        <!-- end col -->

        <div class="col-xl-3 col-md-6">
            <div class="card-box">
                <div class="float-left" dir="ltr">
                    <asp:Panel ID="Panel5" runat="server">
                        <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource3">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <input data-plugin="knob" data-width="70" data-height="70" data-fgcolor="#f672a7" data-bgcolor="#fde3ed" value="<%# Eval("DuAnPhanTram") %>" data-skin="tron" data-angleoffset="0" data-readonly="true" data-thickness=".15">
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                    </asp:Panel>
                </div>
                <div class="text-right">
                    <asp:Panel ID="Panel6" runat="server">
                        <asp:ListView ID="ListView6" runat="server" DataSourceID="SqlDataSource3">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <h3 class="mb-1"><%# Eval("DuAn") %> </h3>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                    </asp:Panel>
                    <p class="text-muted mb-1">Dự Án</p>
                </div>
            </div>
        </div>
        <!-- end col -->

        <div class="col-xl-3 col-md-6">
            <div class="card-box">
                <div class="float-left" dir="ltr">
                    <asp:Panel ID="Panel7" runat="server">
                        <asp:ListView ID="ListView7" runat="server" DataSourceID="SqlDataSource4">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <input data-plugin="knob" data-width="70" data-height="70" data-fgcolor="#6c757d" data-bgcolor="#e2e3e5" value="<%# Eval("KhachHangPhanTram") %>" data-skin="tron" data-angleoffset="0" data-readonly="true" data-thickness=".15">
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                    </asp:Panel>
                </div>
                <div class="text-right">
                    <asp:Panel ID="Panel8" runat="server">
                        <asp:ListView ID="ListView8" runat="server" DataSourceID="SqlDataSource4">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <h3 class="mb-1"><%# Eval("KhachHang") %> </h3>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                    </asp:Panel>
                    <p class="text-muted mb-1">Khách Hàng</p>
                </div>
            </div>
        </div>
        <!-- end col -->

        </div>
        <!-- end row -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT COUNT(MaNhanVien) AS NhanVien, COUNT(MaNhanVien) * 0.1 AS NhanVienPhanTram FROM hr_NhanVien"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT COUNT(MaCongTy) AS CongTy, COUNT(MaCongTy) * 0.1 AS CongTyPhanTram FROM hr_CongTy"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT COUNT(MaDuAn) AS DuAn, COUNT(MaDuAn) * 0.1 AS DuAnPhanTram FROM dts00_DuAn"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT COUNT(MaKhachHang) AS KhachHang, COUNT(MaKhachHang) * 0.1 AS KhachHangPhanTram FROM mkt_KhachHang"></asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
