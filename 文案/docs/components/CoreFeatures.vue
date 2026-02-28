<template>
  <section id="core-features" class="docs-section">
    <h2 class="section-title">核心功能</h2>
    
    <div id="intelligent-dialog" class="subsection">
      <h3>智能对话</h3>
      <p>NEUXSBOT 的对话界面是你的工作中心，所有任务都从这里开始。</p>
      
      <div class="feature-list">
        <div class="feature-list-item">
          <i class='bx bx-check-circle'></i>
          <div>
            <strong>上下文理解</strong>
            <p>NEUXSBOT 会记住对话历史，理解前后文关系</p>
          </div>
        </div>
        <div class="feature-list-item">
          <i class='bx bx-check-circle'></i>
          <div>
            <strong>文件上传</strong>
            <p>支持拖拽文件到对话框，直接让 AI 分析处理</p>
          </div>
        </div>
        <div class="feature-list-item">
          <i class='bx bx-check-circle'></i>
          <div>
            <strong>代码高亮</strong>
            <p>自动识别代码块并提供语法高亮</p>
          </div>
        </div>
        <div class="feature-list-item">
          <i class='bx bx-check-circle'></i>
          <div>
            <strong>多轮迭代</strong>
            <p>可以对 AI 的输出提出修改意见，逐步完善结果</p>
          </div>
        </div>
      </div>
      
      <div class="usage-example">
        <h4>使用场景</h4>
        <div class="example-code">
          <p>「帮我写一个 React 组件，用于展示用户列表」</p>
          <p>「这个组件需要支持分页，每页显示 20 条」</p>
          <p>「再加上搜索功能，可以按用户名搜索」</p>
        </div>
      </div>
    </div>
    
    <div id="task-management" class="subsection">
      <h3>任务管理</h3>
      <p>左侧边栏是你的任务历史中心，所有对话会自动保存。</p>
      
      <div class="feature-list">
        <div class="feature-list-item">
          <i class='bx bx-plus-circle'></i>
          <div>
            <strong>新建任务</strong>
            <p>点击「新建任务」开始一个全新的对话</p>
          </div>
        </div>
        <div class="feature-list-item">
          <i class='bx bx-search'></i>
          <div>
            <strong>搜索任务</strong>
            <p>通过关键词快速找到历史任务</p>
          </div>
        </div>
        <div class="feature-list-item">
          <i class='bx bx-dots-vertical-rounded'></i>
          <div>
            <strong>任务操作</strong>
            <p>点击任务旁的 ... 菜单，可以重命名、置顶或删除任务</p>
          </div>
        </div>
      </div>
      
      <div class="tip-box">
        <div class="tip-icon"><i class='bx bx-star'></i></div>
        <div class="tip-content">
          <strong>最佳实践</strong>
          <ul>
            <li>为每个独立的项目创建单独的任务，便于上下文隔离</li>
            <li>使用有意义的任务名称，比如「重构用户模块」而不是「测试」</li>
            <li>定期清理不再需要的历史任务</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="skill-system" class="subsection">
      <h3>技能系统</h3>
      <p>技能是 NEUXSBOT 的核心特性，每个技能都是一个专业能力模块。</p>
      
      <div class="sub-section">
        <h4>如何启用技能</h4>
        <ul>
          <li>点击左侧边栏的「技能」按钮</li>
          <li>浏览可用技能列表</li>
          <li>点击技能旁的开关启用/禁用</li>
        </ul>
      </div>
      
      <div class="sub-section">
        <h4>技能工作原理</h4>
        <ul>
          <li>启用技能后，AI 会自动获得该领域的专业知识和工具</li>
          <li>多个技能可以同时启用，AI 会根据任务自动选择使用</li>
          <li>技能可以在对话过程中随时添加或移除</li>
        </ul>
      </div>
      
      <div class="sub-section">
        <h4>技能状态指示</h4>
        <div class="status-indicator">
          <span class="status-dot active"></span>
          <span class="status-text">🟢 已启用：当前对话可用</span>
        </div>
        <div class="status-indicator">
          <span class="status-dot inactive"></span>
          <span class="status-text">⚫ 已禁用：不会在当前任务中使用</span>
        </div>
      </div>
    </div>
    
    <div id="multi-model" class="subsection">
      <h3>多模型支持</h3>
      <p>NEUXSBOT 支持市面上几乎所有主流 AI 模型，你可以根据任务特点选择最合适的模型。</p>
      
      <div class="sub-section">
        <h4>支持的模型提供商</h4>
        <div class="model-providers">
          <div class="provider-group">
            <h5>OpenAI</h5>
            <p>GPT-4o, GPT-4o-mini 等</p>
          </div>
          <div class="provider-group">
            <h5>Anthropic</h5>
            <p>Claude Sonnet, Claude Opus 等</p>
          </div>
          <div class="provider-group">
            <h5>Google</h5>
            <p>Gemini Pro, Gemini Flash 等</p>
          </div>
          <div class="provider-group">
            <h5>DeepSeek</h5>
            <p>DeepSeek Reasoner, DeepSeek Chat</p>
          </div>
          <div class="provider-group">
            <h5>国内厂商</h5>
            <p>Moonshot（月之暗面）、Zhipu（智谱）、MiniMax、Qwen（通义千问）</p>
          </div>
          <div class="provider-group">
            <h5>聚合服务</h5>
            <p>OpenRouter（访问多种模型）</p>
          </div>
          <div class="provider-group">
            <h5>本地部署</h5>
            <p>Ollama（支持 Llama, Mistral 等开源模型）</p>
          </div>
        </div>
      </div>
      
      <div class="sub-section">
        <h4>配置步骤</h4>
        <ol>
          <li>进入「设置」→「模型」</li>
          <li>选择想要使用的模型提供商</li>
          <li>填写 API Key 和相关配置</li>
          <li>点击「保存」完成配置</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>配置示例</h4>
        
        <div class="config-example">
          <h5>Anthropic 配置</h5>
          <ul>
            <li><strong>API Key：</strong>从 Anthropic Console 获取</li>
            <li><strong>Base URL：</strong>默认无需修改（使用官方端点）</li>
            <li><strong>可用模型：</strong>选择 Claude Sonnet 4.5、Claude Opus 4 等</li>
          </ul>
        </div>
        
        <div class="config-example">
          <h5>DeepSeek 配置</h5>
          <ul>
            <li><strong>API Key：</strong>从 DeepSeek Platform 获取</li>
            <li><strong>Base URL：</strong>https://api.deepseek.com（默认已填写）</li>
            <li><strong>API 格式：</strong>选择 API 协议兼容格式
              <ul>
                <li>Anthropic 兼容：适合需要结构化输出的场景</li>
                <li>OpenAI 兼容：适合从 OpenAI 迁移的用户</li>
              </ul>
            </li>
          </ul>
        </div>
        
        <div class="config-example">
          <h5>Ollama 本地部署</h5>
          <ul>
            <li><strong>Base URL：</strong>http://localhost:11434（默认端口）</li>
            <li>无需 API Key，直接使用本地模型</li>
          </ul>
        </div>
      </div>
      
      <div class="sub-section">
        <h4>切换模型</h4>
        <ul>
          <li>点击对话界面顶部的模型选择器</li>
          <li>从下拉菜单中选择已配置的模型</li>
          <li>切换后，新对话将使用选定的模型</li>
        </ul>
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

