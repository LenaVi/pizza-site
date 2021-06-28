using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ePizzaHub.WebUI.Models
{
    public class UserModel
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Введите Email")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Введите Имя Пользователя")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Введите Пароль")]
        public string Password { get; set; }

        [Compare("Password", ErrorMessage = "Пароль не совпадает")]
        public string ConfirmPassword { get; set; }

        [Required(ErrorMessage = "Введите номер телефона")]
        public string PhoneNumber { get; set; }
    }
}
