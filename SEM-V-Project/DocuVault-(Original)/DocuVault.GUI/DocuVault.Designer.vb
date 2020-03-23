<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class DocuVault
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim ReportDataSource1 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(DocuVault))
        Me.DocuReportViewer = New Microsoft.Reporting.WinForms.ReportViewer()
        Me.DocuRibbon = New System.Windows.Forms.Ribbon()
        Me.Home = New System.Windows.Forms.RibbonTab()
        Me.Files = New System.Windows.Forms.RibbonPanel()
        Me.HomeFilesAdd = New System.Windows.Forms.RibbonButton()
        Me.HomeFilesDelete = New System.Windows.Forms.RibbonButton()
        Me.User = New System.Windows.Forms.RibbonTab()
        Me.UserCredentials = New System.Windows.Forms.RibbonPanel()
        Me.UserCredentialsSignUp = New System.Windows.Forms.RibbonButton()
        Me.UserCredentialsSignIn = New System.Windows.Forms.RibbonButton()
        Me.UserCredentialsSignOut = New System.Windows.Forms.RibbonButton()
        Me.Extras = New System.Windows.Forms.RibbonTab()
        Me.Extra = New System.Windows.Forms.RibbonPanel()
        Me.ExtrasExtraHelp = New System.Windows.Forms.RibbonButton()
        Me.ExtrasExtraAbout = New System.Windows.Forms.RibbonButton()
        Me.DocuVaultDataSet = New DocuVault.GUI.DocuVaultDataSet()
        Me.DMStoreBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DMStoreTableAdapter = New DocuVault.GUI.DocuVaultDataSetTableAdapters.DMStoreTableAdapter()
        CType(Me.DocuVaultDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DMStoreBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'DocuReportViewer
        '
        ReportDataSource1.Name = "DataSet1"
        ReportDataSource1.Value = Me.DMStoreBindingSource
        Me.DocuReportViewer.LocalReport.DataSources.Add(ReportDataSource1)
        Me.DocuReportViewer.LocalReport.ReportEmbeddedResource = "DocuVault.GUI.DocuReport.rdlc"
        Me.DocuReportViewer.Location = New System.Drawing.Point(0, 128)
        Me.DocuReportViewer.Name = "DocuReportViewer"
        Me.DocuReportViewer.ShowZoomControl = False
        Me.DocuReportViewer.Size = New System.Drawing.Size(649, 286)
        Me.DocuReportViewer.TabIndex = 0
        '
        'DocuRibbon
        '
        Me.DocuRibbon.CaptionBarVisible = False
        Me.DocuRibbon.Font = New System.Drawing.Font("Segoe UI", 9.0!)
        Me.DocuRibbon.Location = New System.Drawing.Point(0, 0)
        Me.DocuRibbon.Minimized = False
        Me.DocuRibbon.Name = "DocuRibbon"
        '
        '
        '
        Me.DocuRibbon.OrbDropDown.BorderRoundness = 8
        Me.DocuRibbon.OrbDropDown.Enabled = False
        Me.DocuRibbon.OrbDropDown.Location = New System.Drawing.Point(0, 0)
        Me.DocuRibbon.OrbDropDown.Name = ""
        Me.DocuRibbon.OrbDropDown.Size = New System.Drawing.Size(527, 72)
        Me.DocuRibbon.OrbDropDown.TabIndex = 0
        Me.DocuRibbon.OrbImage = Nothing
        Me.DocuRibbon.OrbStyle = System.Windows.Forms.RibbonOrbStyle.Office_2013
        Me.DocuRibbon.OrbVisible = False
        '
        '
        '
        Me.DocuRibbon.QuickAcessToolbar.Enabled = False
        Me.DocuRibbon.QuickAcessToolbar.FlashEnabled = True
        Me.DocuRibbon.QuickAcessToolbar.ShowFlashImage = True
        Me.DocuRibbon.RibbonTabFont = New System.Drawing.Font("Trebuchet MS", 9.0!)
        Me.DocuRibbon.Size = New System.Drawing.Size(649, 128)
        Me.DocuRibbon.TabIndex = 1
        Me.DocuRibbon.Tabs.Add(Me.Home)
        Me.DocuRibbon.Tabs.Add(Me.User)
        Me.DocuRibbon.Tabs.Add(Me.Extras)
        Me.DocuRibbon.TabsMargin = New System.Windows.Forms.Padding(12, 2, 20, 0)
        Me.DocuRibbon.Text = "DocuRibbon"
        Me.DocuRibbon.ThemeColor = System.Windows.Forms.RibbonTheme.Blue
        '
        'Home
        '
        Me.Home.Panels.Add(Me.Files)
        Me.Home.Text = "Home"
        '
        'Files
        '
        Me.Files.ButtonMoreEnabled = False
        Me.Files.ButtonMoreVisible = False
        Me.Files.Items.Add(Me.HomeFilesAdd)
        Me.Files.Items.Add(Me.HomeFilesDelete)
        Me.Files.Text = "Files"
        '
        'HomeFilesAdd
        '
        Me.HomeFilesAdd.Image = Global.DocuVault.GUI.My.Resources.Resources.save_32x32
        Me.HomeFilesAdd.SmallImage = CType(resources.GetObject("HomeFilesAdd.SmallImage"), System.Drawing.Image)
        Me.HomeFilesAdd.Text = "Add"
        '
        'HomeFilesDelete
        '
        Me.HomeFilesDelete.Enabled = False
        Me.HomeFilesDelete.Image = Global.DocuVault.GUI.My.Resources.Resources.delete_32x32
        Me.HomeFilesDelete.SmallImage = CType(resources.GetObject("HomeFilesDelete.SmallImage"), System.Drawing.Image)
        Me.HomeFilesDelete.Text = "Delete"
        '
        'User
        '
        Me.User.Panels.Add(Me.UserCredentials)
        Me.User.Text = "User"
        '
        'UserCredentials
        '
        Me.UserCredentials.ButtonMoreEnabled = False
        Me.UserCredentials.ButtonMoreVisible = False
        Me.UserCredentials.Items.Add(Me.UserCredentialsSignUp)
        Me.UserCredentials.Items.Add(Me.UserCredentialsSignIn)
        Me.UserCredentials.Items.Add(Me.UserCredentialsSignOut)
        Me.UserCredentials.Text = "Credentials"
        '
        'UserCredentialsSignUp
        '
        Me.UserCredentialsSignUp.Image = Global.DocuVault.GUI.My.Resources.Resources.password_32x32
        Me.UserCredentialsSignUp.SmallImage = CType(resources.GetObject("UserCredentialsSignUp.SmallImage"), System.Drawing.Image)
        Me.UserCredentialsSignUp.Text = "SignUp"
        '
        'UserCredentialsSignIn
        '
        Me.UserCredentialsSignIn.Image = Global.DocuVault.GUI.My.Resources.Resources.login_32x32
        Me.UserCredentialsSignIn.SmallImage = CType(resources.GetObject("UserCredentialsSignIn.SmallImage"), System.Drawing.Image)
        Me.UserCredentialsSignIn.Text = "SignIn"
        '
        'UserCredentialsSignOut
        '
        Me.UserCredentialsSignOut.Image = Global.DocuVault.GUI.My.Resources.Resources.login_32x32
        Me.UserCredentialsSignOut.SmallImage = CType(resources.GetObject("UserCredentialsSignOut.SmallImage"), System.Drawing.Image)
        Me.UserCredentialsSignOut.Text = "SignOut"
        '
        'Extras
        '
        Me.Extras.Panels.Add(Me.Extra)
        Me.Extras.Text = "Extras"
        '
        'Extra
        '
        Me.Extra.ButtonMoreEnabled = False
        Me.Extra.ButtonMoreVisible = False
        Me.Extra.Items.Add(Me.ExtrasExtraHelp)
        Me.Extra.Items.Add(Me.ExtrasExtraAbout)
        Me.Extra.Text = "Extra"
        '
        'ExtrasExtraHelp
        '
        Me.ExtrasExtraHelp.Image = Global.DocuVault.GUI.My.Resources.Resources.help_32x32
        Me.ExtrasExtraHelp.SmallImage = CType(resources.GetObject("ExtrasExtraHelp.SmallImage"), System.Drawing.Image)
        Me.ExtrasExtraHelp.Text = "Help"
        '
        'ExtrasExtraAbout
        '
        Me.ExtrasExtraAbout.Image = Global.DocuVault.GUI.My.Resources.Resources.help_32x32
        Me.ExtrasExtraAbout.SmallImage = CType(resources.GetObject("ExtrasExtraAbout.SmallImage"), System.Drawing.Image)
        Me.ExtrasExtraAbout.Text = "About"
        '
        'DocuVaultDataSet
        '
        Me.DocuVaultDataSet.DataSetName = "DocuVaultDataSet"
        Me.DocuVaultDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'DMStoreBindingSource
        '
        Me.DMStoreBindingSource.DataMember = "DMStore"
        Me.DMStoreBindingSource.DataSource = Me.DocuVaultDataSet
        '
        'DMStoreTableAdapter
        '
        Me.DMStoreTableAdapter.ClearBeforeFill = True
        '
        'DocuVault
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(649, 414)
        Me.Controls.Add(Me.DocuRibbon)
        Me.Controls.Add(Me.DocuReportViewer)
        Me.Name = "DocuVault"
        Me.Text = "DocuVault"
        CType(Me.DocuVaultDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DMStoreBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents DocuReportViewer As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents DocuRibbon As Ribbon
    Friend WithEvents Home As RibbonTab
    Friend WithEvents User As RibbonTab
    Friend WithEvents Extras As RibbonTab
    Friend WithEvents UserCredentials As RibbonPanel
    Friend WithEvents Files As RibbonPanel
    Friend WithEvents Extra As RibbonPanel
    Friend WithEvents HomeFilesAdd As RibbonButton
    Friend WithEvents HomeFilesDelete As RibbonButton
    Friend WithEvents UserCredentialsSignUp As RibbonButton
    Friend WithEvents UserCredentialsSignIn As RibbonButton
    Friend WithEvents UserCredentialsSignOut As RibbonButton
    Friend WithEvents ExtrasExtraHelp As RibbonButton
    Friend WithEvents ExtrasExtraAbout As RibbonButton
    Friend WithEvents DMStoreBindingSource As BindingSource
    Friend WithEvents DocuVaultDataSet As DocuVault.GUI.DocuVaultDataSet
    Friend WithEvents DMStoreTableAdapter As DocuVault.GUI.DocuVaultDataSetTableAdapters.DMStoreTableAdapter
End Class
