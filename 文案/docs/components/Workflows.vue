<template>
  <section id="workflows" class="docs-section">
    <h2 class="section-title">典型工作流</h2>
    <p>以下是一些真实场景的完整工作流程，帮助你快速上手。</p>
    
    <div id="workflow-1" class="subsection">
      <div class="workflow-card">
        <div class="workflow-header">
          <span class="workflow-badge">场景 1</span>
          <h3>数据分析报告生成</h3>
        </div>
        <div class="workflow-body">
          <p><strong>任务：</strong>老板要一份上月销售数据的分析报告</p>
          
          <div class="workflow-steps">
            <h4>步骤：</h4>
            <ol>
              <li>启用 xlsx 和 docx 技能</li>
              <li>上传销售数据 Excel 文件</li>
              <li>在对话框输入：「分析这份销售数据，找出 Top 10 产品和销售趋势，生成包含图表的 Word 报告」</li>
            </ol>
          </div>
          
          <div class="workflow-auto">
            <h4>AI 会自动：</h4>
            <ul>
              <li>读取并分析 Excel 数据</li>
              <li>计算关键指标（同比、环比等）</li>
              <li>生成趋势图和柱状图</li>
              <li>输出格式规范的 Word 报告</li>
            </ul>
          </div>
          
          <p class="workflow-tip">如果需要调整，继续对话：「把图表改成饼图，并增加产品分类统计」</p>
          
          <div class="workflow-time">
            <i class='bx bx-time'></i>
            <span>预计耗时：5-10 分钟（传统方式可能需要 1-2 小时）</span>
          </div>
        </div>
      </div>
    </div>
    
    <div id="workflow-2" class="subsection">
      <div class="workflow-card">
        <div class="workflow-header">
          <span class="workflow-badge">场景 2</span>
          <h3>快速开发前端组件</h3>
        </div>
        <div class="workflow-body">
          <p><strong>任务：</strong>为项目开发一个用户管理页面</p>
          
          <div class="workflow-steps">
            <h4>步骤：</h4>
            <ol>
              <li>启用 frontend-design 和 web-search 技能</li>
              <li>描述需求：「创建一个用户管理页面，包含：用户列表展示（表格形式）、搜索和筛选功能、新增/编辑用户的弹窗。使用 React + TypeScript，UI 风格参考 Ant Design」</li>
            </ol>
          </div>
          
          <div class="workflow-auto">
            <h4>AI 会生成完整的组件代码</h4>
          </div>
          
          <p class="workflow-tip">查看代码后，如果需要修改：「表格加上分页功能，每页显示 20 条」<br>「弹窗表单增加邮箱验证」</p>
          
          <p>将生成的代码复制到项目中测试</p>
          
          <div class="workflow-time">
            <i class='bx bx-time'></i>
            <span>预计耗时：10-15 分钟（传统开发可能需要半天）</span>
          </div>
        </div>
      </div>
    </div>
    
    <div id="workflow-3" class="subsection">
      <div class="workflow-card">
        <div class="workflow-header">
          <span class="workflow-badge">场景 3</span>
          <h3>自动化测试脚本编写</h3>
        </div>
        <div class="workflow-body">
          <p><strong>任务：</strong>为登录流程编写 E2E 测试</p>
          
          <div class="workflow-steps">
            <h4>步骤：</h4>
            <ol>
              <li>启用 playwright 技能</li>
              <li>提供登录页面的 URL 和测试需求：「为 https://example.com/login 编写自动化测试：测试正常登录流程、测试错误提示（用户名或密码错误）、测试记住密码功能」</li>
            </ol>
          </div>
          
          <div class="workflow-auto">
            <h4>AI 会生成完整的 Playwright 测试脚本</h4>
          </div>
          
          <p>运行脚本验证功能</p>
          <p class="workflow-tip">根据测试结果调整：「增加登录超时的测试用例」</p>
          
          <div class="workflow-time">
            <i class='bx bx-time'></i>
            <span>预计耗时：5-8 分钟（手写可能需要 30 分钟以上）</span>
          </div>
        </div>
      </div>
    </div>
    
    <div id="workflow-4" class="subsection">
      <div class="workflow-card">
        <div class="workflow-header">
          <span class="workflow-badge">场景 4</span>
          <h3>多格式文档转换</h3>
        </div>
        <div class="workflow-body">
          <p><strong>任务：</strong>将 PDF 合同内容提取并整理成 Excel 表格</p>
          
          <div class="workflow-steps">
            <h4>步骤：</h4>
            <ol>
              <li>启用 pdf 和 xlsx 技能</li>
              <li>上传 PDF 合同文件</li>
              <li>输入需求：「提取这份合同中的所有条款和金额信息，整理成 Excel 表格，包含：条款编号、内容、金额、备注」</li>
            </ol>
          </div>
          
          <div class="workflow-auto">
            <h4>AI 会：</h4>
            <ul>
              <li>读取 PDF 内容</li>
              <li>识别关键信息</li>
              <li>结构化输出到 Excel</li>
            </ul>
          </div>
          
          <p>导出 Excel 文件供团队使用</p>
          
          <div class="workflow-time">
            <i class='bx bx-time'></i>
            <span>预计耗时：3-5 分钟（手动复制粘贴可能需要 20-30 分钟）</span>
          </div>
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
  margin-bottom: 40px;
  scroll-margin-top: 24px;
}

.subsection p {
  color: #888;
  line-height: 1.7;
  margin-bottom: 14px;
  font-size: 14px;
}

.workflow-card {
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.05);
  border-radius: 12px;
  overflow: hidden;
}

.workflow-header {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 16px 20px;
  background: rgba(255, 255, 255, 0.02);
  border-bottom: 1px solid rgba(255, 255, 255, 0.05);
}

.workflow-badge {
  padding: 3px 8px;
  background: rgba(57, 255, 20, 0.1);
  border-radius: 4px;
  font-size: 10px;
  font-weight: 600;
  color: #39ff14;
}

.workflow-header h3 {
  margin: 0;
  color: #fff;
  font-size: 15px;
}

.workflow-body {
  padding: 20px;
}

.workflow-body > p {
  margin-bottom: 14px;
}

.workflow-steps {
  margin: 14px 0;
}

.workflow-steps h4, .workflow-auto h4 {
  font-size: 14px;
  font-weight: 600;
  color: #ccc;
  margin-bottom: 8px;
}

.workflow-auto {
  margin: 14px 0;
  padding: 12px;
  background: rgba(57, 255, 20, 0.05);
  border-radius: 8px;
}

.workflow-auto h4 {
  margin: 0 0 8px;
  color: #39ff14;
}

.workflow-auto ul, .workflow-steps ol {
  color: #888;
  line-height: 1.8;
  padding-left: 20px;
  font-size: 14px;
}

.workflow-tip {
  font-size: 13px;
  color: #aaa;
  padding: 10px;
  background: rgba(255, 255, 255, 0.02);
  border-radius: 6px;
}

.workflow-time {
  display: flex;
  align-items: center;
  gap: 8px;
  font-size: 12px;
  color: #39ff14;
  margin: 0;
  margin-top: 14px;
}
</style>
