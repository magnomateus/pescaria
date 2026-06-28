# Pescaria — Página de Vendas (Low Ticket)

Página de vendas para o nicho de **pescaria**, produto **low ticket**.

## 📁 Estrutura do projeto

```
pescaria/
├── public_html/            # 👉 Tudo que vai para o servidor (Hostinger/cPanel)
│   ├── index.html          # Página principal
│   └── assets/
│       ├── css/            # Estilos
│       ├── js/             # Scripts
│       └── img/            # Imagens
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
