# 📚 Confiabilidade e Manutenção: Aplicações em R

📖 Livro interativo sobre análise de confiabilidade e estratégias de manutenção usando R

[![Deploy Book](https://github.com/seu-usuario/QuartoBook/actions/workflows/publish.yml/badge.svg)](https://github.com/seu-usuario/QuartoBook/actions/workflows/publish.yml)

## 📖 Sobre o Livro

Este livro oferece uma abordagem **prática e aplicada** sobre **confiabilidade** e **manutenção industrial**, com implementações completas em **R**. Todos os exemplos são reproduzíveis e incluem código completo.

### Conteúdo

**Parte I: Fundamentos e Teoria**
- Fundamentos de Confiabilidade
- Distribuições de Probabilidade para Vida Útil
- Estimação de Parâmetros e Inferência

**Parte II: Análise e Modelagem Prática**
- Análise de Dados de Falha com R
- Modelagem Weibull na Prática
- Análise de Sobrevivência e Modelos de Cox

**Parte III: Estratégias de Manutenção**
- Manutenção Preventiva e Otimização de Políticas
- Manutenção Preditiva com Dados de Sensores
- Modelos de Confiabilidade de Sistemas

**Parte IV: Métodos Avançados e Aplicações**
- Simulação Monte Carlo para Confiabilidade
- Estudos de Caso Industriais
- Governança de Dados e Melhores Práticas

**Público-alvo:** Engenheiros de confiabilidade, analistas de manutenção, cientistas de dados, estudantes e profissionais da indústria.

## 🚀 Quick Start

### 1. Instalar Dependências

```bash
# Instalar pacotes R
Rscript resources/install_packages.R
```

### 2. Visualizar Livro

```bash
quarto preview
```

Abre automaticamente no navegador com hot reload.

### 3. Renderizar Completo

```bash
# HTML (padrão)
quarto render

# PDF (requer LaTeX)
quarto render --to pdf
```

## 📁 Estrutura

```
QuartoBook/
├── _quarto.yml              # Configuração do livro
├── index.qmd                # Página inicial
├── preface.qmd              # Prefácio
├── requirements.qmd         # Como usar
├── setup.qmd                # Instalação
├── chapters/                # 12 capítulos principais
│   ├── 01-fundamentos.qmd
│   ├── 02-distribuicoes.qmd
│   └── ...
├── appendices/              # 3 apêndices
│   ├── A-pacotes.qmd
│   ├── B-templates.qmd
│   └── C-cheatsheet.qmd
├── resources/               # Scripts e dados
│   ├── install_packages.R
│   └── data/
├── docs/                    # Output renderizado
├── references.qmd           # Referências
├── credits.qmd              # Créditos
└── README.md                # Este arquivo
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

## 🌐 Hospedagem

Este livro pode ser hospedado em várias plataformas:

### GitHub Pages (Recomendado)

```bash
# 1. Criar repositório no GitHub
# 2. Push do código
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/seu-usuario/QuartoBook.git
git push -u origin main

# 3. Habilitar GitHub Pages
# Settings → Pages → Source: GitHub Actions
```

O GitHub Actions renderiza e publica automaticamente em: `https://seu-usuario.github.io/QuartoBook/`

### Quarto Pub

```bash
quarto publish quarto-pub
```

### Netlify

```bash
# 1. Criar conta em netlify.com
# 2. Conectar repositório GitHub
# 3. Configurar:
#    Build command: quarto render
#    Publish directory: docs
```

### Vercel

```bash
# 1. Criar conta em vercel.com
# 2. Import repositório
# 3. Configurar:
#    Build command: quarto render
#    Output directory: docs
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
