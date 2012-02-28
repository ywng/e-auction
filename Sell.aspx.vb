Imports eAuctionLib

Partial Class Sell
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim tempUser As User = New User()
        If (tempUser.addItem("1", txtTitle.Text, DDLCategory.SelectedItem.Value, txtDescription.Text)) Then
            Response.Redirect("default.aspx")
        End If
    End Sub
End Class