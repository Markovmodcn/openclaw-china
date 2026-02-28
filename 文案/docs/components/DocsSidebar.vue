<template>
  <div class="docs-sidebar">
    <div class="sidebar-header">
      <div class="brand-logo" @click="$emit('goHome')">
        <span class="logo-text">文档中心</span>
        <span class="logo-subtitle">Documentation</span>
      </div>
    </div>
    
    <nav class="sidebar-nav">
      <div class="nav-section" v-for="section in navSections" :key="section.id">
        <div 
          class="nav-section-title" 
          @click="toggleSection(section.id)"
        >
          <span>{{ section.title }}</span>
          <i :class="['bx', expandedSections.includes(section.id) ? 'bx-chevron-down' : 'bx-chevron-right']"></i>
        </div>
        <div class="nav-items" v-show="expandedSections.includes(section.id)">
          <a 
            v-for="item in section.items" 
            :key="item.id"
            :class="['nav-item', { active: activeSection === item.id }]"
            @click="$emit('scrollTo', item.id)"
          >
            {{ item.title }}
          </a>
        </div>
      </div>
    </nav>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue';

defineProps<{
  activeSection: string;
}>();

defineEmits<{
  (e: 'scrollTo', id: string): void;
  (e: 'goHome'): void;
}>();

const expandedSections = ref(['quick-start']);

const navSections = [
  {
    id: 'quick-start',
    title: '快速开始',
    items: [
      { id: 'what-is-neuxsbot', title: '什么是 NEUXSBOT' },
      { id: 'first-launch', title: '首次启动' }
    ]
  },
  {
    id: 'core-features',
    title: '核心功能',
    items: [
      { id: 'intelligent-dialog', title: '智能对话' },
      { id: 'task-management', title: '任务管理' },
      { id: 'skill-system', title: '技能系统' },
      { id: 'multi-model', title: '多模型支持' }
    ]
  },
  {
    id: 'model-config',
    title: '模型配置指南',
    items: [
      { id: 'supported-models', title: '支持的模型提供商' },
      { id: 'anthropic-config', title: 'Anthropic (Claude)' },
      { id: 'deepseek-config', title: 'DeepSeek' },
      { id: 'openai-config', title: 'OpenAI' },
      { id: 'ollama-config', title: 'Ollama 本地部署' },
      { id: 'model-switch', title: '切换模型' },
      { id: 'model-faq', title: '常见问题' }
    ]
  },
  {
    id: 'im-config',
    title: '桥接器配置',
    items: [
      { id: 'dingtalk-config', title: '钉钉机器人配置' },
      { id: 'feishu-config', title: '飞书机器人配置' },
      { id: 'im-faq', title: '常见问题与故障排查' }
    ]
  },
  {
    id: 'email-config',
    title: '邮箱配置指南',
    items: [
      { id: 'email-overview', title: '功能概述' },
      { id: 'supported-providers', title: '支持的邮箱服务商' },
      { id: 'gmail-config', title: 'Gmail 配置' },
      { id: 'outlook-config', title: 'Outlook 配置' },
      { id: 'qq-config', title: 'QQ 邮箱配置' },
      { id: 'netease-config', title: '网易邮箱配置' },
      { id: 'custom-config', title: '自定义邮箱配置' },
      { id: 'email-usage', title: '使用说明' },
      { id: 'email-faq', title: '常见问题' }
    ]
  },
  {
    id: 'workflows',
    title: '典型工作流',
    items: [
      { id: 'workflow-1', title: '数据分析报告生成' },
      { id: 'workflow-2', title: '快速开发前端组件' },
      { id: 'workflow-3', title: '自动化测试脚本编写' },
      { id: 'workflow-4', title: '多格式文档转换' }
    ]
  },
  {
    id: 'skills-detail',
    title: '技能详解',
    items: [
      { id: 'skill-document', title: '文档处理' },
      { id: 'skill-dev', title: '开发工具' },
      { id: 'skill-design', title: '设计工具' },
      { id: 'skill-utils', title: '实用工具' }
    ]
  },
  {
    id: 'advanced',
    title: '进阶使用',
    items: [
      { id: 'custom-skill', title: '自定义技能' },
      { id: 'shortcuts', title: '快捷键' },
      { id: 'sandbox', title: '沙箱模式' }
    ]
  },
  {
    id: 'qa',
    title: '常见问题',
    items: [
      { id: 'qa-basic', title: '基础使用' },
      { id: 'qa-model', title: '模型配置' },
      { id: 'qa-tips', title: '使用技巧' },
      { id: 'qa-troubleshoot', title: '故障排查' }
    ]
  }
];

const toggleSection = (sectionId: string) => {
  if (expandedSections.value.includes(sectionId)) {
    expandedSections.value = [];
  } else {
    expandedSections.value = [sectionId];
  }
};
</script>

<style scoped>
.docs-sidebar {
  width: var(--docs-sidebar-width, 220px);
  background: rgba(8, 10, 14, 0.95);
  border-right: 1px solid rgba(255, 255, 255, 0.05);
  backdrop-filter: blur(20px);
  position: fixed;
  top: 70px;
  left: 0;
  height: calc(100vh - 70px);
  overflow-y: auto;
  z-index: 100;
}

/* 美化滚动条 */
.docs-sidebar::-webkit-scrollbar {
  width: 6px;
}

.docs-sidebar::-webkit-scrollbar-track {
  background: transparent;
}

.docs-sidebar::-webkit-scrollbar-thumb {
  background: rgba(0, 255, 65, 0.2);
  border-radius: 3px;
  transition: background 0.2s ease;
}

.docs-sidebar::-webkit-scrollbar-thumb:hover {
  background: rgba(0, 255, 65, 0.4);
}

.sidebar-header {
  padding: 28px 20px 24px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.04);
  background: rgba(8, 10, 14, 0.98);
  position: sticky;
  top: 0;
  z-index: 1;
}

.brand-logo {
  display: flex;
  flex-direction: column;
  gap: 4px;
  cursor: pointer;
}

.logo-text {
  font-size: 18px;
  font-weight: 600;
  letter-spacing: -0.01em;
  background: linear-gradient(90deg, #f6f8fd, #dce2ed);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
}

.logo-subtitle {
  font-size: 11px;
  color: rgba(154, 163, 178, 0.7);
  font-weight: 400;
  letter-spacing: 0.02em;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
}

.sidebar-nav {
  padding: 12px 10px 20px;
}

.nav-section {
  margin-bottom: 4px;
}

.nav-section-title {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px 12px;
  font-size: 13px;
  font-weight: 600;
  color: #9aa3b2;
  cursor: pointer;
  border-radius: 6px;
  transition: color 0.2s ease, background-color 0.2s ease;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
}

.nav-section-title:hover {
  color: #eef2f9;
  background: rgba(255, 255, 255, 0.03);
}

.nav-section-title i {
  font-size: 14px;
  transition: transform 0.2s ease;
}

.nav-items {
  padding-left: 8px;
  margin-top: 2px;
}

.nav-item {
  display: block;
  padding: 9px 12px;
  color: #8f98a8;
  font-size: 13px;
  border-radius: 6px;
  cursor: pointer;
  line-height: 1.5;
  transition: all 0.2s ease;
  margin: 1px 0;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  border: none;
}

.nav-item:hover {
  color: #eef2f9;
  background: rgba(255, 255, 255, 0.03);
}

.nav-item.active {
  color: #00ff41;
  background: rgba(0, 255, 65, 0.06);
  font-weight: 500;
}

@media (max-width: 1024px) {
  .docs-sidebar {
    display: none;
  }
}
</style>
