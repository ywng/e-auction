
Partial Class SearchResult
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        'initialization of hidden field

        If Not (Request.Form("KeywordText") Is Nothing) Then
            If Not (Request.Form("KeywordText").ToString = "") Then
                KeywordText.Value = Request.Form("KeywordText").ToString
                KeywordText_isexist.Value = True
            Else
                KeywordText_isexist.Value = False
            End If
        Else
            KeywordText_isexist.Value = False
        End If
        If Not (Request.Form("keyword_radiolist") Is Nothing) Then
            keyword_radiolist.Value = Request.Form("keyword_radiolist").ToString
        End If
        If Not (Request.Form("CategoryDropDownList") Is Nothing) Then
            CategoryDropDownList.Value = Request.Form("CategoryDropDownList").ToString
        End If

        If Not (Request.Form("sellerid") Is Nothing) Then
            sellerid.Value = Request.Form("sellerid").ToString
        End If
        If Not (Request.Form("seller_RadioButton") Is Nothing) Then
            seller_RadioButton.Value = Request.Form("seller_RadioButton").ToString
        End If

        If Not (Request.Form("PostingType_radiobuttonlist") Is Nothing) Then
            PostingType_radiobuttonlist.Value = Request.Form("PostingType_radiobuttonlist").ToString
        End If

        'initialization of label field (for testing purpose only)
        Label1.Text = "KeywordText: " & KeywordText.Value & "-" & KeywordText_isexist.Value
        Label2.Text = "keyword_radiolist: " & keyword_radiolist.Value
        Label3.Text = "CategoryDropDownList: " & CategoryDropDownList.Value

        Label4.Text = "sellerid: " & sellerid.Value
        Label6.Text = "seller_RadioButton: " & seller_RadioButton.Value

        Label5.Text = "PostingType_radiobuttonlist: " & PostingType_radiobuttonlist.Value

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
