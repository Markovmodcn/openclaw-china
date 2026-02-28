<template>
  <section id="advanced" class="docs-section">
    <h2 class="section-title">进阶使用</h2>
    
    <div id="custom-skill" class="subsection">
      <h3>自定义技能</h3>
      <p>NEUXSBOT 允许你创建自己的技能，让 AI 掌握你的特定工作流程。</p>
      
      <div class="sub-section">
        <h4>创建步骤</h4>
        <ol>
          <li>启用 skill-creator 技能</li>
          <li>描述你想要的能力：「创建一个技能：自动生成符合我们团队规范的代码注释」</li>
          <li>技能创建器会引导你完善细节</li>
          <li>创建完成后，新技能会出现在技能列表中</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>技能组成</h4>
        <ul>
          <li><strong>技能描述：</strong>告诉 AI 这个技能的用途</li>
          <li><strong>专业知识：</strong>提供领域知识、规范、模板等</li>
          <li><strong>工具集成：</strong>可以调用外部工具或 API</li>
          <li><strong>示例对话：</strong>展示技能的典型使用方式</li>
        </ul>
      </div>
      
      <div class="tip-box">
        <div class="tip-icon"><i class='bx bx-star'></i></div>
        <div class="tip-content">
          <strong>最佳实践</strong>
          <ul>
            <li>技能描述要清晰具体，避免模糊表述</li>
            <li>提供充足的示例，帮助 AI 理解预期输出</li>
            <li>一个技能专注做好一件事，不要过于复杂</li>
            <li>定期测试和优化技能效果</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="shortcuts" class="subsection">
      <h3>快捷键</h3>
      <p>提高操作效率的快捷键配置。</p>
      
      <div class="sub-section">
        <h4>系统默认快捷键</h4>
        <div class="shortcuts-table">
          <div class="shortcut-row">
            <span class="shortcut-key">Cmd/Ctrl + N</span>
            <span class="shortcut-desc">新建任务</span>
          </div>
          <div class="shortcut-row">
            <span class="shortcut-key">Cmd/Ctrl + K</span>
            <span class="shortcut-desc">聚焦搜索框</span>
          </div>
          <div class="shortcut-row">
            <span class="shortcut-key">Cmd/Ctrl + ,</span>
            <span class="shortcut-desc">打开设置</span>
          </div>
          <div class="shortcut-row">
            <span class="shortcut-key">Cmd/Ctrl + Enter</span>
            <span class="shortcut-desc">发送消息</span>
          </div>
          <div class="shortcut-row">
            <span class="shortcut-key">Esc</span>
            <span class="shortcut-desc">取消当前输入</span>
          </div>
        </div>
      </div>
      
      <div class="sub-section">
        <h4>自定义快捷键</h4>
        <ol>
          <li>进入「设置」→「快捷键」</li>
          <li>点击要修改的快捷键</li>
          <li>按下新的组合键</li>
          <li>保存设置</li>
        </ol>
        <p class="workflow-tip">提示：避免与系统快捷键冲突，可以使用 Cmd/Ctrl + Shift + X 这类组合键。</p>
      </div>
    </div>
    
    <div id="sandbox" class="subsection">
      <h3>沙箱模式</h3>
      <p>沙箱模式让 AI 在隔离的虚拟环境中执行代码，保护你的系统安全。</p>
      
      <div class="sub-section">
        <h4>工作原理</h4>
        <ul>
          <li>AI 生成的代码在独立的 VM 环境中运行</li>
          <li>限制对本地文件系统的访问</li>
          <li>网络请求受到监控和限制</li>
          <li>自动检测潜在的危险操作</li>
        </ul>
      </div>
      
      <div class="sub-section">
        <h4>适用场景</h4>
        <ul>
          <li>测试不确定来源或逻辑的代码</li>
          <li>运行第三方提供的脚本</li>
          <li>学习和实验新技术</li>
          <li>处理不受信任的数据</li>
        </ul>
      </div>
      
      <div class="sub-section">
        <h4>执行模式选择</h4>
        <p>进入「设置」→「沙箱」，选择合适的执行模式：</p>
        
        <div class="mode-options">
          <div class="mode-option">
            <div class="mode-header">
              <span class="mode-name">自动（优先沙箱）</span>
              <span class="mode-badge recommended">推荐</span>
            </div>
            <p>优先使用内置 VM 沙箱，不可用时自动回退到本地运行。平衡安全性和便利性，适合大多数日常使用场景。</p>
          </div>
          
          <div class="mode-option">
            <div class="mode-header">
              <span class="mode-name">本地运行</span>
            </div>
            <p>始终在本机环境执行代码。性能最佳，访问本地资源无限制。适合可信任务和需要完整系统权限的操作。</p>
          </div>
          
          <div class="mode-option">
            <div class="mode-header">
              <span class="mode-name">仅沙箱（内置 VM）</span>
              <span class="mode-badge secure">最高安全</span>
            </div>
            <p>要求内置 VM 沙箱可用，否则拒绝执行。最高安全级别。适合处理不受信任的代码或数据。</p>
          </div>
        </div>
      </div>
      
      <div class="sub-section">
        <h4>首次使用提示</h4>
        <p>如果选择沙箱模式时显示「未检测到 VM 运行时」：</p>
        <ol>
          <li>点击「安装沙箱」按钮</li>
          <li>系统会自动下载并配置虚拟环境（约 200MB）</li>
          <li>安装完成后即可使用沙箱功能</li>
          <li>安装过程可能需要 5-10 分钟，取决于网络速度</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>性能说明</h4>
        <ul>
          <li>沙箱模式会略微增加代码启动时间（约 1-2 秒）</li>
          <li>对于大多数任务，性能影响可忽略不计</li>
          <li>如果执行大量计算密集型任务，可临时切换到本地运行模式</li>
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
  margin-bottom: 40px;
  scroll-margin-top: 24px;
}

