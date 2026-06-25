---
sidebar_position: 2
---

# Anthropic 官方 Skills 合集

> 153,760+ Stars | Anthropic 官方出品 | 17 个高质量 Skills

[anthropics/skills](https://github.com/anthropics/skills) 是 Anthropic 官方维护的 Claude Skills 仓库，也是 Agent Skills 标准的参考实现。涵盖创意设计、文档处理、开发工具、企业通信等多个领域，是目前 Star 数最高的 Skills 仓库（153k+）。

## 仓库信息

| 项目 | 内容 |
| --- | --- |
| **仓库** | [github.com/anthropics/skills](https://github.com/anthropics/skills) |
| **Stars** | 153,760+ |
| **Forks** | 18,132+ |
| **许可证** | 大部分 Apache 2.0，文档类（docx/pdf/pptx/xlsx）为源码可见 |
| **标准** | [Agent Skills](https://agentskills.io) |

## 安装方式

### 方式一：Claude Code 插件市场（推荐）

```bash
# 注册 Anthropic 官方插件市场
/plugin marketplace add anthropics/skills

# 安装示例 Skills 集合
/plugin install example-skills@anthropic-agent-skills

# 安装文档处理 Skills 集合
/plugin install document-skills@anthropic-agent-skills
```

### 方式二：手动安装

将仓库 clone 到本地，然后将需要的 skill 文件夹复制到 Codex 的 skills 目录：

```bash
git clone https://github.com/anthropics/skills.git
# 将 skills/ 下的文件夹复制到 ~/.codex/skills/
```

### 方式三：离线使用

本仓库已包含所有 SKILL.md 文件，路径：`skills/anthropic*/`

## Skills 分类总览

### 创意与设计

| Skill | 说明 | 适用场景 |
| --- | --- | --- |
| **algorithmic-art** | 用 p5.js 创建算法艺术，支持种子随机和交互式参数探索 | 生成艺术、流场、粒子系统 |
| **canvas-design** | 用设计哲学创建视觉艺术，输出 PNG/PDF | 海报、插画、静态设计 |
| **frontend-design** | 前端设计指导，打造独特的视觉风格 | UI 设计、前端页面开发 |
| **slack-gif-creator** | 创建 Slack 优化的动画 GIF | Slack 表情、消息动画 |
| **theme-factory** | 10 套预设主题 + 动态生成主题 | 为幻灯片/文档/页面添加主题 |

### 文档处理

| Skill | 说明 | 适用场景 |
| --- | --- | --- |
| **docx** | Word 文档创建、读取、编辑 | 生成/编辑 .docx 文件 |
| **pdf** | PDF 全功能处理：读取、合并、拆分、水印、表单 | PDF 编辑和处理 |
| **pptx** | PowerPoint 演示文稿创建与编辑 | 生成/编辑 PPT |
| **xlsx** | 电子表格创建、公式、图表、数据清洗 | 处理 Excel/CSV 文件 |

### 开发工具

| Skill | 说明 | 适用场景 |
| --- | --- | --- |
| **claude-api** | Claude API / Anthropic SDK 参考指南 | 模型选择、定价、流式、工具使用 |
| **mcp-builder** | 构建高质量 MCP 服务器的指南 | 开发 MCP 集成工具 |
| **web-artifacts-builder** | 用 React + Tailwind + shadcn/ui 构建复杂前端组件 | 创建多组件 HTML 制品 |
| **webapp-testing** | 用 Playwright 测试本地 Web 应用 | 前端功能测试、截图、调试 |
| **skill-creator** | 创建、改进和评估 Skills | 开发新 Skill |

### 企业与沟通

| Skill | 说明 | 适用场景 |
| --- | --- | --- |
| **brand-guidelines** | 应用 Anthropic 品牌色和排版风格 | 品牌视觉一致性 |
| **doc-coauthoring** | 结构化文档协作工作流 | 技术文档、提案、规格说明 |
| **internal-comms** | 内部沟通模板（状态报告、领导更新、FAQ 等） | 企业内部通信 |

## 使用示例

### 创建 Word 文档

```
使用 docx skill 创建一份项目提案文档，包含封面页、目录、正文章节
```

### 生成 PDF 报告

```
用 pdf skill 将这份 markdown 文件转换为格式化的 PDF 报告，添加页眉页脚
```

### 创建演示文稿

```
用 pptx skill 为这个产品发布创建 10 页演示文稿，风格要专业简洁
```

### 创建算法艺术

```
用 algorithmic-art skill 创建一个流场艺术作品，颜色方案使用海洋蓝
```

### 测试 Web 应用

```
用 webapp-testing skill 启动本地服务器并测试登录页面的功能
```

### 构建 MCP 服务器

```
用 mcp-builder skill 为这个 REST API 创建一个 MCP 服务器，暴露搜索和创建工具
```

## 离线文件

本仓库已包含全部 17 个 Skill 的 SKILL.md 文件：

```
skills/anthropics/
  ├── algorithmic-art/SKILL.md
  ├── brand-guidelines/SKILL.md
  ├── canvas-design/SKILL.md
  ├── claude-api/SKILL.md
  ├── doc-coauthoring/SKILL.md
  ├── docx/SKILL.md
  ├── frontend-design/SKILL.md
  ├── internal-comms/SKILL.md
  ├── mcp-builder/SKILL.md
  ├── pdf/SKILL.md
  ├── pptx/SKILL.md
  ├── skill-creator/SKILL.md
  ├── slack-gif-creator/SKILL.md
  ├── theme-factory/SKILL.md
  ├── web-artifacts-builder/SKILL.md
  ├── webapp-testing/SKILL.md
  └── xlsx/SKILL.md
```

## 相关资源

- [Agent Skills 标准](https://agentskills.io)
- [Anthropic Skills 官方文档](https://support.claude.com/en/articles/12512176-what-are-skills)
- [创建自定义 Skills](https://support.claude.com/en/articles/12512198-creating-custom-skills)
- [Notion Skills for Claude](https://www.notion.so/notiondevs/Notion-Skills-for-Claude-28da4445d27180c7af1df7d8615723d0)
