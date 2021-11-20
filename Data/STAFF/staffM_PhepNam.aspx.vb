Public Class staffM_PhepNam
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("StaffLoginOK") Or Not Session("TinhTrang") = "1" Then
            Response.Redirect("staffLogin.aspx")
        End If
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim row As GridViewRow = GridView1.SelectedRow
        Dim MaPhepNam1 As String = row.Cells(1).Text
        Session("MaPhepNam1") = MaPhepNam1
        Response.Redirect("staffR_PhieuBaoNghiPhep")
    End Sub
End Class