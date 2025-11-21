# 📚 Quarto Book Project

Projeto de livro digital criado com **Quarto**, **R** e **VS Code**.

## 🚀 Quick Start

### Visualizar Book

```bash
quarto preview
```

Abrirá automaticamente no navegador com hot reload.

### Renderizar

```bash
# HTML (padrão)
quarto render

# PDF (requer LaTeX)
quarto render --to pdf
```

## 📁 Estrutura

```
QuartoBook/
├── _quarto.yml       # Configuração do book
├── index.qmd         # Homepage
├── intro.qmd         # Introdução
├── summary.qmd       # Análises com código R
├── references.qmd    # Referências
├── references.bib    # Bibliografia
├── _book/           # Output (não versionado)
├── .Rprofile        # Configurações R
├── .gitignore       # Arquivos ignorados
└── README.md        # Este arquivo
```

## ✏️ Adicionar Capítulo

1. Criar arquivo `.qmd`:

```bash
touch novo-capitulo.qmd
```

2. Adicionar conteúdo:

```markdown
# Título do Capítulo

## Seção

Texto aqui...

```{r}
# Código R
library(ggplot2)
ggplot(mtcars, aes(mpg, hp)) + geom_point()
```
```

3. Registrar em `_quarto.yml`:

```yaml
book:
  chapters:
    - index.qmd
    - novo-capitulo.qmd  # <-- adicionar aqui
    - references.qmd
```

## 🎨 Personalizar

### Tema

Edite `_quarto.yml`:

```yaml
format:
  html:
    theme: cosmo  # flatly, litera, minty, etc.
```

### Opções de Código

```yaml
execute:
  echo: true          # mostrar código
  warning: false      # esconder warnings
  cache: true         # usar cache
```

## 📦 Pacotes R Necessários

```r
install.packages(c(
  "knitr",
  "rmarkdown",
  "dplyr",
  "ggplot2"
))
```

## 📤 Publicar

### GitHub Pages

```bash
quarto publish gh-pages
```

### Netlify/Vercel

```bash
quarto render
# Upload da pasta _book/
```

## 🔗 Links Úteis

- [Quarto Documentation](https://quarto.org/)
- [Quarto Books Guide](https://quarto.org/docs/books/)
- [R for Data Science](https://r4ds.hadley.nz/)

## 💻 Desenvolvimento

### Com RStudio Desktop

- Desenvolver código R no RStudio
- Editar `.qmd` no VS Code
- Preview automático

### Atalhos VS Code

- `Ctrl+Shift+K` - Preview
- `Ctrl+Enter` - Executar chunk/linha
- `Ctrl+Shift+Enter` - Executar chunk completo

---

**Versões:**
- Quarto: 1.6.39
- R: 4.5.1
- Criado: 21/11/2025
