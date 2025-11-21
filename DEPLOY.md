# 🚀 Guia de Hospedagem do Livro

## Opções de Hospedagem

### 1. GitHub Pages (RECOMENDADO) ✅

**Vantagens:**
- ✅ Gratuito
- ✅ Deploy automático via GitHub Actions
- ✅ Domínio `usuario.github.io/repo`
- ✅ SSL grátis

**Passos:**

```bash
# 1. Criar repositório no GitHub
# Vá em github.com/new

# 2. Inicializar Git local
git init
git add .
git commit -m "feat: estrutura inicial do livro"

# 3. Conectar ao GitHub
git remote add origin https://github.com/SEU-USUARIO/QuartoBook.git
git branch -M main
git push -u origin main

# 4. Habilitar GitHub Pages
# Settings → Pages → Source: "GitHub Actions"
```

O workflow em `.github/workflows/publish.yml` já está configurado!

**URL final:** `https://SEU-USUARIO.github.io/QuartoBook/`

---

### 2. Quarto Pub

**Vantagens:**
- ✅ Mais rápido
- ✅ Domínio `usuario.quarto.pub/projeto`
- ✅ Um comando apenas

**Passos:**

```bash
quarto publish quarto-pub
```

Primeira vez: cria conta interativamente.

**URL final:** `https://SEU-USUARIO.quarto.pub/quartobook/`

---

### 3. Netlify

**Vantagens:**
- ✅ Deploy automático do GitHub
- ✅ Preview de PRs
- ✅ Domínio customizado grátis

**Passos:**

1. Criar conta em [netlify.com](https://netlify.com)
2. "New site from Git" → Conectar GitHub
3. Configurar:
   - **Build command:** `quarto render`
   - **Publish directory:** `docs`
4. Deploy!

**URL final:** `https://nome-projeto.netlify.app`

---

### 4. Vercel

**Vantagens:**
- ✅ Deploy instantâneo
- ✅ Analytics grátis
- ✅ Edge network global

**Passos:**

1. Criar conta em [vercel.com](https://vercel.com)
2. "Import Project" → GitHub
3. Configurar:
   - **Framework Preset:** Other
   - **Build Command:** `quarto render`
   - **Output Directory:** `docs`

**URL final:** `https://projeto.vercel.app`

---

## Preparação Antes de Hospedar

### 1. Configurar `.gitignore`

Já está configurado! Verifica se contém:

```gitignore
/.quarto/
/_freeze/
/docs/
*_cache/
*_files/
.Rhistory
```

### 2. Atualizar URLs no `_quarto.yml`

```yaml
book:
  repo-url: https://github.com/SEU-USUARIO/QuartoBook
  site-url: https://SEU-USUARIO.github.io/QuartoBook
```

### 3. Testar Localmente

```bash
quarto preview
```

Abre automaticamente no navegador.

### 4. Renderizar Produção

```bash
quarto render
```

Gera HTML em `docs/`.

---

## Troubleshooting

### Pacotes R faltando?

```bash
Rscript resources/install_packages.R
```

### Erro no GitHub Actions?

Verifica logs em: `Actions` → clique no workflow com erro

### Página não atualiza?

- GitHub Pages: espere 1-2 minutos
- Netlify/Vercel: limpe cache do navegador (Ctrl+Shift+R)

### Erros de permissão no GitHub Actions?

Settings → Actions → General → Workflow permissions → "Read and write permissions"

---

## Monitoramento

### GitHub Pages

Status: `Settings` → `Pages` → Ver URL e status

### Netlify

Dashboard mostra:
- Build logs
- Deploy status
- Analytics

### Quarto Pub

Gerenciar em: https://quarto.pub/

---

## Domínio Customizado (Opcional)

### GitHub Pages

1. Comprar domínio (Namecheap, GoDaddy, etc.)
2. `Settings` → `Pages` → `Custom domain`
3. Configurar DNS:
   ```
   CNAME → SEU-USUARIO.github.io
   ```

### Netlify/Vercel

1. `Domain settings` → `Add custom domain`
2. Seguir instruções DNS

---

## Manutenção

### Atualizar Conteúdo

```bash
# Edite arquivos .qmd
# Commit e push

git add .
git commit -m "feat: adiciona novo capítulo"
git push
```

GitHub Actions faz o resto automaticamente!

### Ver Estatísticas

- GitHub: `Insights` → `Traffic`
- Netlify: Dashboard → Analytics
- Google Analytics: adicione em `_quarto.yml`:

```yaml
website:
  google-analytics: "G-XXXXXXXXXX"
```

---

## Checklist de Deploy

- [ ] `quarto render` funciona sem erros
- [ ] Todas as imagens e links funcionam
- [ ] Bibliografia renderiza corretamente
- [ ] Navegação entre capítulos OK
- [ ] Responsive (mobile-friendly)
- [ ] README.md atualizado com URL final
- [ ] Git push completo

---

## Próximos Passos

1. **Agora:** Escolha uma plataforma (recomendo GitHub Pages)
2. **Depois:** Configure domínio customizado (opcional)
3. **Manutenção:** Atualize conteúdo e faça push

**Sucesso!** 🎉

---

**Dúvidas?** Consulte:
- [Quarto Publishing](https://quarto.org/docs/publishing/)
- [GitHub Pages Docs](https://docs.github.com/pages)
- [Netlify Docs](https://docs.netlify.com/)
