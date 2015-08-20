using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Xml;

namespace ConsoleDBConnect
{
    class Program
    {
        static void Main(string[] args)
        {
            string SelectCmd = "SELECT * FROM tblStudentDetails";

            //Other examples include FOR XML RAW, FOR XML EXPLICITY--
            //
            string ForXmlCmd = "SELECT * FROM tblStudentDetails FOR XML AUTO";
            string ConnStr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\DBS\OOP2\CLASS\ConsoleDBConnect\ConsoleDBConnect\Students.mdf;Integrated Security=True";

            try
            {
                using(SqlConnection Cxn = new SqlConnection(ConnStr))
                {
                    //The following is the same as SqlCommand Cmd = new SqlCommend();
                    using(SqlCommand Cmd = Cxn.CreateCommand())
                    {
                        //Cmd.CommandText = SelectCmd;
                        //Cmd.CommandType = CommandType.Text;

                        //Invoke stored procedures name spGetStudentDetails
                        Cmd.CommandText = "spGetStudentDetails";
                        Cmd.CommandType = CommandType.StoredProcedure;



                        Cxn.Open();
                        SqlDataReader dr = Cmd.ExecuteReader();

                        while(dr.Read())
                        {
                            Console.WriteLine(dr[1] + " " + dr[2]);
                        }

                        //Connection is auto-closed. 
                        //You can still add Close() statements
                        dr.Close();

                        Cmd.CommandText = ForXmlCmd;
                        Cmd.CommandType = CommandType.Text;
                        XmlReader xmlR = Cmd.ExecuteXmlReader();

                        if(xmlR.Read())
                        {
                            string xmlData;
                            do
                            {
                                xmlData = xmlR.ReadOuterXml();
                                if (string.IsNullOrEmpty(xmlData) == false)
                                {
                                    Console.WriteLine(xmlData);
                                }
                            } while (String.IsNullOrEmpty(xmlData) == false);
                        }
                        Cxn.Close();    
                    }
                }
            }
            catch(SqlException ex)
            {
                Console.WriteLine("Exception thrown, error is {0}",ex.Message);
            }
        }
    }
}
