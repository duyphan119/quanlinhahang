using System.Data.SqlClient;

namespace BTL.DAO
{
    public class ConnectDatabase
    {
        public SqlConnection Connect()
        {
            return new SqlConnection(
                @"Data Source=DESKTOP-NIULDEP\SQLEXPRESS;Initial Catalog=QLNhaHang;User ID=sa;Password=password"
            );
        }
    }
}
