using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
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
    [Authorize(Roles = "ADMINISTRADOR")]
    public class CategoriasController : ControllerBase
    {
        private ICategoriaRepository CategoriaRepository { get; set; }

        public CategoriasController()
        {
            CategoriaRepository = new CategoriaRepository();
        }

        [HttpGet]
        public IActionResult Listar()
        {
            return Ok(CategoriaRepository.Listar());
        }


        [HttpPost]
        public IActionResult Cadastrar(Categorias categoria)
        {
            try
            {
                CategoriaRepository.Cadastrar(categoria);
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest(new { mensagem = "Ih, deu erro." + ex.Message });
            }
        }


        [HttpPut("{id}")]
        public IActionResult Atualizar(Categorias categoria, int id)
        {
            try
            {
                Categorias categoriaBuscado = CategoriaRepository.BuscarPorId
                    (id);
                if (categoriaBuscado == null)
                    return NotFound();

                categoria.IdCategoria = id;
                CategoriaRepository.Atualizar(categoria);
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }


    }
}