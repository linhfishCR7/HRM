<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Data/STAFF/STAFF.Master" CodeBehind="staffM_HopDong.aspx.vb" Inherits="HRM.staffM_HopDong" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="list-group">
        <div class="list-group-item list-group-item-success">
            QUẢN LÝ HỢP ĐỒNG LAO ĐỘNG
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

        <div class="list-group-item document">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource1_HopDongLaoDong" Width="1200px">
                <Columns>         
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Bản Hợp Đồng"></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="150px" Wrap="False" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="MaHopDong" HeaderText="Mã Hợp Đồng" SortExpression="MaHopDong" >
                    <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SoHopDong" HeaderText="Số Hợp Đồng" SortExpression="SoHopDong" >
                    <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TenHopDong" HeaderText="Tên Hợp Đồng" SortExpression="TenHopDong" />
                    <asp:BoundField DataField="MaNhanVien" HeaderText="Mã N.Viên" SortExpression="MaNhanVien" >
                    <ItemStyle Width="100px" />
                    </asp:BoundField>                    
                    <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" ReadOnly="True" SortExpression="HoTen" >   
                    <ItemStyle Width="180px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TuNgay" HeaderText="Từ Ngày" SortExpression="TuNgay" DataFormatString="{0:MM/dd/yyyy}">                    
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DenNgay" HeaderText="Đến Ngày" SortExpression="DenNgay" DataFormatString="{0:MM/dd/yyyy}">
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                </Columns>
                <PagerSettings PageButtonCount="20" />
            </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
            
        </div>
    </div>
    <div class="row">
        <asp:SqlDataSource ID="SqlDataSource1_HopDongLaoDong" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT [MaNhanVien], [HoTen], [MaHopDong], [SoHopDong], [TenHopDong], [TuNgay], [DenNgay] FROM [vhr_HopDongLaoDong] WHERE ([EmailNhanVien] = @EmailNhanVien)">
            <SelectParameters>
                <asp:SessionParameter Name="EmailNhanVien" SessionField="email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRMConnectionString %>" SelectCommand="SELECT hr_NhanVien.MaNhanVien, hr_NhanVien.MaNhanVien + '_' + hr_NhanVien.HoLot + ' ' + hr_NhanVien.Ten AS HoTen FROM hr_NhanVien INNER JOIN A00_TaiKhoanNguoiDung ON hr_NhanVien.Email = A00_TaiKhoanNguoiDung.Email WHERE (A00_TaiKhoanNguoiDung.Email = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
