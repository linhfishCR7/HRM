Public Class staffU_DoiMatKhau
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("StaffLoginOK") Or Not Session("TinhTang") = "1" Then
            Response.Redirect("staffLogin.aspx")
        End If
    End Sub

End Class