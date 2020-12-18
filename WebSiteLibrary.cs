using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace uMeet
{
    public class WebSiteLibrary
    {
        public SqlDataReader SearchSite(string sql) //queries the DB based on the sql statement
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconn"].ToString());

                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                SqlDataReader find = cmd.ExecuteReader();
                return find;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool spAddMember(string[] groupArray/*,string spAddMembers*/)
        {
            bool status = false;
            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconn"].ToString()))
                {
                    SqlCommand cmd = new SqlCommand("spAddMembers", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    cmd.Parameters.Add("@MemberId", SqlDbType.VarChar, 15, "MemberId");
                    cmd.Parameters.Add("@fName", SqlDbType.VarChar, 100, "fName");
                    cmd.Parameters.Add("@lName", SqlDbType.VarChar, 100, "lName");
                    cmd.Parameters.Add("@Address", SqlDbType.VarChar, 255, "Address");
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar, 255, "Email");
                    cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 15, "Phone");
                    cmd.Parameters.Add("@DOB", SqlDbType.DateTime);
                    cmd.Parameters.Add("@Gender", SqlDbType.VarChar, 1, "Gender");
                    cmd.Parameters.Add("@Photo", SqlDbType.VarChar, 500, "Photo");
                    cmd.Parameters.Add("@Status", SqlDbType.VarChar, 1, "Status");

                    cmd.Parameters["@MemberId"].Value = groupArray[0];
                    cmd.Parameters["@fName"].Value = groupArray[1];
                    cmd.Parameters["@lName"].Value = groupArray[2];
                    cmd.Parameters["@Address"].Value = groupArray[3];
                    cmd.Parameters["@Email"].Value = groupArray[4];
                    cmd.Parameters["@Phone"].Value = groupArray[5];
                    cmd.Parameters["@DOB"].Value = groupArray[6];
                    cmd.Parameters["@Gender"].Value = groupArray[7];
                    cmd.Parameters["@Photo"].Value = groupArray[8];
                    cmd.Parameters["@Status"].Value = groupArray[9];

                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                        status = true;
                        conn.Close();
                    }
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }

            return status;
        }

        public bool spAddContactMessage(string[] contactArray, string spAddContactMessage)
        {
            bool check = false;

            try
            {

                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconn"].ToString()))
                {
                    SqlCommand charl = new SqlCommand(spAddContactMessage, conn);

                    charl.CommandType = CommandType.StoredProcedure;

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }

                    charl.Parameters.Add("@name", SqlDbType.VarChar, 100, "name");
                    charl.Parameters.Add("@email", SqlDbType.VarChar, 255, "email");
                    charl.Parameters.Add("@message", SqlDbType.VarChar, 500, "message");

                    charl.Parameters["@name"].Value = contactArray[0];
                    charl.Parameters["@email"].Value = contactArray[1];
                    charl.Parameters["@message"].Value = contactArray[2];

                    int a = charl.ExecuteNonQuery();

                    if (a > 0)
                    {
                        check = true;
                        conn.Close();
                    }
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return check;
        }

        public bool spUpdateMembers(string[] member, string spUpdateMembers)
        {
            bool status = false;
            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconn"].ToString()))
                {
                    SqlCommand cmd = new SqlCommand("spUpdateMembers", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    cmd.Parameters.Add("@MemberId", SqlDbType.VarChar, 15, "MemberId");
                    cmd.Parameters.Add("@fName", SqlDbType.VarChar, 100, "fName");
                    cmd.Parameters.Add("@lName", SqlDbType.VarChar, 100, "lName");
                    cmd.Parameters.Add("@Address", SqlDbType.VarChar, 255, "Address");
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar, 255, "Email");
                    cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 15, "Phone");
                    cmd.Parameters.Add("@DOB", SqlDbType.DateTime);
                    cmd.Parameters.Add("@Gender", SqlDbType.VarChar, 1, "Gender");
                    cmd.Parameters.Add("@Photo", SqlDbType.VarChar, 500, "Photo");
                    cmd.Parameters.Add("@Status", SqlDbType.VarChar, 1, "Status");

                    cmd.Parameters["@MemberId"].Value = member[0];
                    cmd.Parameters["@fName"].Value = member[1];
                    cmd.Parameters["@lName"].Value = member[2];
                    cmd.Parameters["@Address"].Value = member[3];
                    cmd.Parameters["@Email"].Value = member[4];
                    cmd.Parameters["@Phone"].Value = member[5];
                    cmd.Parameters["@DOB"].Value = member[6];
                    cmd.Parameters["@Gender"].Value = member[7];
                    cmd.Parameters["@Photo"].Value = member[8];
                    cmd.Parameters["@Status"].Value = member[9];

                    int a = cmd.ExecuteNonQuery();
                    if (a > 0)
                    {
                        status = true;
                        conn.Close();
                    }
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }

            return status;
        }

        public bool spDeleteProfile(string[] member, string spDeleteProfile)
        {
            bool status = false; //store the status of the database action process

            try
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconn"].ToString()))
                {
                    SqlCommand cmd = new SqlCommand(spDeleteProfile, conn);

                    cmd.CommandType = CommandType.StoredProcedure; //indicate command type is storedprocedure



                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open(); //open connection if closed
                    }

                    //data from array
                    cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 15, "UserName");
                    cmd.Parameters.Add("@MemberId", SqlDbType.VarChar, 15, "MemberId");

                    cmd.Parameters["@UserName"].Value = member[0]; //pass value from array index 0
                    cmd.Parameters["@MemberId"].Value = member[1];


                    int s = cmd.ExecuteNonQuery(); //execute query against database and return rows change

                    if (s > 0)
                    {
                        status = true;
                        conn.Close();
                    }
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

            return status;
        }
    }
}