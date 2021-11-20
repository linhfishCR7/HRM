<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Data/STAFF/STAFF.Master" CodeBehind="staffM_CV.aspx.vb" Inherits="HRM.staffM_CV" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register TagPrefix="rsweb" Namespace="Microsoft.Reporting.WebForms" Assembly="Microsoft.ReportViewer.WebForms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
     
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="list-group">
        <div class="list-group-item list-group-item-success">
            SƠ YẾU LÝ LỊCH
        </div>
        <div class="list-group-item">
            <div class="form-horizontal" role="form">
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Nhân Viên:" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-4">
                        <asp:DropDownList ID="cbNhanSu" runat="server" DataSourceID="SqlDataSource1" DataTextField="HoTen" DataValueField="MaNhanVien" Style="margin-left: 0px">
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
        </div>

        <div class="list-group-item" style="height: 1100px">
            <rsweb:ReportViewer ID="rpvReport" runat="server" Height="100%" Width="1011" BackColor="LightBlue"
                BorderColor="LightBlue" InternalBorderColor="DarkGray" SplitterBackColor="LightPink" ToolBarItemBorderColor="LightBlue" ToolBarItemHoverBackColor="LightGreen">
                <LocalReport ReportPath="Report/HRM/hrR19a_CV.rdlc" ReportEmbeddedResource="HRM.hrR19a_CV.rdlc" EnableExternalImages="True">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="R_CV" />
                    </DataSources>
                </LocalReport>

            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataByMaNhanVien" TypeName="HRM.dsHRMTableAdapters.vhr_CVTableAdapter" OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:ControlParameter ControlID="cbNhanSu" Name="MaNhanVien" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT hr_NhanVien.MaNhanVien, hr_NhanVien.MaNhanVien + '_' + hr_NhanVien.HoLot + ' ' + hr_NhanVien.Ten AS HoTen FROM hr_NhanVien INNER JOIN A00_TaiKhoanNguoiDung ON hr_NhanVien.Email = A00_TaiKhoanNguoiDung.Email WHERE (A00_TaiKhoanNguoiDung.Email = @email)">
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="email" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
