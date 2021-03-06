using BTL.Model;
using BTL.utils;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace BTL.DAO
{
    public class DAO_NhomMon
    {
        private SqlConnection cnn;
        private SqlCommand scm;
        private SqlDataReader reader;

        public DAO_NhomMon()
        {
            ConnectDatabase ConnectDB = new ConnectDatabase();
            cnn = ConnectDB.Connect();
        }

        public List<NhomMon> getAll()
        {
            List<NhomMon> result = new List<NhomMon>();
            try
            {
                cnn.Open();
                scm = new SqlCommand("select * from nhommon", cnn);
                reader = scm.ExecuteReader();
                while (reader.Read())
                {
                    string manhom = reader.GetString(0);
                    string tennhom = reader.GetString(1);
                    NhomMon nhom = new NhomMon(manhom, tennhom);
                    result.Add(nhom);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                cnn.Close();
            }
            return result;
        }

        public NhomMon getById(string id)
        {
            NhomMon nhom = null;
            try
            {
                cnn.Open();
                scm = new SqlCommand($"select * from nhommon where manhom = '{id}'", cnn);
                reader = scm.ExecuteReader();
                while (reader.Read())
                {
                    string manhom = reader.GetString(0);
                    string tennhom = reader.GetString(1);
                    nhom = new NhomMon(manhom, tennhom);
                    cnn.Close();
                    return nhom;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                cnn.Close();
            }
            return nhom;
        }

        public void insert(NhomMon nhom)
        {
            try
            {
                cnn.Open();
                scm = new SqlCommand($@"insert into nhommon (manhom, tennhom) values
                        ('{nhom.ma}',N'{nhom.ten}')", cnn);
                scm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                cnn.Close();
            }
        }

        public void updateOne(NhomMon nhom)
        {
            try
            {
                cnn.Open();
                scm = new SqlCommand($@"update nhommon set tennhom = N'{nhom.ten}' where manhom = '{nhom.ma}'", cnn);
                scm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                cnn.Close();
            }
        }

        public void deleteOne(string id)
        {
            try
            {
                cnn.Open();
                scm = new SqlCommand($"delete from nhommon where manhom = '{id}'", cnn);
                scm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                cnn.Close();
            }
        }

        public string genetareID()
        {
            Method methods = new Method();
            string result = "";

            int i = 1;

            string str = "G" + methods.addZero(2, i);
            while (true)
            {
                if (getById(str) == null)
                {
                    result += str;
                    break;
                }
                else
                {
                    str = "G" + methods.addZero(2, ++i);
                }
            }

            return result;
        }
    }
}
