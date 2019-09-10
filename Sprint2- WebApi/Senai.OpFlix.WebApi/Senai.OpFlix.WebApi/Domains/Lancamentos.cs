using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Senai.OpFlix.WebApi.Domains
{
    public partial class Lancamentos
    {
        public int IdLancamento { get; set; }
        public string Titulo { get; set; }
        [Required]
        public int? IdCategoria { get; set; }
        public byte? IdFormato { get; set; }
        public string Sinopse { get; set; }
        public int Duracao { get; set; }
        [Required]
        public DateTime DataLancamento { get; set; }

        public Categorias IdCategoriaNavigation { get; set; }
        public Formatos IdFormatoNavigation { get; set; }
    }
}
