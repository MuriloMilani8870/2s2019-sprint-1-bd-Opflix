using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Senai.OpFlix.WebApi.Domains
{
    public partial class OpFlixContext : DbContext
    {
        public OpFlixContext()
        {
        }

        public OpFlixContext(DbContextOptions<OpFlixContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Categorias> Categorias { get; set; }
        public virtual DbSet<Formatos> Formatos { get; set; }
        public virtual DbSet<Imagens> Imagens { get; set; }
        public virtual DbSet<Lancamentos> Lancamentos { get; set; }
        public virtual DbSet<Usuarios> Usuarios { get; set; }
        public virtual DbSet<Veiculos> Veiculos { get; set; }

        // Unable to generate entity type for table 'dbo.Transmissao'. Please see the warning messages.
        // Unable to generate entity type for table 'dbo.Favoritos'. Please see the warning messages.

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Data Source=.\\SqlExpress; Initial Catalog=M_OpFlix;User Id=sa;Pwd=132");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Categorias>(entity =>
            {
                entity.HasKey(e => e.IdCategoria);

                entity.HasIndex(e => e.NomeCategoria)
                    .HasName("UQ__Categori__98459A0BAFD45CD1")
                    .IsUnique();

                entity.Property(e => e.NomeCategoria)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Formatos>(entity =>
            {
                entity.HasKey(e => e.IdFormato);

                entity.HasIndex(e => e.NomeFormato)
                    .HasName("UQ__Formatos__432C66005386D490")
                    .IsUnique();

                entity.Property(e => e.IdFormato).ValueGeneratedOnAdd();

                entity.Property(e => e.NomeFormato)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Imagens>(entity =>
            {
                entity.HasKey(e => e.IdImagem);

                entity.Property(e => e.VbImagem)
                    .IsRequired()
                    .HasColumnName("Vb_Imagem");
            });

            modelBuilder.Entity<Lancamentos>(entity =>
            {
                entity.HasKey(e => e.IdLancamento);

                entity.HasIndex(e => e.Titulo)
                    .HasName("UQ__Lancamen__7B406B5609EE99A4")
                    .IsUnique();

                entity.Property(e => e.DataLancamento).HasColumnType("date");

                entity.Property(e => e.Sinopse)
                    .IsRequired()
                    .HasColumnType("text");

                entity.Property(e => e.Titulo)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdCategoriaNavigation)
                    .WithMany(p => p.Lancamentos)
                    .HasForeignKey(d => d.IdCategoria)
                    .HasConstraintName("FK__Lancament__IdCat__6383C8BA");

                entity.HasOne(d => d.IdFormatoNavigation)
                    .WithMany(p => p.Lancamentos)
                    .HasForeignKey(d => d.IdFormato)
                    .HasConstraintName("FK__Lancament__IdFor__6477ECF3");
            });

            modelBuilder.Entity<Usuarios>(entity =>
            {
                entity.HasKey(e => e.IdUsuario);

                entity.HasIndex(e => e.Cpf)
                    .HasName("UQ__Usuarios__C1F897315AF453CB")
                    .IsUnique();

                entity.HasIndex(e => e.Email)
                    .HasName("UQ__Usuarios__A9D10534BC82CA15")
                    .IsUnique();

                entity.Property(e => e.Cpf).HasColumnName("CPF");

                entity.Property(e => e.DataDeCadastro)
                    .HasColumnType("datetime")
                    .HasDefaultValueSql("(getdate())");

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.NomeUsuario)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Permissao)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Senha)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Veiculos>(entity =>
            {
                entity.HasKey(e => e.IdVeiculo);

                entity.Property(e => e.NomeVeiculo)
                    .IsRequired()
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });
        }
    }
}
