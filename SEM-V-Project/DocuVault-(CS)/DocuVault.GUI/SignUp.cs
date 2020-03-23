using System;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DocuVault.GUI
{
    public partial class SignUp : Form
    {
        DbOps DbOps = new DbOps();
        public SignUp()
        {
            InitializeComponent();
        }
        private void btnOK_Click(object sender, EventArgs e)
        {
            Task SignUpTask = new Task(new Action(DbOps.SignUpOps));
            SignUpTask.Start();
            Close();
        }
    }
}
