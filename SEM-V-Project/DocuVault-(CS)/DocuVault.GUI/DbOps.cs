using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Windows.Forms;
using DocuVault.GUI.Properties;

namespace DocuVault.GUI
{
    internal class DbOps
    {
        protected string connectionString = Settings.Default.DMSConnStr;

        DialogOps DlgOps = new DialogOps();

        internal void StartDB()
        {
            ProcessStartInfo StartSqlDb = new ProcessStartInfo("cmd.exe");
            StartSqlDb.WindowStyle = ProcessWindowStyle.Hidden;
            StartSqlDb.Arguments = "/c sqllocaldb s DocuVault";
            Process.Start(StartSqlDb);
        }
        internal void StopDB()
        {
            ProcessStartInfo StopSqlDb = new ProcessStartInfo("cmd.exe");
            StopSqlDb.WindowStyle = ProcessWindowStyle.Hidden;
            StopSqlDb.Arguments = "/c sqllocaldb p DocuVault";
            Process.Start(StopSqlDb);
        }
        internal void SignUpOps()
        {
            StartDB();

            SignUp SignUp = new SignUp();

            string sqlstmt = "INSERT INTO DMSuser (user_id, passwd) VALUES (@user_id, @passwd);";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand commmand = new SqlCommand(sqlstmt, connection);

            //parameterize user_id
            commmand.Parameters.Add("@user_id", SqlDbType.VarChar, 10);
            commmand.Parameters["@user_id"].Value = SignUp.txtUserID.Text;

            //parameterize passwd
            commmand.Parameters.Add("@passwd", SqlDbType.VarChar, 50);
            commmand.Parameters["@passwd"].Value = SignUp.txtPwd.Text;

            //db execution
            connection.Open();
            commmand.ExecuteNonQuery();
            connection.Close();
        }
        internal void SignInOps()
        {
            StartDB();

            SignIn SignIn = new SignIn();
            DocuVault DocuVault = new DocuVault();

            string userid = "";
            string pwd = "";

            string sqlstmt = "SELECT COUNT(*) FROM DMSuser WHERE user_id=@user_id AND passwd=@passwd;";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(sqlstmt, connection);

            //parameterize user_id
            command.Parameters.Add("@user_id", SqlDbType.VarChar, 10);
            userid = SignIn.txtUserID.Text;
            command.Parameters["@user_id"].Value = userid;

            //parameterize passwd
            command.Parameters.Add("@passwd", SqlDbType.VarChar, 50);
            pwd = SignIn.txtPwd.Text;
            command.Parameters["@passwd"].Value = pwd;

            //db execution
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            int credential = command.ExecuteNonQuery();
            //allow signin or not
            if (credential != 1)
            {
                DlgOps.LoginFailed();
            }
            else
            {
                DocuVault.DocuReportViewer.RefreshReport();
            }
        }
        internal void AddFile()
        {
            StartDB();

            byte[] file_bin;

            DocuVault DocuVault = new DocuVault();
            
            //open file common dialog
            OpenFileDialog AddFile = new OpenFileDialog();
            AddFile.InitialDirectory = "%userprofile%";
            AddFile.Filter = "All files (*.*)|*.*";
            AddFile.FilterIndex = 1;
            AddFile.RestoreDirectory = true;

            //when ok clicked on open file dialog
            if (AddFile.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    file_bin = File.ReadAllBytes(AddFile.FileName);
                    if (file_bin != null)
                    {
                        string sqlstmt = "INSERT INTO DMStore (file_bin, file_name) VALUES (@file, @file_name);";
                        SqlConnection connection = new SqlConnection(connectionString);
                        SqlCommand command = new SqlCommand(sqlstmt, connection);

                        //parameterize file
                        SqlParameter fileprm = new SqlParameter();
                        fileprm.ParameterName = "@file";
                        fileprm.Value = file_bin;
                        command.Parameters.Add(fileprm);
                        
                        //parameterize filename
                        string file_name = AddFile.FileName;
                        command.Parameters.Add("@file_name", SqlDbType.VarChar, 50);
                        command.Parameters["@file_name"].Value = file_name;
                        
                        //db execution
                        connection.Open();
                        command.ExecuteNonQuery();
                        connection.Close();
                        DocuVault.DocuReportViewer.RefreshReport();
                    }
                    else
                    {
                        DlgOps.IOExceptionCatch();
                    }
                }
                catch (SqlException SQLEX)
                {
                    DlgOps.NotLoggedIn();
                }
            }
        }
        internal void DeleteFile()
        {
            StartDB();

            DocuVault DocuVault = new DocuVault();

            //confirm delete
            string Message = "Confirm Delete!";
            string Caption = "Do you want to delete this file? This is operation cannot be undone!";
            DialogResult Confirm = new DialogResult();
            Confirm = MessageBox.Show(Caption, Message, MessageBoxButtons.YesNo);

            //do the job
            if (Confirm== DialogResult.Yes)
            {
                string sqlstmt = "";
                SqlConnection connection = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(sqlstmt, connection);
                connection.Open();
                cmd.ExecuteNonQuery();
                connection.Close();
                DocuVault.DocuReportViewer.RefreshReport();
            }
            else
            {
                //do nothing
            }
        }
        internal void SignOutOps()
        {
            //sign out
        }
    }
}
