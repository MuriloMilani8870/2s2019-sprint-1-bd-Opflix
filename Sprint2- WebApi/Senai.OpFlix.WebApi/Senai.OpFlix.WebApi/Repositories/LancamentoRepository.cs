using Senai.OpFlix.WebApi.Domains;
using Senai.OpFlix.WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFlix.WebApi.Repositories
{
    public class LancamentoRepository : ILancamentoRepository
    {
        /// <summary>
        /// Método para listar os Lançamentos
        /// </summary>
        /// <returns>Lista de Lançamentos</returns>
        public List<Lancamentos> Listar()
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Lancamentos.ToList();
            }
        }

        /// <summary>
        /// Método para cadastrar novos lancamentos
        /// </summary>
        /// <param name="lancamento"></param>
        public void Cadastrar(Lancamentos lancamento)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                ctx.Lancamentos.Add(lancamento);
                ctx.SaveChanges();
            }
        }

        /// <summary>
        /// Método que altera algum dado de um lancamento
        /// </summary>
        /// <param name="lancamento"></param>
        public void Atualizar(Lancamentos lancamento)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                Lancamentos lancamentoBuscado = ctx.Lancamentos.FirstOrDefault(x => x.IdLancamento == lancamento.IdLancamento);
                lancamentoBuscado.Titulo = lancamento.Titulo;
                lancamentoBuscado.IdCategoria = lancamento.IdCategoria;
                lancamentoBuscado.IdFormato = lancamento.IdFormato;
                lancamentoBuscado.Sinopse = lancamento.Sinopse;
                lancamentoBuscado.Duracao = lancamento.Duracao;
                lancamentoBuscado.DataLancamento = lancamento.DataLancamento;
                ctx.Lancamentos.Update(lancamentoBuscado);
                ctx.SaveChanges();
            }
        }

        /// <summary>
        /// Método que deleta um lancamentos específico
        /// </summary>
        /// <param name="id"></param>
        public void Deletar(int id)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                Lancamentos lancamentoBuscado = ctx.Lancamentos.Find(id);
                ctx.Lancamentos.Remove(lancamentoBuscado);
                ctx.SaveChanges();
            }
        }

        /// <summary>
        /// Método para encontrar um Lancamento pelo seu ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Lancamentos BuscarPorId(int id)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Lancamentos.FirstOrDefault(x => x.IdLancamento == id);
            }
        }
    }
}
