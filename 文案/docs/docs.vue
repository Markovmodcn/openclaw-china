<template>
  <div class="trae-page">
    <TraeHeader />
    <div class="docs-layout">
      <DocsSidebar 
        :activeSection="activeSection" 
        @scrollTo="scrollToSection"
        @goHome="router.push('/')"
      />
      <div class="docs-content-wrapper">
        <div class="docs-content" ref="contentRef">
          <QuickStart />
          <CoreFeatures />
          <ModelConfig />
          <EmailConfig />
          <Workflows />
          <SkillsDetail />
          <AdvancedUsage />
          <QA />
          <IMConfig />
          
          <section id="contact" class="docs-section">
            <h2 class="section-title">联系与反馈</h2>
            <p>如果遇到问题或有改进建议，欢迎通过以下方式联系我们：</p>
            <div class="contact-grid">
              <div class="contact-item">
                <i class='bx bx-envelope'></i>
                <span>客服邮箱：support@neuxsbot.com</span>
              </div>
              <div class="contact-item">
                <i class='bx bx-globe'></i>
                <span>官方网站：www.neuxsbot.com</span>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
    <TraeFooter />
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue';
import { useRouter } from 'vue-router';
import TraeHeader from '@/components/TraeHeader.vue';
import TraeFooter from '@/components/TraeFooter.vue';
import DocsSidebar from './components/DocsSidebar.vue';
import QuickStart from './components/QuickStart.vue';
import CoreFeatures from './components/CoreFeatures.vue';
import ModelConfig from './components/ModelConfig.vue';
import EmailConfig from './components/EmailConfig.vue';
import Workflows from './components/Workflows.vue';
import SkillsDetail from './components/SkillsDetail.vue';
import AdvancedUsage from './components/AdvancedUsage.vue';
import QA from './components/QA.vue';
import IMConfig from './components/IMConfig.vue';

const router = useRouter();
const contentRef = ref<HTMLElement | null>(null);
const activeSection = ref('what-is-neuxsbot');

const scrollToSection = (id: string) => {
  const element = document.getElementById(id);
  if (element) {
    const headerOffset = 90;
    const elementPosition = element.getBoundingClientRect().top;
    const offsetPosition = elementPosition + window.pageYOffset - headerOffset;
    
    window.scrollTo({
      top: offsetPosition,
      behavior: 'smooth'
    });
    activeSection.value = id;
  }
};

const handleScroll = () => {
  if (!contentRef.value) return;
  
  const sections = contentRef.value.querySelectorAll('.subsection');
  let currentSection = activeSection.value;
  
  sections.forEach((section) => {
    const rect = section.getBoundingClientRect();
    if (rect.top <= 150) {
      currentSection = section.id;
    }
  });
  
  activeSection.value = currentSection;
};

onMounted(() => {
  if (contentRef.value) {
    contentRef.value.addEventListener('scroll', handleScroll);
  }
});

onUnmounted(() => {
  if (contentRef.value) {
    contentRef.value.removeEventListener('scroll', handleScroll);
  }
});
</script>

<style scoped>
.trae-page {
  --docs-sidebar-width: 220px;
  --docs-bg: #0a0b0f;
  --docs-panel: rgba(18, 22, 30, 0.78);
  --docs-border: rgba(255, 255, 255, 0.08);
  --docs-text-primary: #f5f7fb;
  --docs-text-secondary: #9aa3b2;
  --docs-accent: #00ff41;
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", sans-serif;
  position: relative;
}

.docs-layout {
  display: flex;
  width: 100%;
  flex: 1;
  background:
    radial-gradient(900px circle at 70% -20%, rgba(0, 255, 65, 0.06), transparent 60%),
    linear-gradient(180deg, rgba(8, 10, 14, 0.98), rgba(8, 10, 14, 1));
  position: relative;
  z-index: 1;
}

/* 美化主内容区滚动条 */
body::-webkit-scrollbar {
  width: 8px;
}

body::-webkit-scrollbar-track {
  background: rgba(8, 10, 14, 0.5);
}

body::-webkit-scrollbar-thumb {
  background: rgba(0, 255, 65, 0.3);
  border-radius: 4px;
  transition: background 0.2s ease;
}

body::-webkit-scrollbar-thumb:hover {
  background: rgba(0, 255, 65, 0.5);
}

.docs-content-wrapper {
  flex: 1;
  margin-left: var(--docs-sidebar-width);
  width: calc(100% - var(--docs-sidebar-width));
  padding: 80px clamp(24px, 3vw, 48px) 112px 24px;
  box-sizing: border-box;
  display: flex;
  justify-content: center;
}

.docs-content {
  width: 100%;
  max-width: 1240px;
  margin: 0 auto;
}

.docs-header {
  margin-bottom: 52px;
  padding-bottom: 28px;
  border-bottom: 1px solid var(--docs-border);
}

.docs-title {
  font-size: 30px;
  font-weight: 600;
  letter-spacing: -0.02em;
  margin-bottom: 10px;
  background: linear-gradient(92deg, #ffffff, #d3d9e5);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.docs-subtitle {
  font-size: 14px;
  line-height: 1.6;
  color: var(--docs-text-secondary);
}

.docs-section {
  margin-bottom: 64px;
}

.section-title {
  font-size: 24px;
  font-weight: 600;
  letter-spacing: -0.02em;
  color: var(--docs-text-primary);
  margin-bottom: 24px;
  padding-bottom: 0;
  border-bottom: none;
}

.docs-section > p {
  color: var(--docs-text-secondary);
  line-height: 1.75;
  margin-bottom: 16px;
  font-size: 15px;
}

.contact-grid {
  display: flex;
  flex-direction: column;
  gap: 12px;
  margin-top: 24px;
}

.contact-item {
  display: flex;
  align-items: center;
  gap: 14px;
  padding: 16px 18px;
  background: rgba(18, 22, 30, 0.4);
  border: 1px solid rgba(255, 255, 255, 0.04);
  border-radius: 8px;
  transition: all 0.2s ease;
}

.contact-item:hover {
  background: rgba(18, 22, 30, 0.6);
  border-color: rgba(0, 255, 65, 0.2);
  transform: translateY(-1px);
}

.contact-item i {
  font-size: 20px;
  color: var(--docs-accent);
  filter: drop-shadow(0 0 8px rgba(0, 255, 65, 0.3));
}

.contact-item span {
  font-size: 14px;
  color: var(--docs-text-secondary);
}

@media (max-width: 1024px) {
  .docs-content-wrapper {
    margin-left: 0;
    width: 100%;
    padding: 24px 16px 64px;
  }

  .docs-content {
    max-width: 100%;
  }

  .docs-title {
    font-size: 24px;
  }
}
</style>
