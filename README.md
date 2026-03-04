<div align="center">
  <img src="./images/logo.png" alt="NEUXSBOT Logo" width="180" />

# NEUXSBOT
### OpenClaw 中国版本
### 图形化一键安装的 AI 操作系统

[![Repo](https://img.shields.io/badge/Repo-openclaw--china-1f6feb)](https://github.com/Markovmodcn/openclaw-china)
[![Website](https://img.shields.io/badge/Website-neuxsbot.com-00b894)](https://www.neuxsbot.com)
[![Docs](https://img.shields.io/badge/Docs-Online-0ea5e9)](https://www.neuxsbot.com/docs)

[English](./README.en.md)
</div>

---

## 产品定位

NEUXSBOT 不是普通二开，而是基于 OpenClaw 的**重构级深度二次开发版本**。  
目标不是“聊天演示”，而是“直接产出结果”的 AI 执行平台：能规划、能执行、能迭代、能交付。

---

## OpenClaw 当前原生能力（官方文档口径）

以下能力来自 OpenClaw 官方文档与官方仓库（检索日期：2026-03-04）：

- 单 Gateway 多渠道接入：WhatsApp、Telegram、Discord、iMessage 等
- 多 Agent 路由：按工作区/发送者隔离会话
- 工具体系：browser、canvas、nodes、cron 等一等工具，支持 allow/deny 与 profile
- 节点体系：macOS / iOS / Android / headless 节点，通过 WebSocket 接入 Gateway
- 模型体系：`provider/model` 统一模型引用，支持 OpenAI、Anthropic、OpenRouter、Ollama 等多提供商
- 部署与运维：CLI 向导 `openclaw onboard`、Web Control UI、daemon 常驻运行

---

## NEUXSBOT 重构级二开增强（基于本地 web/前端/docs 能力）

| 方向 | OpenClaw 原生能力 | NEUXSBOT 二开强化结果 |
|---|---|---|
| 产品化落地 | 以 CLI/向导为主 | 图形化一键安装 + 中文化配置流，国内用户可直接落地 |
| 开发生产力 | 通用 Agent + 工具调用 | 内置 `NEUXSBOT IDE`，强化“需求 -> 代码 -> 测试 -> 迭代”闭环 |
| 远程开发协作 | 多渠道消息接入 | 钉钉/飞书远程触发，手机下指令、电脑自动执行开发任务 |
| 安全执行 | Gateway 级策略控制 | 本地 / 自动沙箱 / 仅沙箱三态执行 + 高风险操作确认 |
| 模型调度 | 多 provider 接入 | 无需代理接入海外顶级模型 + 本地 Ollama 混合编排 |
| 技能扩展 | 插件与技能生态 | 内置办公/开发技能包 + `skill-creator` 团队私有能力扩展 |
| 持续交付 | 会话与路由能力 | 持久记忆、任务续跑、定时任务自动执行与回传 |

一句话：**不是把 OpenClaw 换皮，而是把 OpenClaw 升级为面向中文场景的开发与自动化生产平台。**

---

## 核心能力

### IDE 自动开发（重点）
- 自然语言转可执行代码
- 前端页面与组件快速生成
- Playwright 自动化测试脚本生成
- 代码迭代、重构、补全与调试建议

### 图形化一键安装（OpenClaw 中国版本）
- 桌面端可视化安装与配置
- 支持 Windows / macOS / Linux
- 同时支持命令行快速部署

### 无需代理使用国外顶级模型
- 支持 OpenAI、Anthropic、Google 等海外模型能力
- 通过统一模型配置层接入，减少多平台切换成本
- 同时支持本地模型（Ollama）与云端模型混合编排

### 模型成本优势（重点）
- 提供 `20 元天卡`，并支持包月方案（综合成本更低）
- 同等能力口径下，可覆盖约 `90 美元` 的海外模型调用额度
- 按 2026-03-04 汇率口径（1 USD 约 6.915 CNY），`90 美元约 622 元人民币`

### 手机控制电脑自动开发
- 可通过钉钉 / 飞书桥接器远程触发任务
- 在手机端发指令，桌面端自动执行开发或办公流程
- 适合通勤、出差和跨地点协作

### 技能系统（可扩展）
- 内置文档、表格、PPT、PDF、Web 搜索、前端设计、自动化测试等技能
- 支持 `skill-creator` 自定义技能，构建团队私有能力库
- 可按任务启停技能，形成可控的能力组合

### 安全执行与权限控制
- 自动优先沙箱、本地模式、仅沙箱三种执行策略
- 高风险文件或命令操作可设置人工确认
- 兼顾开发效率与企业安全要求

### 持续任务能力
- 任务历史自动沉淀与续跑
- 持久记忆与上下文延续
- 支持定时任务自动执行与结果回传

---

## 典型应用场景

- 日常办公自动化：报告、周报、数据整理、文档生成
- 工程开发协作：需求拆解、代码生成、测试回归、发布准备
- 数据分析场景：特征分析、结果验证、可视化输出
- 企业远程协作：手机指令 + 电脑执行 + 多平台回传

---

## 架构与能力图

<p align="center">
  <img src="./images/architecture.jpg" alt="系统架构图" width="900" />
</p>

<p align="center">
  <img src="./images/ai-capability-matrix.jpg" alt="AI 能力矩阵图" width="900" />
</p>

<p align="center">
  <img src="./images/business-scenarios.jpg" alt="业务场景图" width="900" />
</p>

---

## 仓库说明

本仓库用于发布 NEUXSBOT 的产品能力介绍、版本动态、文档入口与反馈通道。

---

## 链接与反馈

- 官网：https://www.neuxsbot.com
- 文档：https://www.neuxsbot.com/docs
- 下载：https://www.neuxsbot.com/download
- 问题反馈：https://github.com/Markovmodcn/openclaw-china/issues

<p align="center">
  <img src="./images/wx.png" alt="微信联系" width="220" />
</p>