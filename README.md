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

NEUXSBOT 是基于 OpenClaw 深度工程化改造的中国版本，目标不是“聊天演示”，而是“可持续交付”的 AI 执行系统。  
它面向真实任务，从目标理解、规划、执行到复盘，形成完整闭环，支持日常办公、工程开发和团队协作。

---

## 为什么它不是“套壳”

### 1. 自研执行链路，不是单层 UI 包装
- 基于 Cowork 执行体系驱动任务流，不是只做模型对话转发
- 支持工具调用、文件操作、命令执行、任务回放和状态跟踪
- 有明确的权限确认链路与执行审计逻辑

### 2. 真正可落地的开发能力
- 内置 `NEUXSBOT IDE`，可从需求直接进入代码生成与迭代
- 支持多轮开发、增量改造、测试脚本生成、自动化流程编排
- 不是“给建议”，而是“直接做事并持续迭代”

### 3. 本地优先架构，不依赖外部托管工作站
- 支持完整本地部署与本地数据存储
- 支持沙箱模式/本地模式切换，兼顾安全与性能
- 手机端仅用于远程下达指令，不消耗手机算力

---

## 与市面套壳产品的关键区别

- 套壳产品常见形态：只做聊天转发；NEUXSBOT：具备执行引擎、工具链与任务状态管理
- 套壳产品常见形态：一次性回答；NEUXSBOT：可持续多轮执行、续跑、复盘
- 套壳产品常见形态：只在网页交互；NEUXSBOT：桌面端本地运行 + 钉钉/飞书远程触发
- 套壳产品常见形态：只接单一模型；NEUXSBOT：海外模型 + 本地模型混合调度
- 套壳产品常见形态：弱权限控制；NEUXSBOT：沙箱策略 + 操作确认 + 风险隔离

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