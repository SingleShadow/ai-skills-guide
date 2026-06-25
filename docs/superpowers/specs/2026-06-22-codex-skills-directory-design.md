---
title: "Codex Skills 大全 - 设计文档"
date: 2026-06-22
status: draft
---

# Codex Skills 大全

## 项目概述

一个面向所有 Codex 用户的中文 skill 资源目录，收录已存在的、可验证的 Codex skills，按行业和用途分类，提供功能说明、安装方式、使用示例和直接链接。同时输出为：
1. **GitHub Markdown 仓库** -- 纯 Markdown，开发者友好，方便 fork/star
2. **静态网页** -- 由 VitePress 从 Markdown 自动生成，支持搜索、分类导航，部署到 GitHub Pages
3. **Skill 离线包** -- 所有收录的 skill 文件直接打包在仓库中，clone 即可用
4. **一键安装脚本** -- 提供批量安装脚本，支持在线自动下载所有 skill

## 设计原则

- **只收录已存在的、能验证的 skill** -- 不做理想化推荐，不列不存在的东西
- **全中文内容** -- skill 名称和链接保持英文，说明文字全部中文
- **一份内容两种输出** -- Markdown 是唯一内容源，网页自动从 Markdown 构建
- **零门槛访问** -- GitHub 仓库直接可看 Markdown；GitHub Pages 链接打开精美网页；构建产物可离线使用
- **Skill 文件直接打包** -- 所有收录的 skill（SKILL.md、scripts、references、assets）直接存放在仓库中，clone 后即可使用，不依赖外网
- **一键安装脚本** -- 同时提供在线安装脚本，一条命令自动下载所有 skill 到本地 Codex 环境

## Skill 来源

### 1. OpenAI 官方 Curated Skills（39 个）

来源：https://github.com/openai/skills/tree/main/skills/.curated

**开发与部署：**
- aspnet-core -- ASP.NET Core 项目开发
- cloudflare-deploy -- Cloudflare 平台部署
- netlify-deploy -- Netlify 平台部署
- render-deploy -- Render 平台部署
- vercel-deploy -- Vercel 平台部署
- cli-creator -- 命令行工具创建
- migrate-to-codex -- 项目迁移到 Codex
- yeet -- 快速项目脚手架

**设计与前端：**
- figma -- Figma 基础操作
- figma-code-connect-components -- Figma 组件代码连接
- figma-create-design-system-rules -- Figma 设计系统规则创建
- figma-create-new-file -- Figma 新建文件
- figma-generate-design -- Figma 设计生成
- figma-generate-library -- Figma 组件库生成
- figma-implement-design -- Figma 设计实现
- figma-use -- Figma 使用指南
- screenshot -- 网页截图

**项目管理与协作：**
- linear -- Linear 项目管理
- notion-knowledge-capture -- Notion 知识捕获
- notion-meeting-intelligence -- Notion 会议智能
- notion-research-documentation -- Notion 研究文档
- notion-spec-to-implementation -- Notion 规格到实现
- chatgpt-apps -- ChatGPT 应用开发
- define-goal -- 目标定义
- hatch-pet -- 宠物养成（趣味类）
- jupyter-notebook -- Jupyter Notebook 操作

**GitHub 与安全：**
- gh-address-comments -- GitHub 评论处理
- gh-fix-ci -- GitHub CI 修复
- security-best-practices -- 安全最佳实践
- security-ownership-map -- 安全所有权映射
- security-threat-model -- 安全威胁建模
- sentry -- Sentry 错误监控集成
- openai-docs -- OpenAI 文档查询

**测试与浏览器：**
- playwright -- Playwright 浏览器自动化
- playwright-interactive -- Playwright 交互式自动化

**文档与媒体：**
- pdf -- PDF 文件处理
- speech -- 语音合成
- transcribe -- 语音转文字

### 2. OpenAI 插件生态 Skills

**浏览器与桌面控制（openai-bundled）：**
- control-in-app-browser -- Codex 内置浏览器控制
- control-chrome -- Chrome 浏览器控制
- computer-use -- Windows 桌面应用控制

**设计与视频（openai-curated）：**
- canva-branded-presentation -- Canva 品牌演示文稿
- canva-resize-for-all-social-media -- Canva 社交媒体尺寸调整
- canva-translate-design -- Canva 设计翻译
- hyperframes -- HyperFrames 视频合成
- hyperframes-cli -- HyperFrames 命令行工具
- hyperframes-registry -- HyperFrames 注册表
- website-to-hyperframes -- 网站转视频
- gsap -- GSAP 动画参考
- remotion-best-practices -- Remotion 视频最佳实践

