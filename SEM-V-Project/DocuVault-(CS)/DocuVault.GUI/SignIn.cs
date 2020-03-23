using System;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DocuVault.GUI
{
    public partial class SignIn : Form
    {
        DbOps DbOps = new DbOps();
        public SignIn()
        {
            InitializeComponent();
        }
        private void btnOK_Click(object sender, EventArgs e)
        {
            Task SignInTask = new Task(new Action(DbOps.SignInOps));
            SignInTask.Start();
            Close();
        }
    }
}
