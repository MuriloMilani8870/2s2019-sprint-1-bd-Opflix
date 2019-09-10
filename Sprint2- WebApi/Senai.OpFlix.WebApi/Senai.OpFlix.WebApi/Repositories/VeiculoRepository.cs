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

        public Veiculos BuscarPorId(int Idveiculo)
        {
            using (OpFlixContext ctx = new OpFlixContext())
            {
                return ctx.Veiculos.FirstOrDefault(x => x.IdVeiculo == Idveiculo);
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
