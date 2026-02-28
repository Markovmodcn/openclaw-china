<template>
  <section id="im-config" class="docs-section">
    <h2 class="section-title">桥接器配置</h2>
    <p>通过桥接器配置，你可以在手机端通过钉钉、飞书等 IM 平台远程操控 NEUXSBOT，实现随时随地办公。</p>
    <p><strong>支持的平台：</strong></p>
    <ul class="platform-list">
      <li>钉钉 (DingTalk)</li>
      <li>飞书 (Feishu/Lark)</li>
    </ul>
    
    <div id="dingtalk-config" class="subsection">
      <h3>钉钉机器人配置</h3>
      
      <div class="sub-section">
        <h4>准备工作</h4>
        <ul>
          <li>已注册钉钉账号</li>
          <li>已加入或创建企业组织（如无法创建企业组织，可创建家庭组织）</li>
          <li>具备企业管理员或开发者权限</li>
        </ul>
      </div>
      
      <div class="sub-section">
        <h4>配置步骤</h4>
        
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>步骤 1：进入钉钉开放平台</h5>
            <p>访问钉钉开放平台：<a href="https://open.dingtalk.com" target="_blank">https://open.dingtalk.com</a></p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-1.png" alt="钉钉开放平台首页" />
            </div>
            <p>登录后进入开发者后台：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-2.png" alt="开发者后台首页" />
            </div>
            <p class="tip-text">注意：必须加入组织才能进入开发者后台，如果没有组织可以先创建一个。</p>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>步骤 2：创建企业内部应用</h5>
            <p>导航至：<strong>应用开发</strong> → <strong>企业内部应用</strong> → <strong>钉钉应用</strong></p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-3.png" alt="应用列表页面" />
            </div>
            <p>点击 <strong>创建应用</strong> 按钮，填写应用信息：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-4.png" alt="创建应用表单" />
            </div>
            <ul>
              <li><strong>应用名称</strong>：NEUXSBOT</li>
              <li><strong>应用描述</strong>：AI 对话助手</li>
              <li><strong>应用图标</strong>：上传 Logo</li>
            </ul>
            <p>创建成功后会看到：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-5.png" alt="应用创建成功" />
            </div>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">03</div>
          <div class="step-content">
            <h5>步骤 3：添加机器人能力</h5>
            <p>在应用详情页，点击 <strong>添加应用能力</strong>：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-6.png" alt="添加应用能力入口" />
            </div>
            <p>选择 <strong>机器人</strong> 能力：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-7.png" alt="选择机器人能力" />
            </div>
            <p>填写机器人配置信息：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-8.png" alt="机器人配置表单" />
            </div>
            <ul>
              <li><strong>机器人名称</strong>：NEUXSBOT</li>
              <li><strong>机器人描述</strong>：智能 AI 助手</li>
              <li class="highlight"><strong>重要</strong>：消息接收模式选择 <strong>Stream 模式</strong></li>
            </ul>
            <p>配置完成后点击发布：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-9.png" alt="机器人发布成功" />
            </div>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">04</div>
          <div class="step-content">
            <h5>步骤 4：配置权限管理</h5>
            <p>进入 <strong>权限管理</strong> 页面：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-10.png" alt="权限管理入口" />
            </div>
            <p>搜索并勾选以下 3 个权限：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-11.png" alt="权限搜索和勾选" />
            </div>
            <ul>
              <li><code>Card.Streaming.Write</code> - 支持流式卡片消息推送</li>
              <li><code>Card.Instance.Write</code> - 创建和更新交互式卡片</li>
              <li><code>qyapi_robot_sendmsg</code> - 发送机器人消息到群聊和单聊</li>
            </ul>
            <p>提交权限申请：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-12.png" alt="权限申请提交" />
            </div>
            <p class="tip-text">提示：权限申请提交后需要等待审核通过。</p>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">05</div>
          <div class="step-content">
            <h5>步骤 5：发布应用版本</h5>
            <p>进入 <strong>企业版本管理与发布</strong> 页面：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-13.png" alt="版本管理入口" />
            </div>
            <p>创建新版本并发布应用：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-14.png" alt="创建并发布版本" />
            </div>
            <p>发布成功后，你的机器人就可以在钉钉中搜索到了。</p>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">06</div>
          <div class="step-content">
            <h5>步骤 6：获取凭证信息</h5>
            <p>在应用管理页面，找到 <strong>凭证与基础信息</strong> 部分：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-15.png" alt="凭证与基础信息" />
            </div>
            <p>复制以下信息：</p>
            <ul>
              <li><strong>Client ID</strong>（应用的 AppKey）</li>
              <li><strong>Client Secret</strong>（应用的 AppSecret）</li>
            </ul>
            <p class="tip-text warning">注意：Client Secret 只显示一次，请妥善保管！</p>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">07</div>
          <div class="step-content">
            <h5>步骤 7：在 NEUXSBOT 中配置</h5>
            <p>打开 NEUXSBOT 客户端的 IM 配置界面：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-16.png" alt="NEUXSBOT 配置界面" />
            </div>
            <p>在钉钉配置区域填入：</p>
            <ul>
              <li><strong>Client ID</strong>：刚才复制的 AppKey</li>
              <li><strong>Client Secret</strong>：刚才复制的 AppSecret</li>
            </ul>
            <p>保存配置并重启 NEUXSBOT 客户端。</p>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">08</div>
          <div class="step-content">
            <h5>步骤 8：测试机器人</h5>
            <p><strong>桌面端测试：</strong></p>
            <p>在钉钉桌面客户端搜索框中搜索"NEUXSBOT"：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-17.png" alt="钉钉搜索机器人" />
            </div>
            <p>找到机器人后，发送消息测试：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-18.png" alt="钉钉对话测试" />
            </div>
            <p><strong>移动端测试：</strong></p>
            <ul>
              <li>打开钉钉手机 APP</li>
              <li>在消息界面搜索机器人</li>
              <li>进入对话并发送消息测试</li>
            </ul>
          </div>
        </div>
      </div>
      
      <div class="tip-box warning">
        <div class="tip-icon"><i class='bx bx-info-circle'></i></div>
        <div class="tip-content">
          <strong>钉钉配置要点</strong>
          <ul>
            <li>必须选择 <strong>Stream 模式</strong>，Stream 模式下机器人可以实时接收消息，无需配置回调地址</li>
            <li>确保应用已发布，应用版本必须发布后才能在钉钉中使用</li>
            <li>权限必须开通，3 个必需权限缺一不可，等待审核通过后再测试</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="feishu-config" class="subsection">
      <h3>飞书机器人配置</h3>
      
      <div class="sub-section">
        <h4>准备工作</h4>
        <ul>
          <li>已注册飞书账号</li>
          <li>已登录飞书开放平台</li>
        </ul>
      </div>
      
      <div class="sub-section">
        <h4>配置步骤</h4>
        
        <div class="step-card">
          <div class="step-number">01</div>
          <div class="step-content">
            <h5>步骤 1：进入飞书开放平台</h5>
            <p>访问飞书开放平台：<a href="https://open.feishu.cn" target="_blank">https://open.feishu.cn</a></p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-1.png" alt="飞书开放平台首页" />
            </div>
            <p>登录后进入开发者后台：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-2.png" alt="开发者后台" />
            </div>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">02</div>
          <div class="step-content">
            <h5>步骤 2：创建企业自建应用</h5>
            <p>点击 <strong>创建企业自建应用</strong> 按钮：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-3.png" alt="创建应用入口" />
            </div>
            <p>填写应用基本信息：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-4.png" alt="填写应用基本信息" />
            </div>
            <ul>
              <li><strong>应用名称</strong>：NEUXSBOT</li>
              <li><strong>应用描述</strong>：智能 AI 对话助手</li>
              <li><strong>应用图标</strong>：上传 Logo（推荐尺寸：240×240px，支持 PNG、JPG 格式）</li>
            </ul>
            <p>创建成功后：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-5.png" alt="应用创建成功" />
            </div>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">03</div>
          <div class="step-content">
            <h5>步骤 3：添加机器人能力</h5>
            <p>在应用详情页，点击 <strong>添加应用能力</strong>：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-6.png" alt="添加应用能力" />
            </div>
            <p>选择 <strong>机器人</strong> 能力：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-7.png" alt="选择机器人能力" />
            </div>
            <p>配置机器人信息：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-8.png" alt="配置机器人信息" />
            </div>
            <ul>
              <li><strong>机器人名称</strong>：NEUXSBOT</li>
              <li><strong>机器人头像</strong>：上传 Logo</li>
              <li><strong>机器人描述</strong>：智能 AI 对话助手</li>
            </ul>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">04</div>
          <div class="step-content">
            <h5>步骤 4：配置权限管理</h5>
            <p>进入 <strong>权限管理</strong> 页面：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-9.png" alt="权限管理入口" />
            </div>
            <p>使用权限搜索功能：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-10.png" alt="搜索权限" />
            </div>
            <p>勾选以下 3 个必需权限：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-11.png" alt="勾选必需权限" />
            </div>
            <ul>
              <li><code>im:message</code> - 获取与发送单聊、群聊消息</li>
              <li><code>im:resource</code> - 获取与上传图片、文件资源</li>
              <li><code>contact:user.base:readonly</code> - 获取用户基本信息</li>
            </ul>
            <p>点击 <strong>批量开通</strong> 按钮，确认权限已开通：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-12.png" alt="权限开通确认" />
            </div>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">05</div>
          <div class="step-content">
            <h5>步骤 5：发布应用版本</h5>
            <p>进入 <strong>版本管理与发布</strong> 页面：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-13.png" alt="版本管理入口" />
            </div>
            <p>创建应用版本并发布：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-14.png" alt="创建并发布版本" />
            </div>
            <ul>
              <li>填写版本说明</li>
              <li>提交审核并发布</li>
            </ul>
            <p>发布成功后，你的机器人就可以在飞书中搜索到了。</p>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">06</div>
          <div class="step-content">
            <h5>步骤 6：获取凭证信息</h5>
            <p>在应用管理页面，找到 <strong>凭证与基础信息</strong> 部分：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-15.png" alt="凭证与基础信息" />
            </div>
            <p>复制以下信息：</p>
            <ul>
              <li><strong>App ID</strong></li>
              <li><strong>App Secret</strong></li>
            </ul>
            <p class="tip-text warning">注意：App Secret 只显示一次，请务必保存！</p>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">07</div>
          <div class="step-content">
            <h5>步骤 7：配置事件与回调</h5>
            <p>进入 <strong>事件与回调</strong> 页面：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-16.png" alt="事件与回调配置" />
            </div>
            <ul>
              <li><strong>消息接收方式</strong> 选择：<strong>长连接（推荐）</strong></li>
              <li>点击 <strong>保存配置</strong></li>
            </ul>
            <p>添加"接受消息"事件：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-17.png" alt="飞书事件" />
            </div>
            <div class="tip-box">
              <div class="tip-icon"><i class='bx bx-info-circle'></i></div>
              <div class="tip-content">
                <strong>重要提示</strong>：初次保存时可能会显示"应用未建立长连接"
                <div class="step-image">
                  <img src="/docs-images/docs-feishu-18.png" alt="飞书长连接状态" />
                </div>
                <p>解决方法：</p>
                <ol>
                  <li>先在 NEUXSBOT 中配置好飞书 App ID 和 App Secret</li>
                  <li>启动 NEUXSBOT 客户端，等待连接建立</li>
                  <li>再回到飞书开发者后台保存配置</li>
                  <li>可能需要多尝试几次</li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">08</div>
          <div class="step-content">
            <h5>步骤 8：在 NEUXSBOT 中配置</h5>
            <p>打开 NEUXSBOT 客户端的 IM 配置界面：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-16.png" alt="NEUXSBOT 配置界面" />
            </div>
            <p>在飞书配置区域填入：</p>
            <ul>
              <li><strong>App ID</strong>：刚才复制的 App ID</li>
              <li><strong>App Secret</strong>：刚才复制的 App Secret</li>
            </ul>
            <p>保存配置并重启 NEUXSBOT 客户端。</p>
          </div>
        </div>
        
        <div class="step-card">
          <div class="step-number">09</div>
          <div class="step-content">
            <h5>步骤 9：测试机器人</h5>
            <p><strong>桌面端测试：</strong></p>
            <p>在飞书桌面客户端搜索框中搜索"NEUXSBOT"：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-19.png" alt="飞书搜索机器人" />
            </div>
            <p>在搜索结果中选择 <strong>应用</strong> 标签，找到机器人并发送消息测试：</p>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-20.png" alt="飞书对话测试" />
            </div>
            <p><strong>移动端测试：</strong></p>
            <ul>
              <li>打开飞书手机 APP</li>
              <li>点击顶部搜索框</li>
              <li>搜索机器人名称</li>
              <li>在 <strong>应用</strong> 分类中找到机器人</li>
              <li>点击进入并发送消息测试</li>
            </ul>
          </div>
        </div>
      </div>
      
      <div class="tip-box warning">
        <div class="tip-icon"><i class='bx bx-info-circle'></i></div>
        <div class="tip-content">
          <strong>飞书配置要点</strong>
          <ul>
            <li>必须选择 <strong>长连接模式</strong>，长连接模式需要 NEUXSBOT 客户端保持运行状态</li>
            <li>确保应用已发布，应用版本必须发布后才能在飞书中使用</li>
            <li>权限必须开通，3 个必需权限缺一不可</li>
          </ul>
        </div>
      </div>
    </div>
    
    <div id="im-faq" class="subsection">
      <h3>常见问题与故障排查</h3>
      
      <div class="sub-section">
        <h4>通用问题</h4>
        
        <div class="qa-item">
          <div class="qa-question">Q: 配置完成后机器人没有响应？</div>
          <div class="qa-answer">
            <p>A: 请检查以下几点：</p>
            <ol>
              <li>Token/ID/Secret 是否正确填写</li>
              <li>网络连接是否正常</li>
              <li>查看 NEUXSBOT 应用日志是否有错误信息</li>
              <li>确定机器人已正确添加到对话或群组中</li>
            </ol>
          </div>
        </div>
        
        <div class="qa-item">
          <div class="qa-question">Q: Token 丢失或泄露怎么办？</div>
          <div class="qa-answer">
            <p>A: 在开发者后台重新生成 Secret：</p>
            <ul>
              <li><strong>钉钉</strong>：进入应用 → 凭证与基础信息 → 重置 Client Secret</li>
              <li><strong>飞书</strong>：进入应用 → 凭证与基础信息 → 重置 App Secret</li>
            </ul>
          </div>
        </div>
        
        <div class="qa-item">
          <div class="qa-question">Q: 如何同时配置多个平台的机器人？</div>
          <div class="qa-answer">
            <p>A:</p>
            <ul>
              <li>在 NEUXSBOT 设置中分别配置各平台的凭证</li>
              <li>可以同时启用多个平台的机器人</li>
              <li>每个平台的消息会独立处理</li>
            </ul>
          </div>
        </div>
      </div>
      
      <div class="sub-section">
        <h4>钉钉相关问题</h4>
        
        <div class="qa-item">
          <div class="qa-question">Q: 提示"Stream 连接失败"？</div>
          <div class="qa-answer">
            <ul>
              <li>检查网络是否能访问钉钉 API</li>
              <li>确认 Client ID 和 Client Secret 是否正确</li>
              <li>重启 NEUXSBOT 应用重新建立连接</li>
            </ul>
          </div>
        </div>
        
        <div class="qa-item">
          <div class="qa-question">Q: 机器人无法发送消息？</div>
          <div class="qa-answer">
            <ul>
              <li>检查权限 <code>qyapi_robot_sendmsg</code> 是否已开通</li>
              <li>确定应用已发布且版本为最新</li>
            </ul>
          </div>
        </div>
        
        <div class="qa-item">
          <div class="qa-question">Q: 权限审核需要多久？</div>
          <div class="qa-answer">
            <p>一般情况下会在几分钟内自动通过。如果长时间未通过，可以查看权限审核状态：</p>
            <div class="step-image">
              <img src="/docs-images/docs-dingtalk-19.png" alt="钉钉权限审核状态" />
            </div>
          </div>
        </div>
      </div>
      
      <div class="sub-section">
        <h4>飞书相关问题</h4>
        
        <div class="qa-item">
          <div class="qa-question">Q: 保存事件配置时提示"应用未建立长连接"？</div>
          <div class="qa-answer">
            <ol>
              <li>先在 NEUXSBOT 中配置好飞书 App ID 和 App Secret</li>
              <li>启动 NEUXSBOT 并等待连接建立</li>
              <li>再返回飞书开发者后台保存配置</li>
              <li>可能需要多尝试几次</li>
            </ol>
            <div class="step-image">
              <img src="/docs-images/docs-feishu-18.png" alt="飞书长连接状态" />
            </div>
          </div>
        </div>
        
        <div class="qa-item">
          <div class="qa-question">Q: 机器人权限申请一直在审核中？</div>
          <div class="qa-answer">
            <p>部分敏感权限需要企业管理员审核，可以联系企业管理员加快审核进度。</p>
          </div>
        </div>
      </div>
      
      <div class="sub-section">
        <h4>安全建议</h4>
        
        <div class="security-grid">
          <div class="security-item">
            <h5>1. 保护敏感信息</h5>
            <p>所有 Token、Secret、ID 都应妥善保管，不要将凭证信息提交到公开的代码仓库，定期更换 Token（如有泄露风险）。</p>
          </div>
          <div class="security-item">
            <h5>2. 权限最小化原则</h5>
            <p>只申请必需的权限，定期审查机器人权限使用情况。</p>
          </div>
          <div class="security-item">
            <h5>3. 监控异常行为</h5>
            <p>关注机器人的消息发送频率，设置合理的消息速率限制，及时处理用户反馈的问题。</p>
          </div>
          <div class="security-item">
            <h5>4. 备份配置信息</h5>
            <p>保存所有机器人的配置信息，记录应用 ID 和创建时间，文档化特殊配置和注意事项。</p>
          </div>
        </div>
      </div>
    </div>
    
    <div class="contact-section">
      <h4>技术支持</h4>
      <p>如果在配置过程中遇到问题，可以通过以下方式获取帮助：</p>
      <p><strong>查看官方文档</strong></p>
      <ul>
        <li><strong>钉钉开放平台</strong>：<a href="https://open.dingtalk.com/document" target="_blank">https://open.dingtalk.com/document</a></li>
        <li><strong>飞书开放平台</strong>：<a href="https://open.feishu.cn/document" target="_blank">https://open.feishu.cn/document</a></li>
      </ul>
      <p>如遇到问题，请联系客服邮箱：<a href="mailto:support@neuxsbot.com">support@neuxsbot.com</a></p>
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

