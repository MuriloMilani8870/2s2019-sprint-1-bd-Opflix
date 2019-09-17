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
            VeiculosRepository = new VeiculoRepository();
        }

        /// <summary>
        /// Cadastra um Veiculo.
        /// </summary>
        /// <param name="veiculo">informações do Veiculo.</param>
        /// <returns>Veiculo cadastrado</returns>
        [HttpPost]
        public IActionResult Cadastrar(Veiculos veiculo)
        {
            VeiculosRepository.Cadastrar(veiculo);
            return Ok();
        }

        /// <summary>
        /// Lista todos os Veiculos.
        /// </summary>
        /// <returns>lista de Veiculos.</returns>
        [HttpGet]
        public IActionResult Listar()
        {
            return Ok(VeiculosRepository.Listar());
        }

        /// <summary>
        /// Atualiza algum dado de um determinado Veiculo
        /// </summary>
        /// <param name="veiculo">Veiculo</param>
        /// <param name="id">Id do Veiculo</param>
        /// <returns>Veiculo atualizado</returns>
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
