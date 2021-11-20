<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Data/STAFF/STAFF.Master" CodeBehind="staffR_PhieuBaoNghiPhep.aspx.vb" Inherits="HRM.staffR_PhieuBaoNghiPhep" %>
<%@ Register TagPrefix="rsweb" Namespace="Microsoft.Reporting.WebForms" Assembly="Microsoft.ReportViewer.WebForms" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="list-group">
        <div class="list-group-item list-group-item-success">
            PHIẾU BÁO NGHỈ PHÉP
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

        <div class="list-group-item" style="height: 1100px">
            <rsweb:ReportViewer ID="rpvReport" runat="server" Height="100%" Width="1011" BackColor="LightBlue"
                BorderColor="LightBlue" InternalBorderColor="DarkGray" SplitterBackColor="LightPink" ToolBarItemBorderColor="LightBlue" ToolBarItemHoverBackColor="LightGreen">
                <LocalReport ReportPath="Report\HRM\hrR16a_PhieuBaoNghiPhep.rdlc" ReportEmbeddedResource="HRM.hrR16a_PhieuBaoNghiPhep.rdlc" EnableExternalImages="True">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="dsPhieuBaoNghiPhep" />
                    </DataSources>
                </LocalReport>

            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataByMaPhepNam" TypeName="HRM.dsHRMTableAdapters.vhr_PhepNamTableAdapter" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:SessionParameter Name="MaPhepNam" SessionField="MaPhepNam1" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
    <div class="row">
    </div>
</asp:Content>