.platform-list {
  color: #888;
  margin-bottom: 20px;
  padding-left: 20px;
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

.sub-section {
  margin-bottom: 20px;
}

.sub-section h4 {
  font-size: 14px;
  font-weight: 600;
  margin: 20px 0 10px;
  color: #ccc;
}

.sub-section h5 {
  font-size: 13px;
  font-weight: 600;
  margin: 0 0 8px;
  color: #aaa;
}

.sub-section p {
  color: #888;
  line-height: 1.7;
  margin-bottom: 10px;
  font-size: 14px;
}

.sub-section ul, .sub-section ol {
  color: #888;
  line-height: 1.8;
  margin-bottom: 14px;
  padding-left: 20px;
  font-size: 14px;
}

.sub-section li {
  margin-bottom: 6px;
}

.sub-section a {
  color: #39ff14;
  text-decoration: none;
}

.sub-section a:hover {
  text-decoration: underline;
}

.step-card {
  padding: 20px;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.05);
  border-radius: 12px;
  margin-bottom: 16px;
}

.step-number {
  font-size: 28px;
  font-weight: 700;
  color: #39ff14;
  opacity: 0.6;
  margin-bottom: 12px;
}

.step-content h5 {
  margin: 0 0 10px;
  color: #fff;
  font-size: 15px;
}

