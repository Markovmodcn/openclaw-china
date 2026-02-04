# 🔄 NexusBot 更新升级

保持 NexusBot 最新版本，获取最新功能和安全更新。

---

## 🔔 检查更新

### 自动检查
NexusBot 会自动检查更新，有新版本时会提示。

### 手动检查
设置 → 关于 → 检查更新

---

## 📥 更新方法

### Windows

**安装版**
1. 下载最新的 `NexusBot-Setup.exe`
2. 运行安装程序
3. 选择"覆盖安装"
4. 数据和配置会自动保留

**绿色版**
1. 下载最新的 `NexusBot-Portable.exe`
2. 解压到新文件夹
3. 复制旧版本的配置文件
4. 启动新版本

### macOS

1. 下载最新的 `NexusBot.dmg`
2. 打开 DMG
3. 将新版本拖到 Applications（替换旧版本）
4. 配置会自动保留

### Linux

**Debian/Ubuntu**
```bash
wget https://github.com/Markovmodcn/openclaw-china/releases/latest/download/nexusbot_amd64.deb
sudo dpkg -i nexusbot_amd64.deb
```

**其他发行版**
```bash
curl -fsSL https://raw.githubusercontent.com/Markovmodcn/openclaw-china/main/scripts/install.sh | bash
```

### Docker

```bash
docker pull markovmodcn/nexusbot:latest
docker stop nexusbot
docker rm nexusbot
docker run -d --name nexusbot -p 3000:3000 -v nexusbot-data:/data markovmodcn/nexusbot:latest
```

---

## 💾 备份数据

更新前建议备份：

### Windows
```powershell
xcopy "%USERPROFILE%\.nexusbot" "C:\backup\nexusbot" /E /I
```

### macOS/Linux
```bash
cp -r ~/.nexusbot ~/backup/nexusbot
```

---

## 🔄 版本回退

如果新版本有问题：

1. **卸载新版本**
2. **安装旧版本**
3. **恢复备份的配置**

---

## 📋 更新日志

查看每个版本的更新内容：
https://github.com/Markovmodcn/openclaw-china/releases

---

## ⚠️ 注意事项

1. **更新前备份数据**
2. **关闭 NexusBot 再更新**
3. **检查系统要求**
4. **阅读更新日志**

---

## 🐛 更新失败？

### 常见问题

**权限不足**
- Windows: 以管理员身份运行
- macOS/Linux: 使用 sudo

**文件被占用**
- 完全关闭 NexusBot
- 重启电脑后再试

**网络问题**
- 检查网络连接
- 使用代理
- 手动下载安装包

---

## 📚 相关文档

- [安装指南](./install.md)
- [常见问题](./faq.md)
- [配置说明](./config.md)
