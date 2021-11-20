﻿Public Class staffM_PhieuTraLuongHangThang
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("StaffLoginOK") Or Not Session("TinhTrang") = "1" Then
            Response.Redirect("staffLogin.aspx")
        End If
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim row As GridViewRow = GridView1.SelectedRow
        Dim MaLuong1 As String = row.Cells(1).Text
        Session("MaLuong1") = MaLuong1
        Response.Redirect("staffR_PhieuLuong.aspx")
    End Sub
End Class