.step-content p, .step-content ul, .step-content ol {
  margin: 0;
}

.step-image {
  margin: 14px 0;
  border-radius: 8px;
  overflow: hidden;
  border: 1px solid rgba(255, 255, 255, 0.1);
  background: #0a0a0a;
}

.step-image img {
  width: 100%;
  height: auto;
  display: block;
}

.tip-text {
  color: #666 !important;
  font-size: 13px !important;
  font-style: italic;
}

.tip-text.warning {
  color: #ffc107 !important;
}

.highlight {
  color: #39ff14;
  font-weight: 600;
}

code {
  background: rgba(57, 255, 20, 0.1);
  padding: 2px 6px;
  border-radius: 4px;
  font-family: 'SF Mono', Monaco, 'Courier New', monospace;
  font-size: 12px;
  color: #39ff14;
}

.tip-box {
  display: flex;
  flex-direction: column;
  gap: 14px;
  padding: 18px;
  background: rgba(57, 255, 20, 0.05);
  border: 1px solid rgba(57, 255, 20, 0.1);
  border-radius: 10px;
  margin-top: 20px;
}

.tip-box.warning {
  background: rgba(255, 193, 7, 0.05);
  border-color: rgba(255, 193, 7, 0.2);
}

.tip-box.warning .tip-icon {
  color: #ffc107;
}

