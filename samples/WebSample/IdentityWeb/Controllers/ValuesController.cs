using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace IdentityWeb.Controllers
{
    [Route("/api/values")]
    [ApiController]
    public class ValuesController : Controller
    {
        [HttpGet()]
        public IActionResult Get()
        {
            return Ok();
        }
    }
}
