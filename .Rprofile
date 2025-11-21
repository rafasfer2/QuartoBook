# .Rprofile para projeto Quarto Book

# Configurações gerais
options(
  repos = c(CRAN = "https://cloud.r-project.org/"),
  browserNLdisabled = TRUE,
  deparse.max.lines = 2,
  scipen = 999,
  stringsAsFactors = FALSE
)

# Mensagem de boas-vindas
if (interactive()) {
  cat("\n")
  cat("══════════════════════════════════════════════════════════\n")
  cat("  📚 Quarto Book Project\n")
  cat("══════════════════════════════════════════════════════════\n")
  cat("  R version:", paste(R.version$major, R.version$minor, sep = "."), "\n")

  # Verificar Quarto
  if (Sys.which("quarto") != "") {
    quarto_version <- system("quarto --version", intern = TRUE)
    cat("  Quarto:", quarto_version, "\n")
  } else {
    cat("  ⚠️  Quarto não encontrado\n")
  }

  cat("══════════════════════════════════════════════════════════\n")
  cat("\nComandos úteis:\n")
  cat("  • quarto preview     - Preview do book com hot reload\n")
  cat("  • quarto render      - Renderizar book completo\n")
  cat("  • quarto check       - Verificar instalação\n")
  cat("\n")
}

# Configurações específicas para Quarto
Sys.setenv(QUARTO_R = "/usr/bin/R")
