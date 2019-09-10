using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai.OpFlix.WebApi.Domains;
using Senai.OpFlix.WebApi.Interfaces;
using Senai.OpFlix.WebApi.Repositories;

namespace Senai.OpFlix.WebApi.Controllers
{
    [Route("api/[controller]")]
    [Produces("application/json")]
    [ApiController]
    public class VeiculosController : ControllerBase
    {
        private IVeiculoRepository VeiculosRepository { get; set; }

        public VeiculosController()
        {
            VeiculosRepository = new VeiculosRepository();
        }

        [HttpPost]
        public IActionResult Cadastrar(Veiculos veiculo)
        {
            VeiculosRepository.Cadastrar(veiculo);
            return Ok();
        }

        [HttpGet]
        public IActionResult Listar()
        {
            return Ok(VeiculosRepository.Listar());
        }

        [HttpPut("{id}")]
        public IActionResult Atualizar(int id, Veiculos veiculo)
        {
            try
            {
                Veiculos plataformamididaBuscada = VeiculosRepository.BuscarPorId(id);
                if (plataformamididaBuscada == null)
                    return NotFound();
                veiculo.IdVeiculo = id;
                VeiculosRepository.Atualizar(veiculo);
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest(new { mensagem = ex.Message });
            }
        }
    }
}

namespace Senai.OpFlix.WebApi.Repositories
{
    public class VeiculosRepository : IVeiculoRepository
    {
        private string StringConexao = "Data Source=.\\SqlExpress; initial catalog=M_OpFlix;User Id=sa;Pwd=132;";

        public void Atualizar(Veiculos veiculo)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                Veiculos veiculoBuscada = ctx.Veiculos.FirstOrDefault(x => x.IdVeiculo == veiculo.IdVeiculo);
                veiculoBuscada.NomeVeiculo = veiculo.NomeVeiculo;
                ctx.Veiculos.Update(veiculoBuscada);
                ctx.SaveChanges();
            }
        }

        public Veiculos BuscarPorId(int IdVeiculo)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Veiculos.FirstOrDefault(x => x.IdVeiculo == IdVeiculo);
            }
        }

        public void Cadastrar(Veiculos veiculo)
        {
            string Query = "INSERT INTO Veiculos(NomeVeiculo) VALUES (@veiculo)";
            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                SqlCommand cmd = new SqlCommand(Query, con);
                cmd.Parameters.AddWithValue("@veiculo", veiculo.NomeVeiculo);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public List<Veiculos> Listar()
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Veiculos.OrderBy(x => x.IdVeiculo).ToList();
            }
        }
    }
}