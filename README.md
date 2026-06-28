# Manual do Pescador — Página de Vendas (Low Ticket)

Página de vendas para o nicho de **pescaria**, produto **low ticket** (R$37).
Segue o mesmo padrão técnico/visual das páginas VIS (ex: Missa Explicada):
HTML/CSS/JS estático, mobile-first, checkout `visplatform.pro/checkout-fast/[slug]`,
tracking segmentado (Meta Pixel + Utmify + VIS snippet → ViewContent/InitiateCheckout).

> ⚠️ Antes de publicar, preencha os placeholders marcados com `>>> PREENCHER`
> no `index.html` e as imagens listadas em
> [public_html/assets/IMAGENS-NECESSARIAS.md](public_html/assets/IMAGENS-NECESSARIAS.md).

## 📁 Estrutura do projeto

```
pescaria/
├── public_html/            # 👉 Tudo que vai para o servidor (Hostinger/cPanel)
│   ├── index.html          # Página de vendas (todas as seções)
│   └── assets/
│       ├── styles.css      # Design system (tema pesca)
│       ├── script.js       # Countdown, FAQ, carrossel, tracking
│       ├── IMAGENS-NECESSARIAS.md  # Checklist de imagens/valores a preencher
│       └── (imagens .png/.webp)
├── scripts/
│   └── build-zip.ps1       # Gera o .zip pronto para subir no cPanel
├── .gitignore
└── README.md
```

> **Importante:** Somente o conteúdo de `public_html/` é publicado no site.
> O restante (README, scripts, etc.) fica só no repositório.

## 🚀 Deploy na Hostinger (cPanel)

1. Gere o pacote:
   ```powershell
   ./scripts/build-zip.ps1
   ```
   Isso cria `dist/pescaria-site.zip` contendo **o conteúdo** de `public_html/`
   (o `index.html` fica na raiz do zip, do jeito que o cPanel espera).

2. No cPanel da Hostinger → **Gerenciador de Arquivos** → entre em `public_html`.
3. Faça **upload** do `pescaria-site.zip`.
4. Clique com o botão direito → **Extrair** (Extract).
5. Pronto — o site está no ar. 🎣

## 🛠️ Desenvolvimento local

Abra `public_html/index.html` direto no navegador, ou rode um servidor local:

```powershell
# Com Python instalado:
cd public_html
python -m http.server 8000
# acesse http://localhost:8000
```

## 🔧 Tecnologia

A tecnologia/estrutura final da página é definida conforme o prompt de criação.
Base atual: **HTML + CSS + JS** estático (ideal para deploy via zip no cPanel).