.subsection h5 {
  font-size: 14px;
  font-weight: 600;
  margin: 16px 0 8px;
  color: #c5cdd8;
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

.sub-section {
  margin-bottom: 20px;
}

.feature-list {
  display: flex;
  flex-direction: column;
  gap: 14px;
}

.feature-list-item {
  display: flex;
  gap: 14px;
  align-items: flex-start;
}

.feature-list-item i {
  color: #00ff41;
  font-size: 20px;
  margin-top: 2px;
  filter: drop-shadow(0 0 6px rgba(0, 255, 65, 0.3));
}

.feature-list-item strong {
  color: #f5f7fb;
  display: block;
  margin-bottom: 6px;
  font-size: 14px;
  font-weight: 500;
}

.feature-list-item p {
  margin: 0;
  font-size: 14px;
  color: #9aa3b2;
}

.usage-example {
  margin-top: 20px;
  padding: 18px;
  background: rgba(255, 255, 255, 0.015);
  border-radius: 10px;
  border: none;
}

.example-code {
  padding: 14px;
  background: rgba(0, 0, 0, 0.3);
  border-radius: 8px;
  font-family: 'SF Mono', Monaco, 'Courier New', monospace;
}

.example-code p {
  margin: 6px 0;
  color: #c5cdd8;
  font-size: 13px;
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

.status-indicator {
  display: flex;
  align-items: center;
  gap: 8px;
  margin: 6px 0;
}

.status-dot {
  width: 6px;
  height: 6px;
  border-radius: 50%;
}

.status-dot.active {
  background: #39ff14;
}

.status-dot.inactive {
  background: #444;
}

.status-text {
  font-size: 12px;
  color: #666;
}

.model-providers {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 12px;
  margin: 14px 0;
}

.provider-group {
  padding: 14px;
  background: rgba(255, 255, 255, 0.015);
  border-radius: 10px;
  border: none;
  transition: all 0.2s ease;
}

.provider-group:hover {
  background: rgba(255, 255, 255, 0.025);
  transform: translateY(-1px);
}

.provider-group h5 {
  margin: 0 0 8px;
  color: #f5f7fb;
  font-size: 14px;
}

.provider-group p {
  margin: 0;
  font-size: 13px;
  color: #8f98a8;
}

.config-example {
  padding: 16px;
  background: rgba(255, 255, 255, 0.02);
  border-radius: 8px;
  margin-bottom: 12px;
}

.config-example h5 {
  margin: 0 0 10px;
  color: #fff;
}

.config-example ul {
  margin: 0;
}

@media (max-width: 1024px) {
  .model-providers {
    grid-template-columns: 1fr;
  }
}
</style>
