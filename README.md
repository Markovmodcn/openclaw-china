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

NEUXSBOT 是基于 OpenClaw 的深度二次开发中国版本。  
核心目标不是只做对话，而是把 AI 变成可持续交付的任务系统：可编排、可执行、可追踪、可复用。

---

## 最新更新（v0.1.21）

NEUXSBOT v0.1.21 正式上线。

本次更新面向 AI 开发、智能协作与自动化交付场景，重点强化开发模式执行链路，优化思考过程与中文交互表现，提升任务连续推进能力，让 AI 不只是“会聊天”，而是真正能参与开发、推进任务、辅助交付。

本次版本重点包括：

- 强化 `IDE / SOLO` 开发模式的执行闭环，减少“发一句停一句”的割裂感
- 优化思考过程、任务规划、中文工作流与执行反馈展示
- 提升开发任务连续推进能力，更贴近专业 AI 开发 IDE 的交互体验
- 修复若干影响稳定性的问题，提升整体可用性与协作效率
- 内置更完整的人才市场与技能生态，支持 **14,000+ / 15,000 级别**技能能力扩展
- 持续向 AI 开发工作台、智能任务中枢与自动化交付平台方向演进

这是 NEUXSBOT 的首发增强版本，后续将持续围绕 AI 开发、技能生态、自动学习、任务协同与自动执行能力不断更新迭代。

---

## 下载与安装

### Windows 下载安装地址

- 浏览器下载：
  `https://www.neuxsbot.com/api/v1/system/public/download/version/11d86bdf-b659-4aee-a090-972029779355/windows.exe`

### Windows 命令安装

```powershell
$installer = Join-Path $env:TEMP 'NEUXSBOT-Setup-0.1.21.exe'
Invoke-WebRequest -Uri 'https://www.neuxsbot.com/api/v1/system/public/download/version/11d86bdf-b659-4aee-a090-972029779355/windows.exe' -OutFile $installer
Start-Process -FilePath $installer
```

### 文档入口

- 使用手册：https://www.neuxsbot.com/docs
- 下载页：https://www.neuxsbot.com/download

---

## 重点差异（产品能力维度）

### 1. AI 人才市场（核心）
- 产品中已是“AI 人才库 / 技能市场”形态，不是简单技能列表
- 支持人才检索、分类筛选、候选/录用/淘汰、邀约面试等流程
- 支持本地人才索引状态展示（档案数量、同步时间、仓库版本）
- 本地 `market-index` 快照统计：**14,746** 条技能档案（可表述为 14,000+）

### 2. 任务中枢（核心）
- 任务全生命周期：新建、搜索、重命名、置顶、删除、历史续跑
- 任务上下文持续保存，面向“多轮推进”而非一次性问答
- 定时任务系统：支持 Cron 计划执行、手动触发、执行历史、异常记录

### 3. 自定义技能体系（核心）
- 内置 `skill-creator`，支持创建团队自定义技能
- 技能可启停、可共享、可沉淀为团队内部能力库
- 支持技能路由到任务执行链路，形成“技能 -> 任务 -> 结果”的闭环

### 4. 自动学习与自动记忆（核心）
- 支持任务过程中的经验沉淀与记忆回写，减少重复指令与重复配置
- 基于历史任务与执行结果，形成可复用的偏好、流程模板与知识片段
- 可与自定义技能联动，把高频经验固化为可调用技能，持续提升执行质量

### 5. IDE 开发闭环
- 内置 `NEUXSBOT IDE`，强化“需求 -> 代码 -> 测试 -> 迭代”
- 支持前端开发、自动化脚本、测试脚本等开发任务
- 更强调交付结果，而不是仅输出建议

### 6. 模型与成本优势
- 无需代理接入国外顶级模型能力
- 支持云端模型与本地模型（Ollama）混合编排
- 提供 `20 元天卡`，包月更优惠；同等能力口径可覆盖约 `90 美元`调用额度（约 `622 元人民币`）

---

## OpenClaw 原生能力与 NEUXSBOT 二开方向

OpenClaw 原生已具备远程接入、本地执行、多模型等底座能力。  
NEUXSBOT 的重点不是重复这些底座，而是把它们产品化为：

- 人才市场化（14,000+ 技能档案）
- 任务中枢化（任务/计划/历史/回传）
- 团队技能资产化（自定义技能与复用）
- 记忆资产化（自动学习 + 自动记忆 + 经验沉淀）

---

## 典型应用场景

- 工程开发：需求拆解、代码生成、自动化测试与迭代交付
- 运营场景：流程自动化、定时任务、日报/周报自动产出
- 团队协作：人才市场选型 + 任务中枢调度 + 结果追踪
- 移动协同：手机发指令，桌面端持续执行复杂任务

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

本仓库用于发布 NEUXSBOT 产品能力、文档入口与反馈通道。

---

## 链接与反馈

- 官网：https://www.neuxsbot.com
- 文档：https://www.neuxsbot.com/docs
- 下载：https://www.neuxsbot.com/download
- 问题反馈：https://github.com/Markovmodcn/openclaw-china/issues

<p align="center">
  <img src="./images/wx.png" alt="微信联系" width="220" />
</p>
