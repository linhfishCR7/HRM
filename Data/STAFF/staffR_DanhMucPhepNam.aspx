<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Data/STAFF/STAFF.Master" CodeBehind="staffR_DanhMucPhepNam.aspx.vb" Inherits="HRM.staffR_DanhMucPhepNam" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<%@ Register TagPrefix="rsweb" Namespace="Microsoft.Reporting.WebForms" Assembly="Microsoft.ReportViewer.WebForms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="list-group">
        <div class="list-group-item list-group-item-success">
            DANH MỤC PHÉP NĂM
        </div>       
        
        <div class="list-group-item">
            <div class="btn-group">
                <button type="button" class="btn btn-sm btn-primary" draggable="true"><i class=" fas fa-tasks"></i> Menu</button>
                <button type="button" class="btn btn-sm btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="staffM_PhepNam.aspx">Quản Lý Phép Năm</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="staffR_DanhMucPhepNam.aspx">Danh Mục Phép Năm</a></li>                    
                </ul>
            </div>
        </div>
         
        <div class="list-group-item">
                <div class="form-horizontal" role="form">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Nhân Viên:" CssClass="col-md-2 control-label"></asp:Label>
                        <div class="col-md-10">
                            <asp:DropDownList ID="cbNhanVien" runat="server" DataSourceID="SqlDataSource2_NhanSu" DataTextField="HoTen" DataValueField="MaNhanVien">                                
                            </asp:DropDownList>
                        </div>                       
                    </div>
                </div>
            </div>
        <div class="list-group-item" style="height: 1100px">
            <rsweb:ReportViewer ID="rpvReport" runat="server" Height="100%" Width="1011" BackColor="LightBlue"
                BorderColor="LightBlue" InternalBorderColor="DarkGray" SplitterBackColor="LightPink" ToolBarItemBorderColor="LightBlue" ToolBarItemHoverBackColor="LightGreen">
                <LocalReport ReportPath="Report\STAFF\staffR_DanhMucPhepNam.rdlc" ReportEmbeddedResource="HRM.staffR_DanhMucPhepNam.rdlc" EnableExternalImages="True">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="staffR_DanhMucPhepNam" />
                    </DataSources>
                </LocalReport>

            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataByMaNhanVien" TypeName="HRM.dsHRMTableAdapters.vhr_PhepNamTableAdapter" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:ControlParameter ControlID="cbNhanVien" Name="MaNhanVien" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
    <div class="row">
        <asp:SqlDataSource ID="SqlDataSource2_NhanSu" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT hr_NhanVien.MaNhanVien, hr_NhanVien.MaNhanVien + '_' + hr_NhanVien.HoLot + ' ' + hr_NhanVien.Ten AS HoTen FROM hr_NhanVien INNER JOIN A00_TaiKhoanNguoiDung ON hr_NhanVien.Email = A00_TaiKhoanNguoiDung.Email WHERE (A00_TaiKhoanNguoiDung.Email = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
