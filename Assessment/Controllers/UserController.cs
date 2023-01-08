using Assessment.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Assessment.Controllers
{
    public class UserController : Controller
    {
        //Db inititilize
        SignUp_AsessmentEntities db = new SignUp_AsessmentEntities();

        // GET: Userl
        [HttpGet]
        public ActionResult SignUp()
        {
            return View();
        }
        //Post
        [HttpPost]
        public ActionResult SignUp(SignUp signUp)
        {
            //Condition to check all the values are valid 
            if (ModelState.IsValid)
            {
                db.SignUps.Add(signUp);
                db.SaveChanges();
                //Here, We added string in TempData 
                TempData["Message"] = "Data Added Successfully!!";
            }
            //After The Insertion of Data In Db page will Redirect To ListPage  
            return RedirectToAction("List");

           
            

        }
        public ActionResult List()
        {
            //This query is for listing the data of signup users
            var data = db.SignUps.ToList();
            return View(data);
        }

    }
}