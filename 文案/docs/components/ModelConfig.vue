<template>
  <section id="model-config" class="docs-section">
    <h2 class="section-title">模型配置指南</h2>
    <p>NEUXSBOT 支持市面上几乎所有主流 AI 模型，你可以根据任务特点选择最合适的模型。</p>
    
    <div id="supported-models" class="subsection">
      <h3>支持的模型提供商</h3>
      
      <div class="model-grid">
        <div class="model-card">
          <div class="model-icon openai">
            <i class="fas fa-brain"></i>
          </div>
          <div class="model-info">
            <h4>OpenAI</h4>
            <p>GPT-4o, GPT-4o-mini</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon anthropic">
            <i class="fas fa-cube"></i>
          </div>
          <div class="model-info">
            <h4>Anthropic</h4>
            <p>Claude Sonnet 4, Opus 4</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon google">
            <i class="fab fa-google"></i>
          </div>
          <div class="model-info">
            <h4>Google</h4>
            <p>Gemini Pro, Flash</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon deepseek">
            <i class="fas fa-water"></i>
          </div>
          <div class="model-info">
            <h4>DeepSeek</h4>
            <p>Reasoner, Chat</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon moonshot">
            <i class="fas fa-moon"></i>
          </div>
          <div class="model-info">
            <h4>月之暗面</h4>
            <p>Moonshot (Kimi)</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon zhipu">
            <i class="fas fa-lightbulb"></i>
          </div>
          <div class="model-info">
            <h4>智谱 AI</h4>
            <p>GLM-4, GLM-4-Plus</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon qwen">
            <i class="fas fa-cloud"></i>
          </div>
          <div class="model-info">
            <h4>通义千问</h4>
            <p>Qwen-Max, Qwen-Plus</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon minimax">
            <i class="fas fa-rocket"></i>
          </div>
          <div class="model-info">
            <h4>MiniMax</h4>
            <p>MiniMax-01</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon baichuan">
            <i class="fas fa-mountain"></i>
          </div>
          <div class="model-info">
            <h4>百川智能</h4>
            <p>Baichuan 4</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon doubao">
            <i class="fas fa-fire"></i>
          </div>
          <div class="model-info">
            <h4>豆包</h4>
            <p>Doubao Pro</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon mistral">
            <i class="fas fa-wind"></i>
          </div>
          <div class="model-info">
            <h4>Mistral AI</h4>
            <p>Mistral Large</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon cohere">
            <i class="fas fa-network-wired"></i>
          </div>
          <div class="model-info">
            <h4>Cohere</h4>
            <p>Command R+</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon openrouter">
            <i class="fas fa-route"></i>
          </div>
          <div class="model-info">
            <h4>OpenRouter</h4>
            <p>多模型聚合</p>
          </div>
        </div>
        
        <div class="model-card">
          <div class="model-icon ollama">
            <i class="fas fa-server"></i>
          </div>
          <div class="model-info">
            <h4>Ollama</h4>
            <p>本地部署</p>
          </div>
        </div>
      </div>
    </div>
    
    <div id="anthropic-config" class="subsection">
      <h3>Anthropic (Claude) 配置</h3>
      
      <div class="sub-section">
        <h4>获取 API Key</h4>
        <ol>
          <li>访问 <a href="https://console.anthropic.com" target="_blank">Anthropic Console</a></li>
          <li>注册或登录账号</li>
          <li>进入 API Keys 页面</li>
          <li>点击「Create Key」创建新的 API Key</li>
          <li>复制并保存 API Key（只显示一次）</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>配置步骤</h4>
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>打开设置</h5>
            <p>点击左下角「设置」图标，进入设置页面。</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>选择模型选项卡</h5>
            <p>在设置页面中，点击「模型」选项卡。</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">03</div>
          <div class="step-content">
            <h5>添加 Anthropic 提供商</h5>
            <p>点击「添加模型提供商」，选择「Anthropic」。</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">04</div>
          <div class="step-content">
            <h5>填写配置信息</h5>
            <ul>
              <li><strong>API Key</strong>：粘贴从 Anthropic Console 获取的 Key</li>
              <li><strong>Base URL</strong>：默认无需修改（使用官方端点）</li>
              <li><strong>可用模型</strong>：选择 Claude Sonnet 4、Claude Opus 4 等</li>
            </ul>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">05</div>
          <div class="step-content">
            <h5>测试连接</h5>
            <p>点击「测试连接」按钮，确认配置正确。</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">06</div>
          <div class="step-content">
            <h5>保存设置</h5>
            <p>点击「保存」完成配置。</p>
          </div>
        </div>
      </div>
      
      <div class="tip-box">
        <div class="tip-icon"><i class='bx bx-info-circle'></i></div>
        <div class="tip-content">
          <strong>Anthropic 配置要点</strong>
          <ul>
            <li>API Key 以 <code>sk-ant-</code> 开头</li>
            <li>国内用户可能需要配置代理或使用中转服务</li>
            <li>Claude Sonnet 4 性价比最高，适合日常使用</li>
            <li>Claude Opus 4 能力最强，适合复杂任务</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="deepseek-config" class="subsection">
      <h3>DeepSeek 配置</h3>
      
      <div class="sub-section">
        <h4>获取 API Key</h4>
        <ol>
          <li>访问 <a href="https://platform.deepseek.com" target="_blank">DeepSeek Platform</a></li>
          <li>注册或登录账号</li>
          <li>进入 API Keys 页面</li>
          <li>点击「创建 API Key」</li>
          <li>复制并保存 API Key</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>配置步骤</h4>
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>添加 DeepSeek 提供商</h5>
            <p>在「模型」设置页面，点击「添加模型提供商」，选择「DeepSeek」。</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>填写配置信息</h5>
            <ul>
              <li><strong>API Key</strong>：粘贴从 DeepSeek Platform 获取的 Key</li>
              <li><strong>Base URL</strong>：<code>https://api.deepseek.com</code>（默认已填写）</li>
              <li><strong>API 格式</strong>：选择 API 协议兼容格式
                <ul>
                  <li><em>Anthropic 兼容</em>：适合需要结构化输出的场景</li>
                  <li><em>OpenAI 兼容</em>：适合从 OpenAI 迁移的用户</li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">03</div>
          <div class="step-content">
            <h5>测试并保存</h5>
            <p>点击「测试连接」确认配置正确，然后点击「保存」。</p>
          </div>
        </div>
      </div>
      
      <div class="tip-box">
        <div class="tip-icon"><i class='bx bx-info-circle'></i></div>
        <div class="tip-content">
          <strong>DeepSeek 配置要点</strong>
          <ul>
            <li>国内用户首选，网络访问更稳定</li>
            <li>DeepSeek Reasoner (R1) 支持深度推理</li>
            <li>DeepSeek Chat 适合日常对话</li>
            <li>价格实惠，性价比高</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="openai-config" class="subsection">
      <h3>OpenAI 配置</h3>
      
      <div class="sub-section">
        <h4>获取 API Key</h4>
        <ol>
          <li>访问 <a href="https://platform.openai.com" target="_blank">OpenAI Platform</a></li>
          <li>注册或登录账号</li>
          <li>进入 API Keys 页面</li>
          <li>点击「Create new secret key」</li>
          <li>复制并保存 API Key</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>配置步骤</h4>
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>添加 OpenAI 提供商</h5>
            <p>在「模型」设置页面，点击「添加模型提供商」，选择「OpenAI」。</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>填写配置信息</h5>
            <ul>
              <li><strong>API Key</strong>：粘贴从 OpenAI Platform 获取的 Key</li>
              <li><strong>Base URL</strong>：默认 <code>https://api.openai.com/v1</code></li>
              <li><strong>可用模型</strong>：选择 GPT-4o、GPT-4o-mini 等</li>
            </ul>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">03</div>
          <div class="step-content">
            <h5>测试并保存</h5>
            <p>点击「测试连接」确认配置正确，然后点击「保存」。</p>
          </div>
        </div>
      </div>
      
      <div class="tip-box warning">
        <div class="tip-icon"><i class='bx bx-info-circle'></i></div>
        <div class="tip-content">
          <strong>OpenAI 配置要点</strong>
          <ul>
            <li>API Key 以 <code>sk-</code> 开头</li>
            <li>国内用户需要配置代理或使用中转服务</li>
            <li>GPT-4o 是最新的旗舰模型，能力最强</li>
            <li>GPT-4o-mini 价格更低，适合简单任务</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="ollama-config" class="subsection">
      <h3>Ollama 本地部署</h3>
      
      <div class="sub-section">
        <h4>安装 Ollama</h4>
        <ol>
          <li>访问 <a href="https://ollama.com" target="_blank">Ollama 官网</a></li>
          <li>下载适合你操作系统的安装包</li>
          <li>按照提示完成安装</li>
          <li>打开终端，运行 <code>ollama pull llama3</code> 下载模型</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>配置步骤</h4>
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>添加 Ollama 提供商</h5>
            <p>在「模型」设置页面，点击「添加模型提供商」，选择「Ollama」。</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>填写配置信息</h5>
            <ul>
              <li><strong>Base URL</strong>：<code>http://localhost:11434</code>（默认端口）</li>
              <li><strong>无需 API Key</strong>：本地部署不需要密钥</li>
            </ul>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">03</div>
          <div class="step-content">
            <h5>选择模型</h5>
            <p>选择已下载的本地模型，如 Llama 3、Mistral、Qwen 等。</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">04</div>
          <div class="step-content">
            <h5>测试并保存</h5>
            <p>点击「测试连接」确认配置正确，然后点击「保存」。</p>
          </div>
        </div>
      </div>
      
      <div class="tip-box">
        <div class="tip-icon"><i class='bx bx-info-circle'></i></div>
        <div class="tip-content">
          <strong>Ollama 配置要点</strong>
          <ul>
            <li>完全离线使用，保护数据隐私</li>
            <li>需要足够的硬件资源（建议 16GB+ 内存）</li>
            <li>首次使用需要下载模型，可能需要较长时间</li>
            <li>推荐模型：Llama 3、Mistral、Qwen2.5</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="model-switch" class="subsection">
      <h3>切换模型</h3>
      
      <div class="sub-section">
        <h4>如何切换模型</h4>
        <p>配置完成后，你可以在对话界面随时切换模型：</p>
        <ol>
          <li>点击对话界面顶部的模型选择器</li>
          <li>从下拉菜单中选择已配置的模型</li>
          <li>切换后，新对话将使用选定的模型</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>模型选择建议</h4>
        <div class="model-suggest-grid">
          <div class="suggest-item">
            <h5>复杂推理任务</h5>
            <p>Claude Opus 4、GPT-4o、DeepSeek Reasoner</p>
          </div>
          <div class="suggest-item">
            <h5>日常对话写作</h5>
            <p>Claude Sonnet 4、GPT-4o-mini、DeepSeek Chat</p>
          </div>
          <div class="suggest-item">
            <h5>代码开发调试</h5>
            <p>Claude Sonnet 4、GPT-4o、DeepSeek V3</p>
          </div>
          <div class="suggest-item">
            <h5>隐私敏感场景</h5>
            <p>Ollama 本地模型</p>
          </div>
          <div class="suggest-item">
            <h5>成本敏感场景</h5>
            <p>DeepSeek Chat、GPT-4o-mini</p>
          </div>
          <div class="suggest-item">
            <h5>国内网络环境</h5>
            <p>DeepSeek、通义千问、智谱 AI</p>
          </div>
        </div>
      </div>
    </div>
    
    <div id="model-faq" class="subsection">
      <h3>常见问题</h3>
      
      <div class="qa-item">
        <div class="qa-question">Q: API Key 填写后显示无效？</div>
        <div class="qa-answer">
          <ul>
            <li>检查 API Key 是否正确复制（注意前后空格）</li>
            <li>确认 API Key 是否已激活或过期</li>
            <li>检查账户是否有余额</li>
            <li>确认 Base URL 是否正确</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q: 连接超时怎么办？</div>
        <div class="qa-answer">
          <ul>
            <li>检查网络连接是否正常</li>
            <li>国内用户可能需要配置代理</li>
            <li>尝试使用中转服务或切换到国内模型</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q: 如何查看 API 使用量？</div>
        <div class="qa-answer">
          <p>登录各模型提供商的控制台查看使用量和费用：</p>
          <ul>
            <li>OpenAI: <a href="https://platform.openai.com/usage" target="_blank">Usage Dashboard</a></li>
            <li>Anthropic: <a href="https://console.anthropic.com/settings/usage" target="_blank">Usage Settings</a></li>
            <li>DeepSeek: <a href="https://platform.deepseek.com/usage" target="_blank">Usage Overview</a></li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q: 可以同时配置多个模型提供商吗？</div>
        <div class="qa-answer">
          <p>可以！NEUXSBOT 支持同时配置多个模型提供商，你可以在对话时根据需要选择不同的模型。</p>
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