**文档处理（openai-primary-runtime）：**
- documents -- Word 文档创建与编辑
- pdf -- PDF 读取、创建、渲染
- presentations -- PowerPoint 演示文稿
- spreadsheets -- Excel 电子表格

### 3. Superpowers 插件 Skills（14 个）

**软件开发流程：**
- brainstorming -- 创意构思与设计探索（必须在任何创建性工作前使用）
- writing-plans -- 实现计划编写
- test-driven-development -- 测试驱动开发
- systematic-debugging -- 系统化调试
- verification-before-completion -- 完成前验证
- dispatching-parallel-agents -- 并行子任务分派
- executing-plans -- 计划执行
- subagent-driven-development -- 子代理驱动开发

**代码评审与 Git：**
- requesting-code-review -- 请求代码评审
- receiving-code-review -- 接收代码评审
- finishing-a-development-branch -- 开发分支完成
- using-git-worktrees -- Git Worktree 使用

**Skill 管理：**
- writing-skills -- 编写 Skill
- using-superpowers -- 使用 Superpowers

### 4. 系统内置 Skills（来自 codex-primary-runtime）

- imagegen -- AI 图像生成与编辑
- openai-docs -- OpenAI 文档查询
- plugin-creator -- 插件创建
- skill-creator -- Skill 创建指南
- skill-installer -- Skill 安装工具

### 5. 社区热门 Skills 仓库

