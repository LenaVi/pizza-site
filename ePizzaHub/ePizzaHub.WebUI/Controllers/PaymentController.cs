using ePizzaHub.Repositories.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ePizzaHub.WebUI.Helpers;
using ePizzaHub.WebUI.Models;
using ePizzaHub.Entities;
using System.ComponentModel.DataAnnotations;
using ePizzaHub.Services.Interfaces;

namespace ePizzaHub.WebUI.Controllers
{
    public class PaymentController : Controller
    {
        private readonly IOrderService orderService;
        public PaymentController(IOrderService _orderService)
        {
            orderService = _orderService;
        }
        public IActionResult Index()
        {
            PaymentModel payment = new PaymentModel();
            CartModel cart = TempData.Peek<CartModel>("Cart");
            if (cart != null)
            {
                payment.Cart = cart;
            }
            payment.GrandTotal = Math.Round(cart.GrandTotal);
            payment.Currency = "Рубли";
            string items = "";
            foreach (var item in cart.Items)
            {
                items += item.Name + ",";
            }
            payment.Description = items;
            PaymentDetails details = new PaymentDetails();
            details.CartId = cart.Id;
            details.Total = cart.Total;
            details.Tax = cart.Tax;
            details.GrandTotal = cart.GrandTotal;
            details.Status = "Заказ принят";
            details.UserId = cart.UserId;
            details.Currency= "Рубли";
            details.Id = DateTime.Now.ToString();
            Address address = TempData.Get<Address>("Address");
            details.Email = address.PhoneNumber;
            TempData.Set("PaymentDetails", details);
            orderService.PlaceOrder(details.UserId, string.Format(details.Id.ToString() + details.UserId.ToString()), details.Id, cart, address);
            cart.Items.Clear();
            return View(payment);
        }
        public IActionResult Receipt()
        {
            PaymentDetails model = TempData.Peek<PaymentDetails>("PaymentDetails");
            return View(model);
        }
    }
}
