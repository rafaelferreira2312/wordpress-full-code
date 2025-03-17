# Definir o nome do projeto
$projectName = "meu-projeto-wordpress"

# Criar a estrutura de pastas
New-Item -Path "$projectName" -ItemType Directory
Set-Location -Path "$projectName"

# Criar diretórios principais
New-Item -Path "wp-content" -ItemType Directory
New-Item -Path "wp-admin" -ItemType Directory
New-Item -Path "wp-includes" -ItemType Directory

# Criar subdiretórios dentro de wp-content
Set-Location -Path "wp-content"
New-Item -Path "themes" -ItemType Directory
New-Item -Path "plugins" -ItemType Directory
New-Item -Path "uploads" -ItemType Directory

# Criar estrutura para o tema personalizado
Set-Location -Path "themes"
New-Item -Path "meu-tema-personalizado" -ItemType Directory
Set-Location -Path "meu-tema-personalizado"

# Criar subdiretórios para o tema
New-Item -Path "assets" -ItemType Directory
New-Item -Path "inc" -ItemType Directory
New-Item -Path "template-parts" -ItemType Directory

# Criar subdiretórios dentro de assets
Set-Location -Path "assets"
New-Item -Path "css" -ItemType Directory
New-Item -Path "js" -ItemType Directory
New-Item -Path "images" -ItemType Directory
New-Item -Path "fonts" -ItemType Directory

# Voltar ao diretório do tema
Set-Location -Path ".."

# Criar arquivos essenciais do tema
New-Item -Path "functions.php" -ItemType File
New-Item -Path "style.css" -ItemType File
New-Item -Path "index.php" -ItemType File
New-Item -Path "single.php" -ItemType File
New-Item -Path "page.php" -ItemType File
New-Item -Path "archive.php" -ItemType File
New-Item -Path "404.php" -ItemType File
New-Item -Path "header.php" -ItemType File
New-Item -Path "footer.php" -ItemType File
New-Item -Path "screenshot.png" -ItemType File

# Voltar ao diretório raiz do projeto
Set-Location -Path "../../.."

# Criar arquivos essenciais do WordPress
New-Item -Path ".htaccess" -ItemType File
New-Item -Path "robots.txt" -ItemType File
New-Item -Path "README.md" -ItemType File
New-Item -Path "wp-config.php" -ItemType File

Write-Host "Estrutura de pastas criada com sucesso!" -ForegroundColor Green