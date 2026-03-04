# 📖 NexusBot 安装指南

本指南将帮助你在 Windows、macOS 或 Linux 系统上安装 NexusBot。

---

## 🎯 系统要求

### 最低配置
- **操作系统**: Windows 10/11, macOS 10.15+, Ubuntu 20.04+
- **内存**: 4GB RAM
- **磁盘空间**: 2GB 可用空间
- **网络**: 需要访问 AI 模型 API（或使用本地模型）

### 推荐配置
- **操作系统**: Windows 11, macOS 12+, Ubuntu 22.04+
- **内存**: 8GB RAM 或更多
- **磁盘空间**: 5GB 可用空间
- **处理器**: 支持本地模型运行（如使用 Ollama）

---

## 🪟 Windows 安装

### 方法 1: 安装版（推荐）

1. **下载安装包**
   - 访问 [GitHub Releases](https://github.com/Markovmodcn/openclaw-china/releases/latest)
   - 下载 `NexusBot-Setup.exe`

2. **运行安装程序**
   - 双击 `NexusBot-Setup.exe`
   - 按照安装向导提示操作
   - 选择安装位置（默认：`C:\Program Files\NexusBot`）

3. **完成安装**
   - 安装完成后会自动创建桌面快捷方式
   - 双击快捷方式启动 NexusBot

### 方法 2: 绿色版

1. **下载绿色版**
   - 下载 `NexusBot-Portable.exe`

2. **解压使用**
   - 解压到任意目录
   - 双击 `NexusBot.exe` 启动

### 方法 3: 脚本安装

```powershell
iwr -useb https://raw.githubusercontent.com/Markovmodcn/openclaw-china/main/scripts/install.ps1 | iex
```

---

## 🍎 macOS 安装

### 方法 1: DMG 安装包

1. **下载 DMG**
   - 访问 [GitHub Releases](https://github.com/Markovmodcn/openclaw-china/releases/latest)
   - 下载 `NexusBot.dmg`

2. **安装应用**
   - 打开 DMG 文件
   - 将 NexusBot 拖到 Applications 文件夹

3. **首次运行**
   - 打开 Applications，找到 NexusBot
   - 右键点击，选择"打开"（绕过安全检查）

### 方法 2: 脚本安装

```bash
curl -fsSL https://raw.githubusercontent.com/Markovmodcn/openclaw-china/main/scripts/install.sh | bash
```

---

## 🐧 Linux 安装

### Ubuntu/Debian

```bash
# 下载安装包
wget https://github.com/Markovmodcn/openclaw-china/releases/latest/download/nexusbot_amd64.deb

# 安装
sudo dpkg -i nexusbot_amd64.deb
sudo apt-get install -f
```

### 其他发行版

```bash
curl -fsSL https://raw.githubusercontent.com/Markovmodcn/openclaw-china/main/scripts/install.sh | bash
```

---

## 🐳 Docker 安装

```bash
docker run -d \
  --name nexusbot \
  -p 3000:3000 \
  -v nexusbot-data:/data \
  markovmodcn/nexusbot:latest
```

---

## ✅ 验证安装

安装完成后，启动 NexusBot，你应该看到：
- 欢迎界面
- 配置向导
- 系统托盘图标

---

## 🔧 故障排除

### Windows 安装失败

- 确保以管理员身份运行
- 关闭杀毒软件
- 检查磁盘空间

### macOS 无法打开

- 系统偏好设置 → 安全性与隐私 → 允许打开

### Linux 依赖问题

```bash
sudo apt-get update
sudo apt-get install -f
```

---

## 📚 下一步

- [快速开始](./quickstart.md)
- [配置说明](./config.md)
- [常见问题](./faq.md)
