# ⚙️ NexusBot 配置说明

详细的配置选项说明。

---

## 🤖 AI 模型配置

### 本地模型

**Ollama 配置**
```yaml
type: ollama
host: http://localhost:11434
model: qwen2.5:7b
```

**LM Studio 配置**
```yaml
type: lmstudio
host: http://localhost:1234
model: qwen2.5-7b
```

### 在线模型

**DeepSeek**
```yaml
type: deepseek
api_key: your_api_key
model: deepseek-chat
```

**Kimi**
```yaml
type: kimi
api_key: your_api_key
model: moonshot-v1-8k
```

---

## 💬 消息平台配置

### 钉钉
```yaml
dingtalk:
  app_key: your_app_key
  app_secret: your_app_secret
  webhook_port: 3000
```

### 飞书
```yaml
feishu:
  app_id: your_app_id
  app_secret: your_app_secret
  webhook_port: 3000
```

### 企业微信
```yaml
wecom:
  corp_id: your_corp_id
  agent_id: your_agent_id
  secret: your_secret
  token: your_token
  aes_key: your_aes_key
```

---

## 🔌 技能配置

### 启用/禁用技能
```yaml
skills:
  github: true
  jira: false
  slack: true
```

### 技能参数
```yaml
skills:
  github:
    token: your_github_token
    default_repo: username/repo
```

---

## 🔧 高级配置

### 日志级别
```yaml
logging:
  level: info  # debug, info, warn, error
  file: logs/nexusbot.log
```

### 性能优化
```yaml
performance:
  max_concurrent: 10
  timeout: 30
  cache_enabled: true
```

### 安全设置
```yaml
security:
  allowed_users: []  # 空数组表示允许所有用户
  rate_limit: 60  # 每分钟最大请求数
```

---

## 📁 配置文件位置

- **Windows**: `C:\Users\用户名\.nexusbot\config.yaml`
- **macOS**: `~/.nexusbot/config.yaml`
- **Linux**: `~/.nexusbot/config.yaml`

---

## 🔄 重载配置

修改配置后：
1. 保存配置文件
2. 重启 NexusBot
3. 或在界面中点击"重载配置"

---

## 📚 相关文档

- [快速开始](./quickstart.md)
- [常见问题](./faq.md)
- [平台配置](./platforms/)
