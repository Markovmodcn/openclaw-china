# OpenClaw China - 钉钉配置指南

> OpenClaw China 是 OpenClaw 的中国版发行版，开箱即用，支持钉钉、飞书、企业微信。

## 一、获取钉钉凭证

### 1. 创建企业

不需要任何材料，手机、电脑端操作类似：

1. 钉钉右上角点击「创建或加入企业」

   <img src="../../images/dingtalk_create_enterprise_button.png" alt="Create Enterprise Button" style="zoom:50%;" />

2. 选择「企业」

3. 选择「创建企业/团队」

4. 填写企业信息

   <img src="../../images/dingtalk_enterprise_info_form.png" alt="Enterprise Info Form" style="zoom:50%;" />

### 2. 登录开发者平台

访问 [钉钉开放平台](https://open-dev.dingtalk.com/)，点击右上角头像切换到刚创建的企业。

<img src="../../images/dingtalk_switch_enterprise.png" alt="Switch Enterprise" style="zoom:50%;" />

### 3. 创建应用

点击主页的「创建应用」：

![Create App Button](../../images/dingtalk_create_app_button.png)

![App Type Selection](../../images/dingtalk_app_type_selection.png)

![App Creation Form](../../images/dingtalk_app_creation_form.png)

填写应用信息后点击发布：

![App Publish](../../images/dingtalk_app_publish.png)

### 4. 获取 clientId / clientSecret

在应用详情页获取凭证：

![Credentials](../../images/dingtalk_credentials.png)

### 5. 发布版本

> 只有发布版本后，才能在钉钉中搜索到机器人。

![Version Create](../../images/dingtalk_version_create.png)

![Version Info](../../images/dingtalk_version_info.png)

![Version Publish](../../images/dingtalk_version_publish.png)

### 6. 启用 AI Card 流式输出（可选）

如需使用 AI Card 流式输出，需要在钉钉应用权限中开通：
- `Card.Instance.Write`
- `Card.Streaming.Write`

![Permission Search](../../images/dingtalk_permission_search.png)

![Permission Apply](../../images/dingtalk_permission_apply.png)

> 如果未开启权限或不启用 AI Card，也不影响正常对话；系统会回退到普通消息，并在日志中给出权限申请指引链接。

---

## 二、安装 OpenClaw China

### 方法 1: Windows 一键安装（推荐）

下载并运行安装程序：

[📥 下载 OpenClaw-China-Setup.exe](https://github.com/Markovmodcn/openclaw-china/releases/latest)

双击安装即可，安装完成后会自动启动配置向导。

### 方法 2: 命令行安装

```powershell
# Windows 一键安装脚本
iwr -useb https://raw.githubusercontent.com/Markovmodcn/openclaw-china/main/scripts/install.ps1 | iex
```

### 方法 3: Docker 部署

```bash
docker run -d \
  --name openclaw-china \
  -p 3000:3000 \
  -v openclaw-data:/data \
  markovmodcn/openclaw-china:latest
```

---

## 三、配置钉钉

### 1. 启动 OpenClaw China

安装完成后，OpenClaw China 会自动启动图形化配置界面。

### 2. 在配置界面中填写钉钉凭证

1. 打开 OpenClaw China 配置界面
2. 选择「钉钉」渠道
3. 填写以下信息：
   - **Client ID**: 从钉钉开放平台获取的 `clientId`
   - **Client Secret**: 从钉钉开放平台获取的 `clientSecret`
   - **启用 AI Card**: 勾选以启用流式输出（需要申请权限）

4. 点击「测试连接」验证配置
5. 点击「保存」并启动服务

### 3. 高级配置（可选）

如需更细粒度控制，可以在配置文件中添加：

```json
{
  "channels": {
    "dingtalk": {
      "enabled": true,
      "clientId": "dingxxxxxx",
      "clientSecret": "your-app-secret",
      "enableAICard": true,
      "dmPolicy": "open",
      "groupPolicy": "open",
      "requireMention": true
    }
  }
}
```

**配置说明**:
- `dmPolicy`: 私聊策略 (`open` 任何人 / `allowlist` 白名单)
- `groupPolicy`: 群聊策略 (`open` 任何群 / `allowlist` 白名单 / `disabled` 禁用)
- `requireMention`: 群聊中是否需要 @机器人

---

## 四、开始使用

### 1. 在钉钉中搜索机器人

打开钉钉，搜索你创建的机器人名称，添加到会话。

### 2. 开始对话

直接发送消息即可与 AI 对话！

**私聊示例**:
```
你好，请介绍一下 OpenClaw
```

**群聊示例**:
```
@机器人 帮我写一个 Python 爬虫
```

### 3. 查看效果

OpenClaw China 支持钉钉 AI Card 流式输出，体验最佳：

![钉钉演示](../../images/dingtalk-demo_1.gif)

---

## 常见问题

### Q: 机器人没有回复？

**检查清单**:
1. 确认 OpenClaw China 服务正在运行
2. 检查钉钉凭证是否正确
3. 查看日志文件排查错误
4. 确认机器人版本已发布

### Q: 如何启用 AI Card 流式输出？

1. 在钉钉开放平台申请权限：`Card.Instance.Write` 和 `Card.Streaming.Write`
2. 在 OpenClaw China 配置中启用 `enableAICard: true`
3. 重启服务

### Q: 群聊中机器人不响应？

确保配置中 `requireMention: true`，并在群聊中 @机器人。

---

## 相关链接

- [OpenClaw China 官网](https://www.markovmod.com)
- [OpenClaw China GitHub](https://github.com/Markovmodcn/openclaw-china)
