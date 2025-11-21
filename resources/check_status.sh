#!/bin/bash
# Script para verificar status de instalação e renderização

echo "=== Status de Instalação dos Pacotes ==="
echo ""

# Lista de pacotes críticos
PACOTES_CRITICOS=("tidyverse" "ggplot2" "survival" "survminer" "fitdistrplus" "kableExtra" "DT" "flexsurv")
PACOTES_OPCIONAIS=("WeibullR" "caret" "randomForest" "prophet" "anomalize" "zoo" "DiagrammeR" "naniar" "DBI" "RSQLite" "pins" "targets" "httr" "renv" "simmer")

echo "Pacotes Críticos:"
for pkg in "${PACOTES_CRITICOS[@]}"; do
    if Rscript -e "library($pkg)" 2>/dev/null; then
        echo "  ✅ $pkg"
    else
        echo "  ❌ $pkg"
    fi
done

echo ""
echo "Pacotes Opcionais:"
for pkg in "${PACOTES_OPCIONAIS[@]}"; do
    if Rscript -e "library($pkg)" 2>/dev/null; then
        echo "  ✅ $pkg"
    else
        echo "  ⏳ $pkg (instalando...)"
    fi
done

echo ""
echo "=== Tentando Renderizar ==="
echo ""

if quarto render; then
    echo ""
    echo "✅ Livro renderizado com sucesso!"
    echo "📂 Arquivos em: docs/"
    echo ""
    echo "Próximos passos:"
    echo "1. Visualizar: quarto preview"
    echo "2. Deploy: git push para GitHub"
    echo "3. Ver online em: https://seu-usuario.github.io/QuartoBook/"
else
    echo ""
    echo "⚠️  Alguns capítulos falharam (pacotes faltando)"
    echo "Aguarde instalação completa dos pacotes..."
fi
