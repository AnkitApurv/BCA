Imports System.Data.SqlClient

Partial Public Class Register
    Inherits Page

    Dim customer_id As String

    Protected Sub CreateUser_Click(sender As Object, e As EventArgs) Handles CreateUser.Click
        Dim registerSuccess As Boolean = False
        Dim userID As Decimal
        Dim sqlstmt As String = "INSERT INTO dbo.customer_master" &
            " (first_name, middle_name, last_name, annual_income, father_name, mobile, email, dob, address, state, city, pin, landmark, gender, occupation, qualification, maiden_name, marital_status, acctype, opening_amount, idproof, idno, addproof, nominee, relation,  account_balance, account_open_datetime)" &
            " VALUES" &
            " (@first_name, @middle_name, @last_name, @annual_income, @father_name, @mobile, @email, @dob, @address, @state, @city, @pin, @landmark, @gender, @occupation, @qualification, @maiden_name, @marital_status, @acctype, @opening_amount, @idproof, @idno, @addproof, @nominee, @relation, @opening_amount, @account_open_datetime);"
        Dim conn As New SqlConnection(Master.connectionString)

        Using cmd As New SqlCommand(sqlstmt, conn)
            cmd.Parameters.AddWithValue("@first_name", txtfname.Text.Trim)
            cmd.Parameters.AddWithValue("@middle_name", txtmname.Text.Trim)
            cmd.Parameters.AddWithValue("@last_name", txtlname.Text.Trim)
            cmd.Parameters.AddWithValue("@annual_income", txtincome.Text.Trim)
            cmd.Parameters.AddWithValue("@father_name", txtfather.Text.Trim)
            cmd.Parameters.AddWithValue("@mobile", txtmobile.Text.Trim)
            cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim)
            cmd.Parameters.AddWithValue("@dob", txtdob.Text.Trim)
            cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim)
            cmd.Parameters.AddWithValue("@state", ddlstate.Text.Trim)
            cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim)
            cmd.Parameters.AddWithValue("@pin", txtpin.Text.Trim)
            cmd.Parameters.AddWithValue("@landmark", txtlandmark.Text.Trim)
            cmd.Parameters.AddWithValue("@gender", GenderSelect.SelectedValue)
            cmd.Parameters.AddWithValue("@occupation", ddloccupation.Text.Trim)
            cmd.Parameters.AddWithValue("@qualification", ddlqualification.Text.Trim)
            cmd.Parameters.AddWithValue("@maiden_name", txtmaiden.Text.Trim)
            cmd.Parameters.AddWithValue("@marital_status", Marital.Text.Trim)
            cmd.Parameters.AddWithValue("@acctype", ddlacctype.Text.Trim)
            cmd.Parameters.AddWithValue("@opening_amount", txtamount.Text.Trim)
            cmd.Parameters.AddWithValue("@idproof", ddlidproof.Text.Trim)
            cmd.Parameters.AddWithValue("@idno", txtidno.Text.Trim)
            cmd.Parameters.AddWithValue("@addproof", ddladdproof.Text.Trim)
            cmd.Parameters.AddWithValue("@nominee", txtnominee.Text.Trim)
            cmd.Parameters.AddWithValue("@relation", ddlrelation.Text.Trim)
            cmd.Parameters.AddWithValue("@account_open_datetime", Date.Now.ToString)

            Try
                conn.Open()
                cmd.ExecuteNonQuery()
                conn.Close()
                registerSuccess = True
            Catch sqlEx As SqlException
                lblError.Text = sqlEx.ToString.Trim
            End Try
        End Using

        If registerSuccess Then
            sqlstmt = "SELECT pkey FROM dbo.customer_master WHERE email = @email AND mobile = @mobile;"
            Using cmd As New SqlCommand(sqlstmt, conn)
                cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim)
                cmd.Parameters.AddWithValue("@mobile", txtmobile.Text.Trim)
                conn.Open()
                Dim dataAdapter As New SqlDataAdapter(cmd)
                conn.Close()
                cmd.Dispose()
                Dim dataTable As New DataTable()
                dataAdapter.Fill(dataTable)
                userID = CDec(dataTable.Rows.Item(index:=0)(columnName:="pkey"))
            End Using
            Session("UserID") = userID.ToString.Trim()
            Session.Add("UserGreetingName") = txtfname.Text.Trim()
            Response.Redirect("RegisterSuccess", True)
        Else
            lblError.Visible = True
        End If
    End Sub

    Private Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        authorizeUserLogIn()
    End Sub

    Private Sub authorizeUserLogIn()
        If Session("UserID") IsNot Nothing Then
            Response.Redirect("LandingPage", True)
        End If
    End Sub
End Class

