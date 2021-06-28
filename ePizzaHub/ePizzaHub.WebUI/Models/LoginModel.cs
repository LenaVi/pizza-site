using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ePizzaHub.WebUI.Models
{
    public class LoginModel
    {
        [Required(ErrorMessage = "Введите Email")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Введите Пароль")]
        public string Password { get; set; }
    }
}
