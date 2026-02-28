<template>
  <section id="quick-start" class="docs-section">
    <h2 class="section-title">快速开始</h2>
    
    <div id="what-is-neuxsbot" class="subsection">
      <h3>什么是 NEUXSBOT？</h3>
      <p>NEUXSBOT 是新一代 AI 操作系统，能够 7×24 小时不间断地自主执行各类复杂任务。无论是编写代码、处理文档、数据分析、设计原型、搜索信息，还是创建游戏，NEUXSBOT 都能胜任。通过内置的技能系统，NEUXSBOT 就像一个掌握多项专业技能的全能助手，随时待命为你服务。</p>
      
      <div class="core-advantages">
        <h4>核心优势</h4>
        <div class="advantage-grid">
          <div class="advantage-item">
            <i class='bx bx-sync'></i>
            <div>
              <strong>多模型自由切换</strong>
              <span>支持 10+ 主流 AI 模型，按需选择最合适的助手</span>
            </div>
          </div>
          <div class="advantage-item">
            <i class='bx bx-extension'></i>
            <div>
              <strong>丰富的技能库</strong>
              <span>内置 12+ 专业技能，覆盖开发、设计、办公等场景</span>
            </div>
          </div>
          <div class="advantage-item">
            <i class='bx bx-history'></i>
            <div>
              <strong>任务历史管理</strong>
              <span>自动保存所有对话记录，随时回顾和继续之前的工作</span>
            </div>
          </div>
          <div class="advantage-item">
            <i class='bx bx-server'></i>
            <div>
              <strong>本地化部署</strong>
              <span>支持 Ollama 等本地模型，保护数据隐私</span>
            </div>
          </div>
          <div class="advantage-item">
            <i class='bx bx-plus-circle'></i>
            <div>
              <strong>开放扩展</strong>
              <span>可以自己创建技能，让 NEUXSBOT 学会任何你需要的能力</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div id="first-launch" class="subsection">
      <h3>首次启动</h3>
      
      <div class="step-card">
        <div class="step-number">01</div>
        <div class="step-content">
          <h4>配置 AI 模型</h4>
          <p>首次打开 NEUXSBOT 后，你需要先配置至少一个 AI 模型才能开始使用：</p>
          <ul>
            <li>点击左下角「设置」图标</li>
            <li>进入「模型」选项卡</li>
            <li>选择一个模型提供商（如 Anthropic、OpenAI、DeepSeek 等）</li>
            <li>填写对应的 API Key（需要先在服务商官网注册账号获取）</li>
            <li>点击「测试连接」确认配置正确</li>
            <li>保存设置</li>
          </ul>
        </div>
      </div>
      
      <div class="step-card">
        <div class="step-number">02</div>
        <div class="step-content">
          <h4>开始使用</h4>
          <p>配置完成后，返回主界面，你会看到一个简洁的对话框。现在可以：</p>
          <ul>
            <li>在输入框中描述你的任务，比如「帮我分析这份 Excel 数据」</li>
            <li>根据需要在左侧边栏的「技能」中启用相关功能</li>
            <li>点击发送按钮，开始与 AI 协作</li>
          </ul>
        </div>
      </div>
      
      <div class="tip-box">
        <div class="tip-icon"><i class='bx bx-lightbulb'></i></div>
        <div class="tip-content">
          <strong>快速配置提示</strong>
          <ul>
            <li>如果你想完全离线使用，可以选择 Ollama（需要先在本地安装 Ollama 服务）</li>
            <li>国内用户可以选择 DeepSeek、Moonshot、Qwen 等国产模型，网络访问更稳定</li>
            <li>不同模型各有特点，可以根据任务需求和成本预算选择</li>
          </ul>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.docs-section {
  margin-bottom: 56px;
}

.section-title {
  font-size: 22px;
  font-weight: 600;
  margin-bottom: 28px;
  padding-bottom: 12px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}

.subsection {
  margin-bottom: 48px;
  scroll-margin-top: 90px;
}

.subsection h3 {
  font-size: 18px;
  font-weight: 600;
  margin-bottom: 16px;
  color: #f5f7fb;
}

.subsection h4 {
  font-size: 15px;
  font-weight: 600;
  margin: 24px 0 12px;
  color: #d3d9e5;
}

.subsection p {
  color: #9aa3b2;
  line-height: 1.75;
  margin-bottom: 16px;
  font-size: 15px;
}

.subsection ul, .subsection ol {
  color: #9aa3b2;
  line-height: 2;
  margin-bottom: 16px;
  padding-left: 24px;
  font-size: 14px;
}

.subsection li {
  margin-bottom: 12px;
}

.core-advantages {
  margin-top: 20px;
}

.advantage-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 14px;
  margin-top: 14px;
}

.advantage-item {
  display: flex;
  gap: 12px;
  padding: 16px;
  background: rgba(255, 255, 255, 0.015);
  border: none;
  border-radius: 10px;
  transition: all 0.2s ease;
}

.advantage-item:hover {
  background: rgba(255, 255, 255, 0.03);
  transform: translateY(-2px);
}

.advantage-item i {
  font-size: 22px;
  color: #00ff41;
  flex-shrink: 0;
  filter: drop-shadow(0 0 6px rgba(0, 255, 65, 0.3));
}

.advantage-item strong {
  display: block;
  color: #f5f7fb;
  font-size: 14px;
  margin-bottom: 6px;
  font-weight: 500;
}

.advantage-item span {
  color: #8f98a8;
  font-size: 13px;
  line-height: 1.5;
}

.step-card {
  display: flex;
  gap: 24px;
  padding: 24px;
  background: rgba(255, 255, 255, 0.015);
  border: none;
  border-radius: 12px;
  margin-bottom: 16px;
  transition: all 0.2s ease;
}

.step-card:hover {
  background: rgba(255, 255, 255, 0.025);
}

.step-number {
  font-size: 32px;
  font-weight: 700;
  color: #00ff41;
  opacity: 0.4;
  line-height: 1;
}

.step-content h4 {
  margin-top: 0;
  font-size: 16px;
  color: #f5f7fb;
}

.tip-box {
  display: flex;
  gap: 16px;
  padding: 20px;
  background: rgba(0, 255, 65, 0.03);
  border: none;
  border-left: 3px solid rgba(0, 255, 65, 0.4);
  border-radius: 8px;
  margin-top: 24px;
}

.tip-icon {
  font-size: 20px;
  color: #00ff41;
  filter: drop-shadow(0 0 6px rgba(0, 255, 65, 0.3));
  flex-shrink: 0;
}

.tip-content strong {
  display: block;
  margin-bottom: 10px;
  color: #00ff41;
  font-size: 14px;
  font-weight: 500;
}

.tip-content ul {
  margin: 0;
  padding-left: 24px;
  line-height: 2;
  font-size: 14px;
}

.tip-content li {
  margin-bottom: 10px;
  color: #9aa3b2;
}

@media (max-width: 1024px) {
  .advantage-grid {
    grid-template-columns: 1fr;
  }
}
</style>
