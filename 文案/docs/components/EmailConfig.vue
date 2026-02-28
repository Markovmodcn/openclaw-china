<template>
  <section id="email-config" class="docs-section">
    <h2 class="section-title">邮箱配置指南</h2>
    <p>通过邮箱配置，NEUXSBOT 可以自动监听指定邮箱，将收到的邮件内容作为任务输入，实现邮件自动化处理。</p>
    
    <div id="email-overview" class="subsection">
      <h3>功能概述</h3>
      <p>邮箱配置功能允许 NEUXSBOT：</p>
      <ul>
        <li>自动监听指定邮箱的新邮件</li>
        <li>将邮件内容自动转化为任务</li>
        <li>支持邮件附件处理</li>
        <li>支持多种邮箱服务商</li>
      </ul>
    </div>
    
    <div id="supported-providers" class="subsection">
      <h3>支持的邮箱服务商</h3>
      
      <div class="provider-grid">
        <div class="provider-card">
          <div class="provider-icon gmail">
            <i class="fas fa-envelope"></i>
          </div>
          <div class="provider-info">
            <h4>Gmail</h4>
            <p>应用专用密码</p>
          </div>
        </div>
        
        <div class="provider-card">
          <div class="provider-icon outlook">
            <i class="fab fa-microsoft"></i>
          </div>
          <div class="provider-info">
            <h4>Outlook</h4>
            <p>Microsoft 365</p>
          </div>
        </div>
        
        <div class="provider-card">
          <div class="provider-icon qq">
            <i class="fab fa-qq"></i>
          </div>
          <div class="provider-info">
            <h4>QQ 邮箱</h4>
            <p>IMAP 服务</p>
          </div>
        </div>
        
        <div class="provider-card">
          <div class="provider-icon netease">
            <i class="fas fa-at"></i>
          </div>
          <div class="provider-info">
            <h4>网易邮箱</h4>
            <p>163/126</p>
          </div>
        </div>
        
        <div class="provider-card">
          <div class="provider-icon custom">
            <i class="fas fa-cog"></i>
          </div>
          <div class="provider-info">
            <h4>自定义</h4>
            <p>企业邮箱</p>
          </div>
        </div>
      </div>
    </div>
    
    <div id="gmail-config" class="subsection">
      <h3>Gmail 配置</h3>
      
      <div class="sub-section">
        <h4>准备工作</h4>
        <ul>
          <li>拥有 Gmail 账号</li>
          <li>账号已开启两步验证</li>
        </ul>
      </div>
      
      <div class="sub-section">
        <h4>步骤 1：开启两步验证</h4>
        <ol>
          <li>访问 <a href="https://myaccount.google.com/security" target="_blank">Google 账号安全设置</a></li>
          <li>找到「两步验证」并开启</li>
          <li>按照提示完成设置</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>步骤 2：创建应用专用密码</h4>
        <ol>
          <li>访问 <a href="https://myaccount.google.com/apppasswords" target="_blank">应用专用密码</a> 页面</li>
          <li>选择「邮件」作为应用</li>
          <li>选择「其他（自定义名称）」作为设备</li>
          <li>输入名称如「NEUXSBOT」</li>
          <li>点击「生成」获取 16 位密码</li>
          <li>复制并保存此密码（只显示一次）</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>步骤 3：在 NEUXSBOT 中配置</h4>
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>打开邮箱设置</h5>
            <p>进入「设置」→「邮箱配置」</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>添加邮箱账户</h5>
            <p>点击「添加邮箱账户」，选择「Gmail」</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">03</div>
          <div class="step-content">
            <h5>填写配置信息</h5>
            <ul>
              <li><strong>邮箱地址</strong>：你的 Gmail 地址</li>
              <li><strong>密码</strong>：刚才生成的 16 位应用专用密码</li>
              <li><strong>IMAP 服务器</strong>：<code>imap.gmail.com</code></li>
              <li><strong>端口</strong>：<code>993</code></li>
              <li><strong>SSL</strong>：开启</li>
            </ul>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">04</div>
          <div class="step-content">
            <h5>测试连接</h5>
            <p>点击「测试连接」确认配置正确，然后点击「保存」。</p>
          </div>
        </div>
      </div>
      
      <div class="tip-box warning">
        <div class="tip-icon"><i class='bx bx-info-circle'></i></div>
        <div class="tip-content">
          <strong>Gmail 配置要点</strong>
          <ul>
            <li>必须使用应用专用密码，不能使用账号登录密码</li>
            <li>应用专用密码中不要包含空格</li>
            <li>如果连接失败，检查是否开启了 IMAP 访问</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="outlook-config" class="subsection">
      <h3>Outlook 配置</h3>
      
      <div class="sub-section">
        <h4>配置步骤</h4>
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>添加邮箱账户</h5>
            <p>在「邮箱配置」页面，点击「添加邮箱账户」，选择「Outlook」</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>填写配置信息</h5>
            <ul>
              <li><strong>邮箱地址</strong>：你的 Outlook 邮箱</li>
              <li><strong>密码</strong>：你的邮箱密码</li>
              <li><strong>IMAP 服务器</strong>：<code>outlook.office365.com</code></li>
              <li><strong>端口</strong>：<code>993</code></li>
              <li><strong>SSL</strong>：开启</li>
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
          <strong>Outlook 配置要点</strong>
          <ul>
            <li>个人 Outlook.com 邮箱可直接使用密码</li>
            <li>企业 Microsoft 365 邮箱可能需要管理员授权</li>
            <li>如果启用了两步验证，需要创建应用密码</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="qq-config" class="subsection">
      <h3>QQ 邮箱配置</h3>
      
      <div class="sub-section">
        <h4>步骤 1：开启 IMAP 服务</h4>
        <ol>
          <li>登录 <a href="https://mail.qq.com" target="_blank">QQ 邮箱</a></li>
          <li>点击「设置」→「账户」</li>
          <li>找到「POP3/IMAP/SMTP/Exchange/CardDAV/CalDAV服务」</li>
          <li>开启「IMAP/SMTP服务」</li>
          <li>按照提示发送短信验证</li>
          <li>获取并保存授权码（16位）</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>步骤 2：在 NEUXSBOT 中配置</h4>
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>添加邮箱账户</h5>
            <p>在「邮箱配置」页面，点击「添加邮箱账户」，选择「QQ 邮箱」</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>填写配置信息</h5>
            <ul>
              <li><strong>邮箱地址</strong>：你的 QQ 邮箱地址</li>
              <li><strong>密码</strong>：授权码（不是 QQ 密码）</li>
              <li><strong>IMAP 服务器</strong>：<code>imap.qq.com</code></li>
              <li><strong>端口</strong>：<code>993</code></li>
              <li><strong>SSL</strong>：开启</li>
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
          <strong>QQ 邮箱配置要点</strong>
          <ul>
            <li>必须使用授权码，不能使用 QQ 密码</li>
            <li>授权码只显示一次，请妥善保存</li>
            <li>如果忘记授权码，可以重新生成</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="netease-config" class="subsection">
      <h3>网易邮箱配置（163/126）</h3>
      
      <div class="sub-section">
        <h4>步骤 1：开启 IMAP 服务</h4>
        <ol>
          <li>登录网易邮箱（163 或 126）</li>
          <li>点击「设置」→「POP3/SMTP/IMAP」</li>
          <li>开启「IMAP/SMTP服务」</li>
          <li>按照提示发送短信验证</li>
          <li>获取并保存授权密码</li>
        </ol>
      </div>
      
      <div class="sub-section">
        <h4>步骤 2：在 NEUXSBOT 中配置</h4>
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>添加邮箱账户</h5>
            <p>在「邮箱配置」页面，点击「添加邮箱账户」，选择「网易邮箱」</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>填写配置信息</h5>
            <ul>
              <li><strong>邮箱地址</strong>：你的网易邮箱地址</li>
              <li><strong>密码</strong>：授权密码（不是登录密码）</li>
              <li><strong>IMAP 服务器</strong>：
                <ul>
                  <li>163 邮箱：<code>imap.163.com</code></li>
                  <li>126 邮箱：<code>imap.126.com</code></li>
                </ul>
              </li>
              <li><strong>端口</strong>：<code>993</code></li>
              <li><strong>SSL</strong>：开启</li>
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
    </div>
    
    <div id="custom-config" class="subsection">
      <h3>自定义邮箱配置</h3>
      
      <div class="sub-section">
        <h4>配置步骤</h4>
        <p>如果你的邮箱服务商不在列表中，可以使用自定义配置：</p>
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>获取 IMAP 服务器信息</h5>
            <p>联系你的邮箱管理员或查看邮箱服务商文档，获取以下信息：</p>
            <ul>
              <li>IMAP 服务器地址</li>
              <li>端口号（通常是 993 或 143）</li>
              <li>是否需要 SSL/TLS</li>
            </ul>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>添加邮箱账户</h5>
            <p>在「邮箱配置」页面，点击「添加邮箱账户」，选择「自定义」</p>
          </div>
        </div>
        <div class="step-card">
          <div class="step-number">03</div>
          <div class="step-content">
            <h5>填写配置信息</h5>
            <ul>
              <li><strong>邮箱地址</strong>：你的邮箱地址</li>
              <li><strong>用户名</strong>：通常是邮箱地址</li>
              <li><strong>密码</strong>：邮箱密码或授权码</li>
              <li><strong>IMAP 服务器</strong>：服务器地址</li>
              <li><strong>端口</strong>：端口号</li>
              <li><strong>SSL</strong>：根据服务商要求开启或关闭</li>
            </ul>
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
    </div>
    
    <div id="email-usage" class="subsection">
      <h3>使用说明</h3>
      
      <div class="sub-section">
        <h4>邮件监听</h4>
        <p>配置完成后，NEUXSBOT 会自动监听邮箱：</p>
        <ul>
          <li>新邮件到达时，NEUXSBOT 会自动创建新任务</li>
          <li>邮件主题作为任务标题</li>
          <li>邮件正文作为任务内容</li>
          <li>附件会自动下载并添加到任务中</li>
        </ul>
      </div>
      
      <div class="sub-section">
        <h4>过滤规则</h4>
        <p>你可以设置过滤规则来筛选需要处理的邮件：</p>
        <ul>
          <li><strong>发件人过滤</strong>：只处理特定发件人的邮件</li>
          <li><strong>主题过滤</strong>：只处理包含特定关键词的邮件</li>
          <li><strong>文件夹过滤</strong>：只监听特定文件夹的邮件</li>
        </ul>
      </div>
    </div>
    
    <div id="email-faq" class="subsection">
      <h3>常见问题</h3>
      
      <div class="qa-item">
        <div class="qa-question">Q: 连接失败怎么办？</div>
        <div class="qa-answer">
          <ul>
            <li>检查邮箱地址和密码是否正确</li>
            <li>确认 IMAP 服务已开启</li>
            <li>检查 IMAP 服务器地址和端口是否正确</li>
            <li>确认 SSL 设置正确</li>
            <li>检查网络连接是否正常</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q: 为什么收不到邮件？</div>
        <div class="qa-answer">
          <ul>
            <li>确认邮箱监听已启用</li>
            <li>检查过滤规则是否过于严格</li>
            <li>确认邮件在监听的文件夹中</li>
            <li>查看 NEUXSBOT 日志是否有错误</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q: 如何处理大量邮件？</div>
        <div class="qa-answer">
          <ul>
            <li>设置合理的过滤规则</li>
            <li>使用文件夹分类邮件</li>
            <li>定期清理已处理的邮件</li>
          </ul>
        </div>
      </div>
      
      <div class="qa-item">
        <div class="qa-question">Q: 邮箱密码泄露了怎么办？</div>
        <div class="qa-answer">
          <ul>
            <li>立即在邮箱服务商处修改密码或重新生成授权码</li>
            <li>在 NEUXSBOT 中更新配置</li>
            <li>检查是否有异常邮件处理记录</li>
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
  margin-bottom: 14px;
}

