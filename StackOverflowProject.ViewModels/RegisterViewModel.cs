using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace StackOverflowProject.ViewModels
{
    public class RegisterViewModel
    {
        [Required]
        [RegularExpression(".+\\@.+\\..+", ErrorMessage = "Please enter a valid email address")]
        public string Email { get; set; }

        [Required]
        public string Password { get; set; }

        [Required]
        [Compare("Password")]
        public string ConfirmPassword { get; set; }

        [Required]
        [RegularExpression(@"^[a-zA-Z ]*$")]
        public string Name { get; set; }

        [Required]
        public string Mobile { get; set; }
    }
}