| 仓库 | Stars | 说明 |
| --- | --- | --- |
| [ComposioHQ/awesome-codex-skills](https://github.com/ComposioHQ/awesome-codex-skills) | 14k+ | 最大的 Codex skills 合集，涵盖工作流自动化 |
| [Imbad0202/academic-research-skills-codex](https://github.com/Imbad0202/academic-research-skills-codex) | 4.4k+ | 学术研究全套 skills |
| [skills-directory/skill-codex](https://github.com/skills-directory/skill-codex) | 1.3k+ | 将 prompt 委派给 Codex 的 skill |
| [am-will/codex-skills](https://github.com/am-will/codex-skills) | 951 | Codex skills 合集 |
| [zLanqing/codex-claude-academic-skills](https://github.com/zLanqing/codex-claude-academic-skills) | 891 | 中文面向学术科研的 skills |
| [AAASS554/codex-academic-paper-skills](https://github.com/AAASS554/codex-academic-paper-skills) | 502 | 学术论文技能 |
| [jMerta/codex-skills](https://github.com/jMerta/codex-skills) | 130 | Codex CLI skills 目录 |
| [Epsilon617/Codex-Academic-Skills](https://github.com/Epsilon617/Codex-Academic-Skills) | 119 | 研究导向 skills |
| [proflead/codex-skills-library](https://github.com/proflead/codex-skills-library) | 112 | 可复用的开发者 skills 库 |
| [moonlarry/codex-paper-skills](https://github.com/moonlarry/codex-paper-skills) | 91 | Codex 运行规范及写论文 skills |
| [rbrown101010/codex-marketing-skills](https://github.com/rbrown101010/codex-marketing-skills) | 79 | 营销与内容创作 skills |

## 目录结构

```
complete_skills_guide/
+-- docs/                          # VitePress 文档源
|   +-- skills/                    # 所有收录的 skill 文件（离线包）
|   |   +-- curated/               # OpenAI 官方 curated skills
|   |   |   +-- aspnet-core/
|   |   |   +-- cloudflare-deploy/
|   |   |   +-- ... (每个 skill 一个目录)
|   |   +-- plugins/               # 插件生态 skills
|   |   +-- superpowers/           # Superpowers 插件 skills
|   |   +-- system/                # 系统内置 skills
|   +-- .vitepress/
|   |   +-- config.ts              # VitePress 配置
|   +-- index.md                   # 首页
|   +-- getting-started.md         # 快速开始
|   +-- install.md                 # 一键安装说明
|   +-- official/
|   |   +-- index.md               # 官方 skills 总览
|   |   +-- development.md         # 开发与部署类
|   |   +-- design.md              # 设计与前端类
|   |   +-- project-management.md  # 项目管理类
|   |   +-- github-security.md     # GitHub 与安全类
|   |   +-- testing-browser.md     # 测试与浏览器类
|   |   +-- document-media.md      # 文档与媒体类
|   +-- plugins/
|   |   +-- index.md               # 插件生态总览
|   |   +-- browser-control.md     # 浏览器与桌面控制
|   |   +-- design-video.md        # 设计与视频
|   |   +-- document-processing.md # 文档处理
|   +-- superpowers/
|   |   +-- index.md               # Superpowers 总览
|   |   +-- dev-workflow.md        # 开发流程
|   |   +-- code-review-git.md     # 代码评审与 Git
|   |   +-- skill-management.md    # Skill 管理
|   +-- system/
|   |   +-- index.md               # 系统内置 skills
|   +-- community/
|       +-- index.md               # 社区 skills 总览
|       +-- repos.md               # 热门社区仓库列表
+-- scripts/
|   +-- install-all.sh             # Linux/Mac 一键安装
|   +-- install-all.ps1            # Windows 一键安装
+-- README.md                      # GitHub 首页
+-- package.json                   # Node.js 依赖
+-- .github/
    +-- workflows/
        +-- deploy.yml             # GitHub Pages 自动部署
```

## 每个 Skill 的信息格式

每个 skill 条目包含以下字段：

| 字段 | 说明 |
| --- | --- |
| 名称 | skill 的英文名称 |
| 一句话描述 | 这个 skill 是干什么的 |
| 详细说明 | 功能描述、适用场景 |
| 来源 | 官方 / 插件 / 社区 + 链接 |
| 安装方式 | 命令行安装命令或手动安装步骤 |
| 离线路径 | 仓库中 skill 文件的本地路径 |
| 使用示例 | 典型使用场景和 prompt 示例 |
| 标签 | 分类标签，便于筛选 |

## 网页功能设计

### 首页

- 标题 + 简介
- 统计数据（收录 skill 数量、来源数量）
- 快速开始引导

### 分类导航

- 左侧栏：按来源分类（官方 / 插件 / Superpowers / 系统 / 社区）
- 标签筛选：按用途（开发、设计、视频、文档、安全、学术 等）
- 搜索：VitePress 内置全文搜索

### Skill 展示

- 每个分类一页，卡片式布局
- 卡片信息：名称、描述、来源标签、安装命令
- 详细说明、使用示例、相关链接
- 提供在线安装命令和离线本地路径两种使用方式

## 技术方案

- **静态站点**：VitePress（Vue 驱动，Markdown 优先）
- **部署**：GitHub Actions + GitHub Pages
- **搜索**：VitePress 内置 local search
- **主题**：默认主题 + 自定义 CSS 微调
- **构建产物**：纯静态 HTML/CSS/JS，可离线使用
- **Skill 打包**：所有 skill 文件直接存放在 `docs/skills/` 目录下
- **安装脚本**：`scripts/install-all.sh`（Linux/Mac）和 `scripts/install-all.ps1`（Windows），一条命令批量安装

## 内容维护流程

1. 贡献者 fork 仓库
2. 在对应分类的 Markdown 文件中添加 skill 条目
3. 将对应的 skill 文件下载到 `docs/skills/` 对应目录
4. 提交 PR
5. 合并后 GitHub Actions 自动构建部署网页

## 范围边界

- **包含**：已存在的、可验证的 Codex skills（官方 + 插件 + 系统 + 社区）
- **不包含**：尚未发布的 skill、理想化推荐、非 Codex 生态的 AI 工具
- **不做**：skill 的二次开发、fork 改造、教程编写（只做目录和索引）

## 成功标准

1. GitHub 仓库 Markdown 在 GitHub 上渲染良好，目录清晰
2. GitHub Pages 网页可搜索、可筛选、加载快
3. 收录的所有 skill 都有有效链接
4. 所有收录的 skill 文件打包在仓库中，clone 后可直接使用
5. 安装脚本可一键将所有 skill 安装到 Codex 环境
6. 中文说明准确、简洁
7. 社区贡献者只需会写 Markdown 就能提交新 skill

## 开放问题

1. GitHub Pages 部署需要在仓库设置中启用 Pages 功能
2. 社区 skills 仓库的数量可能随时间变化，需要定期更新
3. 部分 skill 的安装依赖特定 Codex CLI 版本
4. skill 文件打包会增加仓库体积，需要考虑 Git LFS 或子模块方案