.subsection h3 {
  font-size: 17px;
  font-weight: 600;
  margin-bottom: 14px;
  color: #fff;
}

.subsection h4 {
  font-size: 14px;
  font-weight: 600;
  margin: 20px 0 10px;
  color: #ccc;
}

.subsection p {
  color: #888;
  line-height: 1.7;
  margin-bottom: 14px;
  font-size: 14px;
}

.subsection ul, .subsection ol {
  color: #888;
  line-height: 1.8;
  margin-bottom: 14px;
  padding-left: 20px;
  font-size: 14px;
}

.subsection li {
  margin-bottom: 6px;
}

.sub-section {
  margin-bottom: 20px;
}

.tip-box {
  display: flex;
  gap: 14px;
  padding: 18px;
  background: rgba(57, 255, 20, 0.05);
  border: 1px solid rgba(57, 255, 20, 0.1);
  border-radius: 10px;
  margin-top: 20px;
}

.tip-icon {
  font-size: 20px;
  color: #39ff14;
}

.tip-content strong {
  display: block;
  margin-bottom: 6px;
  color: #39ff14;
  font-size: 13px;
}

.shortcuts-table {
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.05);
  border-radius: 10px;
  overflow: hidden;
}

.shortcut-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 12px 16px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.05);
}

.shortcut-row:last-child {
  border-bottom: none;
}

.shortcut-key {
  font-family: -apple-system, BlinkMacSystemFont, monospace;
  padding: 4px 8px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 4px;
  font-size: 12px;
  color: #ccc;
}

.shortcut-desc {
  color: #888;
  font-size: 13px;
}

.workflow-tip {
  font-size: 13px;
  color: #aaa;
  padding: 10px;
  background: rgba(255, 255, 255, 0.02);
  border-radius: 6px;
}

.mode-options {
  display: flex;
  flex-direction: column;
  gap: 10px;
  margin-top: 14px;
}

.mode-option {
  padding: 16px;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.05);
  border-radius: 10px;
}

.mode-header {
  display: flex;
  align-items: center;
  gap: 10px;
  margin-bottom: 6px;
}

.mode-name {
  font-weight: 600;
  color: #fff;
  font-size: 13px;
}

.mode-badge {
  padding: 2px 6px;
  border-radius: 4px;
  font-size: 9px;
  font-weight: 600;
}

.mode-badge.recommended {
  background: rgba(57, 255, 20, 0.1);
  color: #39ff14;
}

.mode-badge.secure {
  background: rgba(0, 240, 255, 0.1);
  color: #00f0ff;
}

.mode-option p {
  margin: 0;
  font-size: 13px;
}
</style>
