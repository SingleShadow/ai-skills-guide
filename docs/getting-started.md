# 快速开始

## 什么是 Skill？

Skill 是 Codex 的扩展能力包。它通过提供专业化的知识、工作流程和工具指令，将 Codex 从通用助手转变为特定领域的专家。

**Skill 能做什么：**
- 提供特定领域的工作流程（如 PDF 处理、Figma 设计、测试驱动开发）
- 集成第三方工具和 API（如 Playwright、Sentry、Linear）
- 封装可复用的脚本和资源文件
- 定义标准化的操作流程

## Skill 的结构

```
skill-name/
  SKILL.md          # 核心指令文件（必须）
  agents/           # UI 元数据（可选）
  scripts/          # 可执行脚本（可选）
  references/       # 参考文档（可选）
  assets/           # 资源文件（可选）
```

## 如何使用 Skill

### 方式一：在线安装（推荐）

通过 Codex 的 skill-installer 从 GitHub 安装：

```bash
# 在 Codex 中直接使用
使用 skill-installer 安装 playwright
```

### 方式二：离线使用

本仓库包含了所有收录的 Skill 文件，位于 `docs/skills/` 目录下。你可以：

1. Clone 本仓库
2. 将需要的 Skill 目录复制到你的 `$CODEX_HOME/skills/` 目录
3. 重启 Codex 即可使用

### 方式三：一键安装

使用提供的安装脚本批量安装所有 Skills：

```bash
# Linux / Mac
./scripts/install-all.sh

# Windows
.\scripts\install-all.ps1
```

详见 [安装说明](/install)。

## 浏览 Skills

按照来源和用途分类浏览：

- [官方 Curated Skills](/official/) — OpenAI 官方验证的 39 个 Skills
- [插件生态 Skills](/plugins/) — 浏览器控制、设计、视频等插件扩展
- [Superpowers](/superpowers/) — 软件开发全流程 Skills
- [系统内置](/system/) — Codex 运行时内置的 Skills
- [社区贡献](/community/) — 社区热门 Skills 仓库

