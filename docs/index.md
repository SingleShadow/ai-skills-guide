---
layout: home
hero:
  name: "Codex Skills 大全"
  text: "已验证的 Skill 资源目录"
  tagline: 收录 120+ 个已验证的 Codex Skills，涵盖开发、设计、视频、文档、安全、学术等领域
  actions:
    - theme: brand
      text: 快速开始
      link: /getting-started
    - theme: alt
      text: 浏览所有 Skills
      link: /official/
features:
  - title: 官方 Curated Skills
    details: 39 个经过 OpenAI 官方验证的 Skills，覆盖开发部署、Figma 设计、Notion 协作、安全审计等场景
    link: /official/
  - title: Anthropic 官方 Skills
    details: 153k+ Stars，17 个 Claude Skills 标准实现：文档处理、创意设计、MCP 构建、前端测试
    link: /community/anthropic-skills
  - title: 插件生态 Skills
    details: 浏览器控制、Canva 设计、HyperFrames 视频、文档处理等插件扩展 Skills
    link: /plugins/
  - title: Firecrawl & Browser Use
    details: 136k+ / 100k+ Stars，Web 抓取 API 和 AI 浏览器自动化框架
    link: /community/firecrawl-browser-use
  - title: Superpowers 开发流程
    details: 软件开发全流程 Skills：头脑风暴、TDD、调试、代码评审、Git 工作流
    link: /superpowers/
  - title: Vercel 官方 Skills
    details: 28k+ Stars，React/Next.js 最佳实践、项目优化、设计规范、写作指南
    link: /community/vercel-skills
  - title: Karpathy 系 Skills
    details: Karpathy 编码行为准则 + LLM Wiki 知识库系统，让 AI 编程更可靠
    link: /community/karpathy-skills
  - title: 社区热门仓库
    details: Firecrawl、Anthropic、Browser Use、awesome 列表等 15+ 社区仓库
    link: /community/
  - title: 安全使用指南
    details: 内置 Skill 安全评估标准和高风险特征检查清单
    link: /community/awesome-lists
  - title: 离线可用
    details: 所有收录的 Skill 文件打包在仓库中，clone 即可用，不依赖外网
    link: /install
  - title: 一键安装
    details: 提供 install-all 脚本，一条命令批量安装所有 Skills 到 Codex 环境
    link: /install
  - title: last30days AI 舆情调研
    details: 130k+ Stars，从 Reddit、X、YouTube 等 10+ 平台抓取过去 30 天的真实讨论和趋势
    link: /community/last30days
---

<script setup>
import Last30DaysNews from './.vitepress/theme/components/Last30DaysNews.vue'
</script>

<Last30DaysNews />
