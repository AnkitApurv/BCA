using System;
using System.Diagnostics;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DocuVault.GUI
{
    public partial class DocuVault : Form
    {
        DbOps DbOps = new DbOps();
        public DocuVault()
        {
            InitializeComponent();
        }
        private void DocuVault_Load(object sender, EventArgs e)
        {
            this.DocuReportViewer.RefreshReport();
        }
        private void HomeFileAdd_Click(object sender, EventArgs e)
        {
            Task AddFileTask = new Task(new Action(DbOps.AddFile));
            AddFileTask.Start();
        }
        private void HomeFileDelete_Cilck(object sender, EventArgs e)
        {
            Task DeleteFileTask = new Task(new Action(DbOps.DeleteFile));
            DeleteFileTask.Start();
        }
        private void UserCredentialsSignUp_Click(object sender, EventArgs e)
        {
            SignUp f = new SignUp();
            f.Show();
        }
        private void UserCredentialsSignIn_Click(object sender,EventArgs e)
        {
            SignIn f = new SignIn();
            f.Show();
        }
        private void UserCredentialsSignOut_Click(object sender, EventArgs e)
        {
            DbOps.SignOutOps();
        }
        private void ExtrasExtraAbout_Click(object sender, EventArgs e)
        {
            About f = new About();
            f.Show();
        }
        private void ExtrasExtraHelp_Click(object sender, EventArgs e)
        {
            Process.Start("https://www.google.com/");
        }
        private void DMS_FormClosing(object sender, EventArgs e)
        {
            DbOps.SignOutOps();
        }
    }
}
