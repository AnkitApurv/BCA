using System;
using System.IO;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace DocuVault.GUI
{
    internal class DialogOps
    {
        Exception EX;
        IOException IOEX;
        SqlException SQLEX;
        protected string Message = "Unh Oh";
        internal void GenericExceptionCatch()
        {
            string Caption = "Woah! Something went wrong. We'r Sorry!";
            MessageBox.Show(Caption, Message + EX.Message, MessageBoxButtons.OK, MessageBoxIcon.Error);
            Application.Exit();
        }
        internal void IOExceptionCatch()
        {
            string Caption = "Woah! We can't access that file. We'r Sorry!";
            MessageBox.Show(Caption, Message + IOEX.Message, MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
        }
        internal void SqlExceptionCatch()
        {
            string Caption = "Woah! Something went wrong at the Database Site. We'r Sorry!";
            MessageBox.Show(Caption, Message + SQLEX.Message, MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
        }
        internal void LoginFailed()
        {
            string Caption = "Wrong Credentials!";
            MessageBox.Show(Caption, Message, MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }
        internal void NotLoggedIn()
        {
            string Caption = "You are not logged in!";
            MessageBox.Show(Caption, Message, MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }
    }
}
