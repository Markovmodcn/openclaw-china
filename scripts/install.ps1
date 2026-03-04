# NexusBot Windows Install Script

# NexusBot 一键安装脚本
# 使用方法: iwr -useb https://raw.githubusercontent.com/Markovmodcn/openclaw-china/main/scripts/install.ps1 | iex

$ErrorActionPreference = 'Stop'

Write-Host "╔═══════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║     NexusBot 一键安装脚本             ║" -ForegroundColor Cyan
Write-Host "╚═══════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""


# 配置
$REPO = "Markovmodcn/openclaw-china"
$DOWNLOAD_URL = "https://github.com/$REPO/releases/latest/download/NexusBot-Setup.exe"
$TEMP_FILE = "$env:TEMP\NexusBot-Setup.exe"

# 检查是否已安装
$INSTALL_DIR = "$env:LOCALAPPDATA\NexusBot"
if (Test-Path "$INSTALL_DIR\NexusBot.exe") {
    Write-Host "⚠️  检测到已安装 NexusBot" -ForegroundColor Yellow
    $response = Read-Host "是否覆盖安装？(Y/N)"
    if ($response -ne 'Y' -and $response -ne 'y') {
        Write-Host "安装已取消" -ForegroundColor Gray
        exit 0
    }
}


# 下载安装包
Write-Host "[1/3] 正在下载 NexusBot..." -ForegroundColor Yellow
try {
    Invoke-WebRequest -Uri $DOWNLOAD_URL -OutFile $TEMP_FILE -UseBasicParsing
    Write-Host "      ✓ 下载完成" -ForegroundColor Green
} catch {
    Write-Host "      ✗ 下载失败: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# 运行安装程序
Write-Host "[2/3] 正在安装..." -ForegroundColor Yellow
try {
    Start-Process -FilePath $TEMP_FILE -ArgumentList "/S" -Wait
    Write-Host "      ✓ 安装完成" -ForegroundColor Green
} catch {
    Write-Host "      ✗ 安装失败: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}


# 清理临时文件
Write-Host "[3/3] 清理临时文件..." -ForegroundColor Yellow
Remove-Item $TEMP_FILE -ErrorAction SilentlyContinue
Write-Host "      ✓ 清理完成" -ForegroundColor Green

Write-Host ""
Write-Host "╔═══════════════════════════════════════╗" -ForegroundColor Green
Write-Host "║     ✓ NexusBot 安装成功！             ║" -ForegroundColor Green
Write-Host "╚═══════════════════════════════════════╝" -ForegroundColor Green
Write-Host ""
Write-Host "运行 'nexusbot' 或从开始菜单启动" -ForegroundColor Cyan
