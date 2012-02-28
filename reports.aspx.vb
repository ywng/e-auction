Public Class reports
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            tbCustomerId.Focus()
        End If
        'lbDebugMsg.Text = ucDateFrom.UcDate

    End Sub

    Private Sub btGo_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btGo.Click
        'If String.IsNullOrWhiteSpace(tbCustomerId.Text) Then
        '    'lbDebugMsg.Text = "bind to dsSelectAll"
        '    gvCusomerProfile.DataSourceID = dsCustomerProfile.ID
        'Else
        '    'lbDebugMsg.Text = "bind to dsSelectSpecific"
        '    gvCusomerProfile.DataSourceID = dsCustomerProfile.ID
        'End If

        Dim isAllShown As Boolean
        isAllShown = String.IsNullOrWhiteSpace(tbCustomerId.Text)
        If isAllShown Then
            dsCustomerProfile.SelectParameters("cIdPattern").DefaultValue = "%"
        End If

        Dim isDateSpecified As Boolean
        isDateSpecified = Not String.IsNullOrWhiteSpace(ucDateFrom.UcDate) Or Not String.IsNullOrWhiteSpace(ucDateTo.UcDate)
        If isDateSpecified Then
            dsCustomerProfile.SelectParameters("hasTimeRange").DefaultValue = 1
        End If
    End Sub

    Protected Sub dsCustomerProfile_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles dsCustomerProfile.Selecting

    End Sub
End Class