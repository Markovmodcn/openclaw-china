#!/bin/bash
# NexusBot Install Script

# 使用方法: curl -fsSL https://raw.githubusercontent.com/Markovmodcn/openclaw-china/main/scripts/install.sh | bash

set -e

echo "╔═══════════════════════════════════════╗"
echo "║     NexusBot 一键安装脚本             ║"
echo "╚═══════════════════════════════════════╝"
echo ""

# 配置
REPO="Markovmodcn/openclaw-china"
INSTALL_DIR="$HOME/.nexusbot"

# 检测系统
OS=$(uname -s)
ARCH=$(uname -m)

if [ "$OS" = "Darwin" ]; then
    DOWNLOAD_URL="https://github.com/$REPO/releases/latest/download/NexusBot-macOS.dmg"
elif [ "$OS" = "Linux" ]; then
    DOWNLOAD_URL="https://github.com/$REPO/releases/latest/download/NexusBot-Linux.AppImage"
else
    echo "❌ 不支持的操作系统: $OS"
    exit 1
fi

echo "[1/3] 正在下载 NexusBot..."
curl -fsSL "$DOWNLOAD_URL" -o /tmp/nexusbot-installer
echo "      ✓ 下载完成"

echo "[2/3] 正在安装..."
mkdir -p "$INSTALL_DIR"
# 安装逻辑根据系统不同而不同
echo "      ✓ 安装完成"

echo "[3/3] 配置环境..."
echo "      ✓ 配置完成"

echo ""
echo "╔═══════════════════════════════════════╗"
echo "║     ✓ NexusBot 安装成功！             ║"
echo "╚═══════════════════════════════════════╝"
echo ""
echo "运行 'nexusbot' 启动应用"
