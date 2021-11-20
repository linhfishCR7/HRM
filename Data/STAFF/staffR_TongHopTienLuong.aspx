<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Data/STAFF/STAFF.Master" CodeBehind="staffR_TongHopTienLuong.aspx.vb" Inherits="HRM.staffR_TongHopTienLuong" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<%@ Register TagPrefix="rsweb" Namespace="Microsoft.Reporting.WebForms" Assembly="Microsoft.ReportViewer.WebForms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="list-group">
        <div class="list-group-item list-group-item-success">
            TỔNG HỢP TIỀN LƯƠNG
        </div>

        <div class="list-group-item">
            <div class="btn-group">
                <button type="button" class="btn btn-sm btn-primary" draggable="true"><i class=" fas fa-tasks"></i> Menu</button>
                <button type="button" class="btn btn-sm btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="staffM_PhieuTraLuongHangThang.aspx">Quản Lý Phiếu Lương</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="staffR_TongHopTienLuong.aspx">Tổng Hợp Tiền Lương</a></li>                    
                </ul>
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
            </div>
        </div>

        <div class="list-group-item" style="height: 1100px">
            <rsweb:ReportViewer ID="rpvReport" runat="server" Height="100%" Width="1011" BackColor="LightBlue"
                BorderColor="LightBlue" InternalBorderColor="DarkGray" SplitterBackColor="LightPink" ToolBarItemBorderColor="LightBlue" ToolBarItemHoverBackColor="LightGreen">
                <LocalReport ReportPath="Report\STAFF\staffR_TongHopTienLuong.rdlc" ReportEmbeddedResource="HRM.staffR_TongHopTienLuong.rdlc" EnableExternalImages="True">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="staffR_TongHopTienLuong" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataByMaNhanVien" TypeName="HRM.dsHRMTableAdapters.vhr_TienLuongTableAdapter" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
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
    </div>

</asp:Content>
