using System;
using System.Windows.Forms;

namespace DocuVault.GUI
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            try
            {
                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);
                DbOps DbOps = new DbOps();
                DbOps.StartDB();
                Application.Run(new DocuVault());
            }
            catch(Exception)
            {
                DialogOps DlgOps = new DialogOps();
                DlgOps.GenericExceptionCatch();
            }
        }
        
    }
}
