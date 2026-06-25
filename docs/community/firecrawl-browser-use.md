---
sidebar_position: 4
---

# Firecrawl & Browser Use

> 两个超高星的 Web 交互工具，为 AI Agent 提供网页抓取和浏览器自动化能力

---

## Firecrawl

> 136,600+ Stars | 开源 Web 抓取 API | MCP Server 支持

[firecrawl/firecrawl](https://github.com/firecrawl/firecrawl) 是一个大规模 Web 搜索、抓取和交互 API，能将任意网页转换为干净的 Markdown 或结构化数据，专为 AI Agent 设计。

### 核心能力

| 能力 | 说明 |
| --- | --- |
| **网页抓取** | 将任意网页转为干净 Markdown，覆盖 96% 的网页 |
| **搜索引擎** | 大规模网页搜索，返回结构化结果 |
| **JS 渲染** | 处理 JavaScript 重的页面，无需代理配置 |
| **结构化提取** | 从网页中提取结构化 JSON 数据 |
| **媒体解析** | 解析网页上的 PDF、DOCX 等文件 |
| **交互操作** | 点击、滚动、输入等操作后再提取内容 |
| **MCP Server** | 直接作为 MCP 工具连接任何 AI Agent |

### 安装与使用

**方式一：API 服务（推荐）**

`ash
# 安装 Python SDK
pip install firecrawl-py

# 或安装 Node SDK
npm install @mendable/firecrawl-js
`

**方式二：自托管**

`ash
git clone https://github.com/mendableai/firecrawl.git
cd firecrawl
docker compose up
`

**方式三：MCP Server**

`ash
# 在 Claude Code / Codex 中添加 MCP Server
npx firecrawl-mcp
`

### 使用示例

`python
from firecrawl import FirecrawlApp

app = FirecrawlApp(api_key="your-api-key")

# 抓取网页转为 Markdown
result = app.scrape_url("https://example.com", params={"formats": ["markdown"]})
print(result["markdown"])

# 大规模爬取
result = app.crawl_url("https://example.com", params={
    "limit": 100,
    "scrapeOptions": {"formats": ["markdown"]}
})
`

### 安全评估

- **来源**：Mendable AI，知名开源公司
- **许可证**：AGPL-3.0（开源）
- **风险等级**：低。标准 Web 抓取工具，无恶意行为

---

## Browser Use

> 100,000+ Stars | AI 浏览器自动化 | Python

[browser-use/browser-use](https://github.com/browser-use/browser-use) 让 AI Agent 能像人一样操作浏览器：打开网页、点击按钮、填写表单、截图等。是目前最流行的 AI 浏览器自动化框架。

### 核心能力

| 能力 | 说明 |
| --- | --- |
| **浏览器控制** | 打开 URL、点击、输入、滚动、截图 |
| **视觉理解** | 截图后用多模态模型理解页面内容 |
| **表单填写** | 自动填写登录、注册等表单 |
| **多标签页** | 同时管理多个浏览器标签页 |
| **代理模式** | 支持 HTTP/SOCKS 代理 |
| **模型无关** | 支持 OpenAI、Anthropic、Google 等模型 |

### 安装与使用

`ash
# 安装
pip install browser-use

# 安装 Playwright 浏览器
playwright install chromium
`

### 使用示例

`python
from browser_use import Agent
from langchain_openai import ChatOpenAI

agent = Agent(
    task="Go to GitHub and find the most starred Python repository",
    llm=ChatOpenAI(model="gpt-4o"),
)
result = await agent.run()
print(result)
`

### 典型应用场景

- 自动化网页测试
- 数据采集和监控
- 自动填写表单和审批流程
- 价格比较和竞品监控
- 社交媒体自动化

### 安全评估

- **来源**：Browser Use 团队，活跃开源社区
- **许可证**：MIT（完全开源）
- **风险等级**：低。标准浏览器自动化工具
- **注意事项**：使用时注意遵守目标网站的 robots.txt 和使用条款

### 离线文件

本仓库不包含 Firecrawl 或 Browser Use 的 SKILL.md 文件（它们是工具库而非 Skill 文件），但提供了完整的安装和使用指南。