.subsection > ul {
  color: #9aa3b2;
  line-height: 2;
  margin-bottom: 16px;
  padding-left: 24px;
  font-size: 14px;
}

.subsection > ul > li {
  margin-bottom: 14px;
}

.sub-section a {
  color: #39ff14;
  text-decoration: none;
}

.sub-section a:hover {
  text-decoration: underline;
}

.provider-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
  gap: 12px;
  margin-top: 20px;
}

.provider-card {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 12px 14px;
  background: rgba(255, 255, 255, 0.015);
  border: none;
  border-radius: 8px;
  transition: all 0.2s ease;
  cursor: pointer;
}

.provider-card:hover {
  background: rgba(255, 255, 255, 0.03);
  transform: translateY(-2px);
}

.provider-icon {
  width: 36px;
  height: 36px;
  border-radius: 8px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
  font-size: 18px;
  color: #fff;
}

.provider-icon.gmail { background: linear-gradient(135deg, #ea4335, #fbbc05); }
.provider-icon.outlook { background: linear-gradient(135deg, #0078d4, #00a4ef); }
.provider-icon.qq { background: linear-gradient(135deg, #12b7f5, #1da1f2); }
.provider-icon.netease { background: linear-gradient(135deg, #d43c33, #b02a37); }
.provider-icon.custom { background: linear-gradient(135deg, #64748b, #475569); }

.provider-info {
  flex: 1;
  min-width: 0;
}

.provider-info h4 {
  margin: 0 0 2px;
  color: #f5f7fb;
  font-size: 13px;
  font-weight: 500;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.provider-info p {
  margin: 0;
  color: #8f98a8;
  font-size: 11px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.step-card {
  padding: 20px;
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

.tip-content strong {
  display: block;
  margin-bottom: 6px;
  color: #39ff14;
  font-size: 13px;
}

.tip-content ul {
  margin: 0;
  padding-left: 20px;
}

.qa-item {
  margin-bottom: 16px;
  padding: 14px;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.05);
  border-radius: 8px;
}

.qa-question {
  font-weight: 600;
  color: #fff;
  margin-bottom: 8px;
  font-size: 13px;
}

.qa-answer {
  color: #888;
  line-height: 1.7;
  font-size: 13px;
}

.qa-answer ul, .qa-answer ol {
  margin: 6px 0 0;
  padding-left: 20px;
}

@media (max-width: 1024px) {
  .provider-grid {
    grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
  }
}

@media (max-width: 640px) {
  .provider-grid {
    grid-template-columns: 1fr;
  }
}
</style>
