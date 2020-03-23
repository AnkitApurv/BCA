namespace DocuVault.GUI
{
    partial class DocuVault
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.DocuReportViewer = new Microsoft.Reporting.WinForms.ReportViewer();
            this.SuspendLayout();
            // 
            // DocuReportViewer
            // 
            this.DocuReportViewer.Location = new System.Drawing.Point(142, 170);
            this.DocuReportViewer.Name = "DocuReportViewer";
            this.DocuReportViewer.Size = new System.Drawing.Size(396, 246);
            this.DocuReportViewer.TabIndex = 0;
            // 
            // DocuVault
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(727, 476);
            this.Controls.Add(this.DocuReportViewer);
            this.Name = "DocuVault";
            this.Text = "DocuVault";
            this.Load += new System.EventHandler(this.DocuVault_Load);
            this.ResumeLayout(false);

        }

        #endregion

        internal Microsoft.Reporting.WinForms.ReportViewer DocuReportViewer;
    }
}