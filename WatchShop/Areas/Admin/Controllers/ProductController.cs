using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WatchShop.Models.EFContext;
using WatchShop.Models.Entities;

namespace WatchShop.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ProductController : Controller
    {
        private readonly DataContext _context;

        public ProductController(DataContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            return View(await _context.Product.Include(p => p.Category).Include(p => p.Brand).ToListAsync());
        }
        public IActionResult Details(string id)
        {
            Product pro = _context.Product.Include(p => p.Category).Include(p => p.Brand).FirstOrDefault(p => p.ProductID == id);
            return View(pro);
        }

        [HttpGet]
        public IActionResult Create()
        {
            ViewBag.Category = new SelectList(_context.Category, "CategoryID","CategoryName");
            ViewBag.Brand = new SelectList(_context.Brand, "BrandID", "BrandName");
            return View();
        }
    }
}
