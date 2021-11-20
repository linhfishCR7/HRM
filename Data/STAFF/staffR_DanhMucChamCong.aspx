﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Data/STAFF/STAFF.Master" CodeBehind="staffR_DanhMucChamCong.aspx.vb" Inherits="HRM.staffR_DanhMucChamCong" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<%@ Register TagPrefix="rsweb" Namespace="Microsoft.Reporting.WebForms" Assembly="Microsoft.ReportViewer.WebForms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="list-group">
        <div class="list-group-item list-group-item-success">
            BẢNG CHẤM CÔNG
        </div>
        <div class="list-group-item">
            <div class="btn-group" role="group" aria-label="...">
                <a href="staffR_DanhMucChamCong.aspx" type="button" class="btn btn-sm btn-success">Danh Mục</a>                 
                <a href="staffR_BangChamCong.aspx" type="button" class="btn btn-sm btn-primary">Bảng Chấm Công</a> 
            </div>
        </div>
        <div class="list-group-item">
            <div class="form-horizontal" role="form">                
                <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Nhân Viên:" CssClass="col-md-2 control-label"></asp:Label>
                        <div class="col-md-10">
                            <asp:DropDownList ID="cbNhanSu" runat="server" DataSourceID="SqlDataSource1" DataTextField="HoTen" DataValueField="MaNhanVien">
                            </asp:DropDownList>
                        </div>
                    </div>
                <div class="form-group">
                    <div class="col-md-2">
                        <asp:Label ID="Label1" runat="server" Text="Năm Tài Chính:"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:DropDownList ID="cbNam" runat="server" DataSourceID="SqlDataSource_Nam" DataTextField="Nam" DataValueField="Nam">                            
                        </asp:DropDownList>

                    </div>
                </div>
            </div>
        </div>
        <div class="list-group-item" style="height: 1100px">
            <rsweb:ReportViewer ID="rpvReport" runat="server" Height="100%" Width="1011" BackColor="LightBlue"
                BorderColor="LightBlue" InternalBorderColor="DarkGray" SplitterBackColor="LightPink" ToolBarItemBorderColor="LightBlue" ToolBarItemHoverBackColor="LightGreen">
                <LocalReport ReportPath="Report\STAFF\staffR_DanhMucChamCong.rdlc" ReportEmbeddedResource="HRM.staffR_DanhMucChamCong.rdlc" EnableExternalImages="True">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="staffR_DanhMucChamCong" />
                    </DataSources>
                </LocalReport>

            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataByMaNhanVienVaNam" TypeName="HRM.ChamCongTableAdapters.vhr_ChamCongTableAdapter" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:ControlParameter ControlID="cbNam" Name="Nam" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="cbNhanSu" Name="MaNhanVien" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>

    <div class="row">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT hr_NhanVien.MaNhanVien, hr_NhanVien.MaNhanVien + '_' + hr_NhanVien.HoLot + ' ' + hr_NhanVien.Ten AS HoTen FROM hr_NhanVien INNER JOIN A00_TaiKhoanNguoiDung ON hr_NhanVien.Email = A00_TaiKhoanNguoiDung.Email WHERE (A00_TaiKhoanNguoiDung.Email = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource_Nam" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT * FROM [vfm_Nam] ORDER BY [Nam] DESC"></asp:SqlDataSource>
    </div>
</asp:Content>
