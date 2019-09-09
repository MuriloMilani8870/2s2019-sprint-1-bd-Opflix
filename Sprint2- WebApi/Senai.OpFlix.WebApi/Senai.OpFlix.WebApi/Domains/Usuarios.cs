using System;
using System.Collections.Generic;

namespace Senai.OpFlix.WebApi.Domains
{
    public partial class Usuarios
    {
        public int IdUsuario { get; set; }
        public string NomeUsuario { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public long Cpf { get; set; }
        public DateTime DataDeCadastro { get; set; }
        public string Permissao { get; set; }
    }
}
