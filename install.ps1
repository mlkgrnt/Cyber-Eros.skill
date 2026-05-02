# Cyber-Eros.skill 一键安装脚本 (PowerShell)
# 用法 (远程): irm https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.ps1 | iex
# 用法 (本地): .\install.ps1
# 将技能安装到 ~/.claude/skills/

$REPO_URL = "https://github.com/mlkgrnt/Cyber-Eros.skill.git"
$SKILLS_DIR = "$env:USERPROFILE\.claude\skills"
$SKILLS = @("cyber-eros", "director-engine", "lore-distiller", "memory-archiver", "world-weaver")
$SHARED_DIRS = @("specs")
$CLEANUP_DIR = $null

Write-Host "=== Cyber-Eros.skill Installer ===" -ForegroundColor Cyan
Write-Host ""

# 检测是否已在仓库目录中
function Test-LocalClone {
    foreach ($skill in $SKILLS) {
        if (-not (Test-Path (Join-Path "." $skill))) {
            return $false
        }
    }
    return $true
}

# 获取技能源目录
if (Test-LocalClone) {
    Write-Host "  Detected local repository."
    $SOURCE_DIR = "."
} else {
    Write-Host "  Local repository not found, downloading from GitHub..." -ForegroundColor Yellow
    Write-Host "  URL: $REPO_URL"
    Write-Host ""

    # 检查 git
    if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
        Write-Host "  ERROR: git is not installed." -ForegroundColor Red
        Write-Host "  Please install git first: https://git-scm.com/" -ForegroundColor Red
        exit 1
    }

    # clone 到临时目录
    $CLEANUP_DIR = Join-Path ([System.IO.Path]::GetTempPath()) "cyber-eros-install-$(Get-Random)"
    try {
        git clone --depth 1 $REPO_URL "$CLEANUP_DIR\repo" 2>&1 | Out-Null
        if ($LASTEXITCODE -ne 0) { throw "clone failed" }
    } catch {
        Write-Host "  ERROR: Failed to clone repository." -ForegroundColor Red
        if (Test-Path $CLEANUP_DIR) { Remove-Item -Path $CLEANUP_DIR -Recurse -Force }
        exit 1
    }

    $SOURCE_DIR = "$CLEANUP_DIR\repo"
    Write-Host "  Download complete." -ForegroundColor Green
}

# 创建目标目录
if (-not (Test-Path $SKILLS_DIR)) {
    New-Item -ItemType Directory -Path $SKILLS_DIR -Force | Out-Null
    Write-Host "  Created: $SKILLS_DIR" -ForegroundColor Green
}

$installed = 0
$errors = @()

foreach ($skill in $SKILLS) {
    $src = Join-Path $SOURCE_DIR $skill
    $dst = Join-Path $SKILLS_DIR $skill

    if (-not (Test-Path $src)) {
        $errors += "  SKIPPED: '$skill' — source folder not found at $src"
        continue
    }

    # Remove existing if present
    if (Test-Path $dst) {
        Remove-Item -Path $dst -Recurse -Force
    }

    # Copy recursively
    Copy-Item -Path $src -Destination $SKILLS_DIR -Recurse -Force
    $installed++
    Write-Host "  INSTALLED: $skill" -ForegroundColor Green
}

# Copy shared directories (specs/)
foreach ($shared in $SHARED_DIRS) {
    $src = Join-Path $SOURCE_DIR $shared
    $dst = Join-Path $SKILLS_DIR $shared

    if (-not (Test-Path $src)) {
        $errors += "  SKIPPED: shared '$shared' — source folder not found at $src"
        continue
    }

    if (Test-Path $dst) {
        Remove-Item -Path $dst -Recurse -Force
    }

    Copy-Item -Path $src -Destination $SKILLS_DIR -Recurse -Force
    Write-Host "  INSTALLED: $shared (shared)" -ForegroundColor Green
}

# 清理临时目录
if ($CLEANUP_DIR -and (Test-Path $CLEANUP_DIR)) {
    Remove-Item -Path $CLEANUP_DIR -Recurse -Force
}

Write-Host ""
Write-Host "=== Results ===" -ForegroundColor Cyan
Write-Host "  $installed / $($SKILLS.Count) skills installed to $SKILLS_DIR"

if ($errors.Count -gt 0) {
    Write-Host ""
    Write-Host "Warnings:" -ForegroundColor Yellow
    foreach ($e in $errors) { Write-Host $e -ForegroundColor Yellow }
}

Write-Host ""
Write-Host "Installed skills:" -ForegroundColor Cyan
Get-ChildItem $SKILLS_DIR -Directory | ForEach-Object { Write-Host "  - $($_.Name)" }

Write-Host ""
Write-Host "Done! Restart Claude Code to use the new skills." -ForegroundColor Green
