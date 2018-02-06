using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using DataAccesspractice.Models;


namespace DataAccesspractice
{
    public class DataAccess
    {
        private string str;
        private SqlConnection con;
       // private Students stud;
        public DataAccess()
        {
            str = Properties.Settings.Default.apicon;
            con = new SqlConnection(str);
           
        }
        public int Createnew(Students stud)
        {
            int result;

            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO student VALUES (@Name,@LastName,@Role,@Address,@gender)", con);
               
                cmd.Parameters.AddWithValue("@Name", stud.Name);
                cmd.Parameters.AddWithValue("@LastName", stud.LastName);
                cmd.Parameters.AddWithValue("@Role", stud.Role);
                cmd.Parameters.AddWithValue("@Address", stud.Address);
                cmd.Parameters.AddWithValue("@gender", stud.gender);
                cmd.CommandType = System.Data.CommandType.Text;

                con.Open();
                result = cmd.ExecuteNonQuery();
                
            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int Updatestud(Students stud)
        {
            int result;
            SqlCommand cmd = new SqlCommand("UPDATE student SET Name=@Name,LastName=@LastName,Role=@Role,Address=@Address,gender=@gender WHERE ID=@ID", con);
            cmd.Parameters.AddWithValue("@ID",stud.ID);
            cmd.Parameters.AddWithValue("@Name", stud.Name);
            cmd.Parameters.AddWithValue("@LastName", stud.LastName);
            cmd.Parameters.AddWithValue("@Role", stud.Role);
            cmd.Parameters.AddWithValue("@Address", stud.Address);
            cmd.Parameters.AddWithValue("@gender", stud.gender);
            cmd.CommandType = System.Data.CommandType.Text;
            try
            {
                con.Open();
                result = cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;

            }
            finally
            {
                con.Close();
            }
            return result;

        }
        public List<Students> GetStudents()
        {
            List<Students> studlist = new List<Students>();
            SqlCommand cmd = new SqlCommand("SELECT * FROM student", con);
           // SqlDataAdapter da;
            cmd.CommandType = System.Data.CommandType.Text;
            try
            {
                con.Open();
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Students std = new Students();

                    std.ID = int.Parse(reader["ID"].ToString());
                    std.Name = reader["Name"].ToString();
                    std.LastName = reader["LastName"].ToString();
                    std.Role = Convert.ToInt32(reader["Role"]);
                    std.Address = reader["Address"].ToString();
                    std.gender = reader["gender"].ToString();
                    studlist.Add(std);
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                con.Close();
            }
            return studlist;
        } 
        public Students Getstudbyid( int ID)
        {
            Students std = new Students();
            SqlCommand cmd = new SqlCommand("SELECT Name,LastName,Role,Address,gender FROM student where ID=@ID ", con);
            cmd.Parameters.AddWithValue("@ID", ID);
            cmd.CommandType = System.Data.CommandType.Text;
            try
            {
                con.Open();
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    std.Name = reader["Name"].ToString();
                    std.LastName = reader["LastName"].ToString();
                    std.Name = std.Name +" "+ std.LastName;
                    std.Role =int.Parse( reader["Role"].ToString());
                    std.Address = reader["Address"].ToString();
                    std.gender = reader["gender"].ToString();
                }
                
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                con.Close();
            }
            return std;
        }
        public int delete(int id)
        {
            int res;
            SqlCommand cmd = new SqlCommand("DELETE FROM student where ID=@ID", con);
            cmd.Parameters.AddWithValue("@ID", id);
            cmd.CommandType = System.Data.CommandType.Text;
            try
            {
                
                con.Open();
               res= cmd.ExecuteNonQuery();
                

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                con.Close();
            }
            return res;
        }
    }
}