.docs-section > p {
  color: #888;
  line-height: 1.7;
  margin-bottom: 14px;
  font-size: 14px;
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

.sub-section {
  margin-bottom: 24px;
}

.sub-section h4 {
  font-size: 15px;
  font-weight: 600;
  margin: 24px 0 12px;
  color: #d3d9e5;
}

.sub-section p {
  color: #9aa3b2;
  line-height: 1.75;
  margin-bottom: 12px;
  font-size: 15px;
}

.sub-section ul, .sub-section ol {
  color: #9aa3b2;
  line-height: 2;
  margin-bottom: 16px;
  padding-left: 24px;
  font-size: 14px;
}

.sub-section li {
  margin-bottom: 12px;
}

.sub-section a {
  color: #39ff14;
  text-decoration: none;
}

.sub-section a:hover {
  text-decoration: underline;
}

.model-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
  gap: 10px;
  margin-top: 20px;
}

.model-card {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 10px 12px;
  background: rgba(255, 255, 255, 0.01);
  border: none;
  border-radius: 6px;
  transition: all 0.2s ease;
  cursor: pointer;
}

.model-card:hover {
  background: rgba(255, 255, 255, 0.025);
  transform: translateY(-1px);
}

.model-icon {
  width: 32px;
  height: 32px;
  border-radius: 6px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  font-size: 16px;
  color: #fff;
}

