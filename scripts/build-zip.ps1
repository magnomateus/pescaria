# ============================================================
#  build-zip.ps1
#  Gera dist/pescaria-site.zip com o CONTEUDO de public_html/
#  (index.html fica na raiz do zip -> pronto pra extrair no cPanel)
#
#  Uso:  ./scripts/build-zip.ps1
# ============================================================

$ErrorActionPreference = "Stop"

# Raiz do projeto (pasta acima de /scripts)
$root    = Split-Path -Parent $PSScriptRoot
$source  = Join-Path $root "public_html"
$distDir = Join-Path $root "dist"
$zipPath = Join-Path $distDir "pescaria-site.zip"

if (-not (Test-Path $source)) {
    throw "Pasta 'public_html' nao encontrada em: $source"
}

# Garante a pasta dist/
if (-not (Test-Path $distDir)) {
    New-Item -ItemType Directory -Path $distDir | Out-Null
}

# Remove zip antigo, se existir
if (Test-Path $zipPath) {
    Remove-Item $zipPath -Force
}

# Compacta o CONTEUDO de public_html (o \* faz o index.html ficar na raiz do zip)
Compress-Archive -Path (Join-Path $source "*") -DestinationPath $zipPath -Force

Write-Host ""
Write-Host "Pacote gerado com sucesso!" -ForegroundColor Green
Write-Host "   $zipPath"
Write-Host ""
Write-Host "Proximo passo: suba esse .zip no cPanel da Hostinger (dentro de public_html) e extraia." -ForegroundColor Cyan
