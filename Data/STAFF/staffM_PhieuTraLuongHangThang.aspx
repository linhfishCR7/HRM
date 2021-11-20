<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Data/STAFF/STAFF.Master" CodeBehind="staffM_PhieuTraLuongHangThang.aspx.vb" Inherits="HRM.staffM_PhieuTraLuongHangThang" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        
     </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="list-group">
        <div class="list-group-item list-group-item-success">
            QUẢN LÝ PHIẾU TRẢ LƯƠNG
        </div>    
        
        <%--<div class="list-group-item">
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
        </div>   --%> 
               
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

        <div class="list-group-item document">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource1_TienLuong" Width="100%" DataKeyNames="MaLuong">
                <Columns>         
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Phiếu Lương"></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="100px" Wrap="False" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="MaLuong" HeaderText="Mã Lương" SortExpression="MaLuong" InsertVisible="False" ReadOnly="True" >
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <%--<asp:BoundField DataField="MaKy" HeaderText="Mã Kỳ" SortExpression="MaKy">
                    </asp:BoundField> --%>                  
                </Columns>
                <PagerSettings PageButtonCount="20" />
            </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
            
        </div>
    </div>

    <div class="row">
        <asp:SqlDataSource ID="SqlDataSource1_TienLuong" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT MaLuong, Ngay, MaNhanVien, LuongCoBan, PhuCap, HoTroKhac FROM hr_Luong WHERE (MaNhanVien = @MaNhanVien)">
            <SelectParameters>
                <asp:ControlParameter ControlID="cbNhanSu" Name="MaNhanVien" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>       
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT hr_NhanVien.MaNhanVien, hr_NhanVien.MaNhanVien + '_' + hr_NhanVien.HoLot + ' ' + hr_NhanVien.Ten AS HoTen FROM hr_NhanVien INNER JOIN A00_TaiKhoanNguoiDung ON hr_NhanVien.Email = A00_TaiKhoanNguoiDung.Email WHERE (A00_TaiKhoanNguoiDung.Email = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" />
            </SelectParameters>
        </asp:SqlDataSource>        
    </div>
</asp:Content>