.model-icon.openai { background: linear-gradient(135deg, #10a37f, #1a7f5a); }
.model-icon.anthropic { background: linear-gradient(135deg, #d97757, #c45a3a); }
.model-icon.google { background: linear-gradient(135deg, #4285f4, #34a853); }
.model-icon.deepseek { background: linear-gradient(135deg, #0066ff, #00ccff); }
.model-icon.moonshot { background: linear-gradient(135deg, #6366f1, #8b5cf6); }
.model-icon.zhipu { background: linear-gradient(135deg, #3b82f6, #1d4ed8); }
.model-icon.qwen { background: linear-gradient(135deg, #ff6b00, #ff9500); }
.model-icon.ollama { background: linear-gradient(135deg, #64748b, #475569); }

.model-info {
  flex: 1;
  min-width: 0;
}

.model-info h4 {
  margin: 0 0 2px;
  color: #f5f7fb;
  font-size: 13px;
  font-weight: 500;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.model-info p {
  margin: 0;
  color: #8f98a8;
  font-size: 11px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.step-card {
  padding: 20px;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.05);
  border-radius: 12px;
  margin-bottom: 16px;
}

.step-number {
  font-size: 32px;
  font-weight: 700;
  color: #00ff41;
  opacity: 0.4;
  margin-bottom: 12px;
  line-height: 1;
}

.step-content h5 {
  margin: 0 0 10px;
  color: #f5f7fb;
  font-size: 16px;
  font-weight: 500;
}

.step-content p, .step-content ul, .step-content ol {
  margin: 0;
}

code {
  background: rgba(0, 255, 65, 0.1);
  padding: 2px 6px;
  border-radius: 4px;
  font-family: 'SF Mono', Monaco, 'Courier New', monospace;
  font-size: 12px;
  color: #00ff41;
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

.tip-box.warning {
  background: rgba(255, 193, 7, 0.03);
  border-left-color: rgba(255, 193, 7, 0.4);
}

.tip-box.warning .tip-icon {
  color: #ffc107;
  filter: drop-shadow(0 0 6px rgba(255, 193, 7, 0.3));
}

.tip-box.warning .tip-content strong {
  color: #ffc107;
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

.model-suggest-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 12px;
  margin-top: 14px;
}

.suggest-item {
  padding: 14px 16px;
  background: rgba(255, 255, 255, 0.015);
  border: none;
  border-radius: 8px;
  transition: all 0.2s ease;
}

.suggest-item:hover {
  background: rgba(255, 255, 255, 0.03);
  transform: translateY(-1px);
}

.suggest-item h5 {
  margin: 0 0 6px;
  color: #f5f7fb;
  font-size: 14px;
  font-weight: 500;
}

.suggest-item p {
  margin: 0;
  font-size: 13px;
  color: #00ff41;
  line-height: 1.5;
}

.qa-item {
  margin-bottom: 16px;
  padding: 18px 20px;
  background: rgba(255, 255, 255, 0.015);
  border: none;
  border-radius: 10px;
  transition: all 0.2s ease;
}

.qa-item:hover {
  background: rgba(255, 255, 255, 0.025);
}

.qa-question {
  font-weight: 600;
  color: #f5f7fb;
  margin-bottom: 10px;
  font-size: 15px;
}

.qa-answer {
  color: #9aa3b2;
  line-height: 1.75;
  font-size: 14px;
}

.qa-answer ul, .qa-answer ol {
  margin: 8px 0 0;
  padding-left: 24px;
}

@media (max-width: 1024px) {
  .model-grid {
    grid-template-columns: repeat(2, 1fr);
  }
  
  .model-suggest-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 640px) {
  .model-grid {
    grid-template-columns: 1fr;
  }
  
  .model-suggest-grid {
    grid-template-columns: 1fr;
  }
}
</style>
