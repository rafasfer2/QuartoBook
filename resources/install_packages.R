# Script de Instalação de Pacotes R
# Execute este script antes de renderizar o livro

cat("Instalando pacotes necessários para 'Confiabilidade e Manutenção: Aplicações em R'\n\n")

# Lista completa de pacotes
pacotes <- c(
  # Manipulação de dados
  "tidyverse",
  "dplyr",
  "tidyr",
  "readr",
  "lubridate",
  "data.table",
  "here",

  # Visualização
  "ggplot2",
  "plotly",
  "patchwork",
  "ggthemes",
  "scales",

  # Confiabilidade e Sobrevivência
  "survival",
  "flexsurv",
  "WeibullR",
  "survminer",
  "fitdistrplus",

  # Tabelas e Relatórios
  "knitr",
  "kableExtra",
  "DT",
  "broom",
  "gt",
  "flextable",

  # Machine Learning
  "caret",
  "randomForest",
  "xgboost",

  # Séries Temporais
  "prophet",
  "anomalize",
  "forecast",
  "zoo",

  # Simulação
  "simmer",
  "MASS",

  # API e Dados
  "httr",
  "jsonlite",
  "DBI",
  "RSQLite",

  # Reprodutibilidade
  "renv",
  "pins",

  # Outros
  "naniar"
)

# Função para instalar se necessário
instalar_se_necessario <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    cat("Instalando:", pkg, "\n")
    install.packages(pkg, dependencies = TRUE)
  } else {
    cat("Já instalado:", pkg, "\n")
  }
}

# Instalar pacotes
cat("\n=== INICIANDO INSTALAÇÃO ===\n\n")

for (pkg in pacotes) {
  tryCatch({
    instalar_se_necessario(pkg)
  }, error = function(e) {
    cat("ERRO ao instalar", pkg, ":", conditionMessage(e), "\n")
  })
}

cat("\n=== INSTALAÇÃO CONCLUÍDA ===\n\n")

# Verificar instalação
cat("Verificando pacotes instalados...\n\n")

instalados <- sapply(pacotes, requireNamespace, quietly = TRUE)
sucesso <- sum(instalados)
total <- length(pacotes)

cat(sprintf("✅ %d de %d pacotes instalados com sucesso (%.1f%%)\n\n",
            sucesso, total, (sucesso/total)*100))

if (sucesso < total) {
  cat("⚠️  Pacotes não instalados:\n")
  cat(paste("-", pacotes[!instalados], collapse = "\n"), "\n\n")
  cat("Tente instalar manualmente:\n")
  cat(sprintf("install.packages(c(%s))\n",
              paste(shQuote(pacotes[!instalados]), collapse = ", ")))
} else {
  cat("🎉 Todos os pacotes foram instalados!\n")
  cat("Você está pronto para renderizar o livro.\n\n")
  cat("Execute: quarto render\n")
}

# Informações do sistema
cat("\n=== INFORMAÇÕES DO SISTEMA ===\n\n")
cat("R version:", R.version.string, "\n")
cat("Platform:", R.version$platform, "\n")
cat("Locale:", Sys.getlocale("LC_COLLATE"), "\n\n")
