Public Class staffM_NhanSu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("StaffLoginOK") Or Not Session("TinhTrang") = "1" Then
            Response.Redirect("staffLogin.aspx")
        End If
    End Sub
    Protected Sub gv_NhanSu_Load(sender As Object, e As EventArgs) Handles gv_NhanSu.Load
        Try
            gv_NhanSu.SelectedIndex = 0
        Catch ex As Exception

        End Try
    End Sub
End Class