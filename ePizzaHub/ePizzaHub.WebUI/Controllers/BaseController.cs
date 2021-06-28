using ePizzaHub.Entities;
using ePizzaHub.WebUI.Interfaces;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ePizzaHub.WebUI.Controllers
{
    public class BaseController : Controller
    {
        IUserAccessor userAccessor;
        public User CurrentUser
        {
            get
            {
                if (User != null)
                    return userAccessor.GetUser();
                else
                    return null;
            }
        }
        public BaseController(IUserAccessor _userAccessor)
        {
            userAccessor = _userAccessor;
        }
    }
}
