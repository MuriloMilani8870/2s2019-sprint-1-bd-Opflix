using Senai.OpFlix.WebApi.Domains;
using Senai.OpFlix.WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFlix.WebApi.Repositories
{
    public class VeiculoRepository : IVeiculoRepository
    {
        private string StringConexao = "Data Source=.\\SqlExpress; initial catalog=M_OpFlix;User Id=sa;Pwd=132;";

        /// <summary>
        /// Atualiza algum dado de um determinado Veiculo
        /// </summary>
        /// <param name="veiculo">Veiculo</param>
        public void Atualizar(Veiculos veiculo)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                Veiculos veiculoBuscado = ctx.Veiculos.FirstOrDefault(x => x.IdVeiculo == veiculo.IdVeiculo);
                veiculoBuscado.NomeVeiculo = veiculo.NomeVeiculo;
                ctx.Veiculos.Update(veiculoBuscado);
                ctx.SaveChanges();
            }
        }

        /// <summary>
        /// Método para encontrar um Lancamento pelo seu ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Um Lancamento buscado pelo ID </returns>
        public Veiculos BuscarPorId(int Idveiculo)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Veiculos.FirstOrDefault(x => x.IdVeiculo == Idveiculo);
            }
        }
    
        /// <summary>
        /// Cadastra um Veiculo.
        /// </summary>
        /// <param name="veiculo">informações do Veiculo.</param>
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

        /// <summary>
        /// Método para listar os Lançamentos
        /// </summary>
        /// <returns>Lista de Lançamentos</returns>
        public List<Veiculos> Listar()
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Veiculos.OrderBy(x => x.IdVeiculo).ToList();
            }
        }
    }
}
