using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using DataAccesspractice.Models;
using System.Collections.Generic;

namespace DataAccesspractice.Tests
{
    [TestClass]
    public class DataAccesspracticeTest
    {
        private Students stud;

        [TestMethod]
        public void CreatenewShould()
        {
            //Assign
            stud = new Students();
            stud.Name = "Test";
            stud.LastName = "Test";
            stud.Role =1;
            stud.gender = "Test";
            stud.Address = "Test";

            //Act
            DataAccess da = new DataAccess();
            int res= da.Createnew(stud);

            //Assert
            Assert.AreEqual(1, Convert.ToInt32(res));
        }
        [TestMethod]
        public void UpdatestudShould()
        {   //assign
           Students stud1 = new Students();
            stud1.ID = 4;
            stud1.Name = "updatesuccess";
            stud1.LastName = "updatesuccess";
            stud1.Role = 0;
            stud1.gender = "updatesuccess";
            stud1.Address = "updatesuccess";
            //Act
            DataAccess da = new DataAccess();
            int rest = da.Updatestud(stud1);
            //Assert
            Assert.AreEqual(1, Convert.ToInt32(rest));
        }
        [TestMethod]
        public void GetStudentsShould()
        {//Act
            List<Students> slist = new List<Students>();
            DataAccess da = new DataAccess();
            slist = da.GetStudents();
            //Assert
            Assert.IsNotNull(slist);
        }
        [TestMethod]
        public void Getstudbyid()
        {
            //Assign
            int ID = 3;
            //Act
           Students sl = new  Students();
            DataAccess da = new DataAccess();
            sl = da.Getstudbyid(ID);
            //Assert
            Assert.IsNotNull(sl);
        }
        [TestMethod]
        public void delete()
        {          
            //Assign
            int ID = 13;
            //Act
            DataAccess da = new DataAccess();
            int res=da.delete(ID);
            //Assert
            Assert.AreEqual(1, Convert.ToInt32(res));

        }
    }
}