.tip-box.warning .tip-content strong {
  color: #ffc107;
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

.tip-content ul, .tip-content ol {
  margin: 0;
  padding-left: 20px;
}

.tip-content .step-image {
  margin: 10px 0;
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

.qa-answer .step-image {
  margin-top: 10px;
}

.security-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 12px;
  margin-top: 14px;
}

.security-item {
  padding: 16px;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.05);
  border-radius: 8px;
}

.security-item h5 {
  margin: 0 0 8px;
  color: #fff;
  font-size: 13px;
}

.security-item p {
  margin: 0;
  font-size: 12px;
  color: #666;
  line-height: 1.6;
}

.contact-section {
  margin-top: 30px;
  padding: 20px;
  background: rgba(57, 255, 20, 0.05);
  border: 1px solid rgba(57, 255, 20, 0.1);
  border-radius: 10px;
}

.contact-section h4 {
  margin: 0 0 10px;
  color: #39ff14;
  font-size: 14px;
}

.contact-section p {
  margin: 0 0 10px;
  color: #888;
  font-size: 13px;
}

.contact-section ul {
  margin: 0 0 10px;
  padding-left: 20px;
  color: #888;
  font-size: 13px;
}

.contact-section a {
  color: #39ff14;
}

@media (max-width: 1024px) {
  .security-grid {
    grid-template-columns: 1fr;
  }
}
</style>
