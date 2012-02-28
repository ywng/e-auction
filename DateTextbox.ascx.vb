
Partial Class WebUserControl
    Inherits System.Web.UI.UserControl

    Protected Sub calendar_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs) Handles Calendar.SelectionChanged
        tbDate.Text = Calendar.SelectedDate
    End Sub


    Protected Sub btShowCalendar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btToggleCalendar.Click
        If Calendar.Visible = False Then
            Calendar.Visible = True
            btToggleCalendar.Text = "Hide Calendar"
        Else
            Calendar.Visible = False
            btToggleCalendar.Text = "Show Calendar"
        End If
    End Sub


    Public ReadOnly Property UcDate() As String
        Get
            Return tbDate.Text
        End Get
    End Property
End Class
