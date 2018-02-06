using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using DataAccesspractice;
using DataAccesspractice.Models;
using System.Web.Helpers;
using System.Web.Http.Cors;

namespace APIPractice.Controllers
{


    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class StudentsController : ApiController
    {
        private DataAccesspractice.DataAccess Da;
        
        public StudentsController()
        {
            Da = new DataAccess();
        }

        public List<Students> Get()
        {
            var result = Da.GetStudents();
            return result;
        }

        public Students Get(int id)
        {
            var result = Da.Getstudbyid(id);
            return result;
        }
        public JsonResult Post(Students stud)
        {
            int result = Da.Createnew(stud);
            if (result>0)
            {
                return  new JsonResult { Data = new { Status ="Successfully Inserted." } };
            }
            else
            {
                return new JsonResult { Data = new { Status = "Failed to Insert" } };
            }
        }
        public string Put(Students std)
        {
            int result = Da.Updatestud(std);
            if (result>0)
            {
                return "Record Updated ";
                
            }
            else
            {
                    return "Record Not Updated";
            }
        }
        public string Delete(int id)
        {
            int result = Da.delete(id);
            if (result>0)
            {
                return $"Record with Roll.no-{id} was Deleted Sucessfully ";
            }
            else
            {
                return "Delete Action Failed";
            }
        }

        }
}