<template>
  <section id="qa" class="docs-section">
    <h2 class="section-title">Q&A 常见问题</h2>
    
    <div id="qa-basic" class="subsection">
      <h3>基础使用</h3>
      
      <div class="qa-item">
        <div class="qa-question">Q1: NEUXSBOT 和其他 AI 助手有什么区别？</div>
        <div class="qa-answer">NEUXSBOT 最大的特点是技能系统和全场景覆盖。传统 AI 助手只是对话工具，而 NEUXSBOT 通过技能模块化不同能力，让 AI 在特定领域更专业。无论是编程、文档处理、数据分析还是设计工作，NEUXSBOT 都能像一个 7×24 小时待命的全能助理一样为你服务。</div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q2: 技能可以同时启用多个吗？</div>
        <div class="qa-answer">可以。AI 会根据你的任务自动选择使用哪些技能。比如同时启用 docx 和 web-search，AI 就能搜索资料后生成 Word 文档。</div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q3: 某个技能不工作怎么办？</div>
        <div class="qa-answer">
          <ul>
            <li>确认技能已在「技能」页面启用（开关为蓝色）</li>
            <li>查看错误信息，看是否缺少配置</li>
            <li>尝试重新启用技能或重启应用</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="qa-model" class="subsection">
      <h3>模型配置</h3>
      
      <div class="qa-item">
        <div class="qa-question">Q4: 如何配置 AI 模型？</div>
        <div class="qa-answer">
          <ol>
            <li>进入「设置」→「模型」</li>
            <li>选择想要使用的模型提供商（如 Anthropic、DeepSeek 等）</li>
            <li>填写 API Key 和相关配置</li>
            <li>点击「保存」完成</li>
          </ol>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q5: API Key 安全吗？</div>
        <div class="qa-answer">API Key 仅存储在你的本地设备上，不会上传到任何服务器。你可以为 NEUXSBOT 创建专用的 Key，并设置使用额度限制。</div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q6: 为什么模型配置失败？</div>
        <div class="qa-answer">
          <p>常见原因：</p>
          <ul>
            <li><strong>API Key 错误：</strong>检查是否复制完整，注意前后空格</li>
            <li><strong>Base URL 错误：</strong>确认使用正确的端点地址</li>
            <li><strong>API 格式选择错误（DeepSeek 用户）：</strong>检查是否选择了正确的兼容格式（Anthropic 或 OpenAI）</li>
            <li><strong>网络问题：</strong>国内访问 OpenAI/Anthropic 可能需要配置代理或使用中转服务</li>
            <li><strong>额度不足：</strong>检查账户余额或 API 配额是否用尽</li>
            <li><strong>模型权限：</strong>确认 API Key 有访问该模型的权限</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q7: 如何查看 API 使用量？</div>
        <div class="qa-answer">NEUXSBOT 本身不统计使用量，请前往对应服务商的控制台查看：
          <ul>
            <li>OpenAI: Usage Dashboard</li>
            <li>Anthropic: Console Dashboard</li>
            <li>DeepSeek: Platform Console</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="qa-tips" class="subsection">
      <h3>使用技巧</h3>
      
      <div class="qa-item">
        <div class="qa-question">Q8: 如何让 AI 输出更符合预期？</div>
        <div class="qa-answer">
          <ul>
            <li><strong>具体化需求：</strong>不要说「优化代码」，而说「减少这个函数的循环嵌套层级」</li>
            <li><strong>提供示例：</strong>给出期望输出的样例</li>
            <li><strong>分步骤：</strong>复杂任务拆分成多个小步骤</li>
            <li><strong>反馈迭代：</strong>对 AI 的输出提出具体修改意见</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q9: 如何让 AI 理解我的项目结构？</div>
        <div class="qa-answer">在新任务开始时，上传项目的核心文件或目录结构，并简单描述：「这是一个 React + TypeScript 项目，使用 Vite 构建，主要代码在 src 目录，组件在 src/components」</div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q10: 如何让 AI 遵守项目规范？</div>
        <div class="qa-answer">在任务开始时提供项目规范文档或关键规则：「项目规范：
          <ul>
            <li>使用 4 空格缩进</li>
            <li>函数注释使用 JSDoc 格式</li>
            <li>组件文件以 .tsx 结尾，样式文件用 .module.css</li>
          </ul>」
          <p>或者创建自定义技能，将规范固化为技能知识。</p>
        </div>
      </div>
    </div>
    
    <div id="qa-troubleshoot" class="subsection">
      <h3>故障排查</h3>
      
      <div class="qa-item">
        <div class="qa-question">Q11: 对话突然中断怎么办？</div>
        <div class="qa-answer">
          <p>可能原因：</p>
          <ul>
            <li><strong>网络超时：</strong>检查网络连接，重试即可</li>
            <li><strong>Token 超限：</strong>对话过长导致超出模型限制，新建任务继续</li>
            <li><strong>API 配额用尽：</strong>检查账户余额</li>
            <li><strong>模型服务故障：</strong>等待服务恢复或切换到其他模型</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q12: AI 输出的代码无法运行</div>
        <div class="qa-answer">
          <ul>
            <li>检查是否缺少依赖或环境配置</li>
            <li>将错误信息反馈给 AI：「运行报错：TypeError: xxx is not defined」</li>
            <li>如果是第三方库问题，启用 web-search 技能查找最新文档</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q13: 应用卡顿或内存占用高</div>
        <div class="qa-answer">
          <ul>
            <li>清理历史任务记录（删除不需要的对话）</li>
            <li>关闭不使用的技能</li>
            <li>避免在单个任务中累积过多对话轮次</li>
            <li>重启应用释放内存</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q14: NEUXSBOT 是否支持离线使用？</div>
        <div class="qa-answer">
          <p>部分功能可以离线使用：</p>
          <ul>
            <li><strong>本地模型（Ollama）：</strong>完全离线运行，无需网络连接</li>
            <li><strong>已启用的技能：</strong>技能本身的逻辑可离线执行</li>
            <li><strong>云端模型：</strong>需要网络连接</li>
          </ul>
          <p>如果你对数据隐私要求较高，可以使用 Ollama 配置本地模型。</p>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q15: 如何导出对话记录？</div>
        <div class="qa-answer">
          <p>目前对话记录存储在本地数据库中。导出方式：</p>
          <ol>
            <li>在任务列表中找到想要导出的对话</li>
            <li>点击任务旁的 ... 菜单</li>
            <li>选择「导出」</li>
            <li>选择导出格式（Markdown / JSON / TXT）</li>
            <li>保存到本地文件夹</li>
          </ol>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q16: 技能可以在不同任务间共享吗？</div>
        <div class="qa-answer">
          <p>可以。技能启用后对所有任务生效。如果只想在特定任务中使用某个技能，可以：</p>
          <ul>
            <li>在任务开始时明确说明：「使用 xlsx 技能处理这个表格」</li>
            <li>或在需要时临时启用技能，完成后禁用</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q17: 如何处理敏感数据？</div>
        <div class="qa-answer">
          <ul>
            <li><strong>使用本地模型：</strong>通过 Ollama 部署本地模型处理敏感信息</li>
            <li><strong>数据脱敏：</strong>在上传前对敏感字段进行脱敏处理</li>
            <li><strong>避免明文传输：</strong>不要在对话中直接粘贴密码、API Key 等凭据</li>
            <li><strong>定期清理：</strong>处理完敏感数据后，及时删除相关任务记录</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q18: 能否在团队中共享自定义技能？</div>
        <div class="qa-answer">
          <p>可以。自定义技能以文件形式存储在本地，可以通过以下方式共享：</p>
          <ol>
            <li>找到技能文件位置（通常在 ~/Library/Application Support/NEUXSBOT/SKILLs/）</li>
            <li>将技能文件夹打包发送给团队成员</li>
            <li>团队成员将文件夹放到相同位置</li>
            <li>重启 NEUXSBOT，新技能会自动出现</li>
          </ol>
          <p>团队可以建立技能库仓库，统一管理和分发自定义技能。</p>
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

.qa-item {
  margin-bottom: 20px;
  padding: 20px;
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
  margin-bottom: 12px;
  font-size: 15px;
}

.qa-answer {
  color: #9aa3b2;
  line-height: 1.75;
  font-size: 14px;
}

.qa-answer ul, .qa-answer ol {
  margin: 8px 0;
  padding-left: 24px;
}

.qa-answer p {
  margin: 8px 0;
}
</style>
