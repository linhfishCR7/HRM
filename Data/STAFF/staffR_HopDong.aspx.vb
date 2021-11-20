Imports Microsoft.Reporting.WebForms

Public Class staffR_HopDong
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session("StaffLoginOK") Or Not Session("TinhTrang") = "1" Then
            Response.Redirect("staffLogin.aspx")
        End If
        If Not Me.IsPostBack Then
            Dim imagePath As String = New Uri(Server.MapPath("~/Content/images/hrm-small.png")).AbsoluteUri
            Dim parameter As New ReportParameter("Logo", imagePath)
            ReportViewer1.LocalReport.SetParameters(parameter)
            ReportViewer1.LocalReport.Refresh()
        End If
    End Sub

End Class