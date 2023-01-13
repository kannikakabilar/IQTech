using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using IQTech.Data;
using IQTech.Models;

namespace IQTech.Views.Facts
{
    public class ShowSearchFormModel : PageModel
    {
        private readonly IQTech.Data.ApplicationDbContext _context;

        public ShowSearchFormModel(IQTech.Data.ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Fact Fact { get; set; } = default!;
        

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
          if (!ModelState.IsValid || _context.Fact == null || Fact == null)
            {
                return Page();
            }

            _context.Fact.Add(Fact);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
