---
sidebar_position: 6
---

# Vercel 官方 Agent Skills

> 28,100+ Stars | Vercel 工程团队出品 | 10 个高质量 Skills

[vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) 是 Vercel 官方发布的 Agent Skills 集合，涵盖 React/Next.js 最佳实践、Vercel 项目优化、Web 设计规范、文档写作指南等。

## 仓库信息

| 项目 | 内容 |
| --- | --- |
| **仓库** | [github.com/vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |
| **Stars** | 28,100+ |
| **标准** | [Agent Skills](https://agentskills.io) |
| **许可证** | MIT |

## Skills 一览

| Skill | 说明 | 适用场景 |
| --- | --- | --- |
| **vercel-optimize** | 审计 Vercel 项目的成本、性能、可靠性、缓存 | 优化已部署的 Vercel 项目 |
| **react-best-practices** | React/Next.js 性能优化，40+ 条规则 | 编写或审查 React 组件 |
| **web-design-guidelines** | 100+ 条 Web 界面最佳实践规则 | UI 代码审查、无障碍检查 |
| **writing-guidelines** | Vercel 写作手册，80+ 条规则 | 技术文档写作和审查 |
| **composition-patterns** | React 组合模式和组件设计 | React 组件架构设计 |
| **deploy-to-vercel** | Vercel 部署指南和最佳实践 | 项目部署到 Vercel |
| **react-native-skills** | React Native 开发最佳实践 | 移动端 React Native 开发 |
| **react-view-transitions** | React 视图过渡动画 | 页面切换动画实现 |
| **vercel-cli-with-tokens** | Vercel CLI 和 Token 管理 | Vercel 命令行工具使用 |

## 安装方式

### 方式一：npx 安装（推荐）

```bash
npx add-skill vercel-labs/agent-skills
```

### 方式二：手动安装

```bash
git clone https://github.com/vercel-labs/agent-skills.git
# 将需要的 skill 文件夹复制到 Codex 的 skills 目录
```

### 方式三：离线使用

本仓库已包含所有 SKILL.md 文件：`skills/vercel/`

## 使用示例

### 优化 Vercel 项目

```
使用 vercel-optimize skill 审计我的 Vercel 项目，找出可以降低成本的优化点
```

### 审查 React 代码

```
用 react-best-practices skill 审查这个组件的性能问题
```

### 检查 Web 设计规范

```
用 web-design-guidelines skill 检查这个页面的无障碍性和 UX 规范
```

## 安全评估

- **来源**：Vercel 官方工程团队，全球知名前端云平台
- **许可证**：MIT（完全开源）
- **风险等级**：极低。纯指导性 Skill，不执行任何系统操作
- **特点**：所有 Skill 都是只读的审查和建议，不会修改文件或执行命令

## 离线文件

本仓库已包含全部 10 个 Skill 的 SKILL.md 文件：

```
skills/vercel/
  vercel-optimize-SKILL.md
  react-best-practices-SKILL.md
  web-design-guidelines-SKILL.md
  writing-guidelines-SKILL.md
  composition-patterns-SKILL.md
  deploy-to-vercel-SKILL.md
  react-native-skills-SKILL.md
  react-view-transitions-SKILL.md
  vercel-cli-with-tokens-SKILL.md
```