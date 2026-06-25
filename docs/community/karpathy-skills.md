---
sidebar_position: 3
---

# Karpathy 系 Skills 生态

> 基于 Andrej Karpathy 编程理念的 Coding Agent 指南与 LLM 知识库系统

Andrej Karpathy（前 Tesla AI 总监、OpenAI 联合创始人）关于 LLM 编程行为的公开观点启发了多个高质量的 Agent Skills 项目。这些 Skills 将 Karpathy 的编码哲学转化为可直接使用的 Agent 行为准则。

## 仓库一览

| 仓库 | Stars | 说明 |
| --- | --- | --- |
| [Astro-Han/karpathy-llm-wiki](https://github.com/Astro-Han/karpathy-llm-wiki) | 1,182+ | LLM 知识库系统：让 AI 编织和维护结构化 Wiki |
| [duolahypercho/andrej-karpathy-skills](https://github.com/duolahypercho/andrej-karpathy-skills) | 125+ | Karpathy 编程准则的 Codex 原生实现 |

---

## 1. Andrej Karpathy Skill（编码准则）

> 来源：[duolahypercho/andrej-karpathy-skills](https://github.com/duolahypercho/andrej-karpathy-skills)

将 Karpathy 的四大编码准则转化为 Codex 可执行的行为规范，解决 AI 编码中的常见问题：假设过多、过度构建、无关修改、虚假完成。

### 四大准则

| 准则 | 核心要求 |
| --- | --- |
| **先思考再编码** | 编辑前明确任务、暴露假设、命名权衡、必要时提问 |
| **保持简单** | 实现满足当前需求的最小方案，不添加未要求的功能 |
| **精确修改** | 只改需要改的文件，匹配本地风格，不顺带重格式化 |
| **定义目标并验证** | 将请求转化为可检查的结果，确认行为符合预期 |

### 安装方式

**方式一：Codex 插件（推荐）**

```bash
git clone https://github.com/duolahypercho/andrej-karpathy-skills.git
# Codex 会自动读取 .codex-plugin/plugin.json 和 skills/ 目录
```

**方式二：Custom Instructions（免安装）**

1. 打开仓库中的 `instruction.md`
2. 复制 "Paste the block below" 下的内容
3. 粘贴到 Codex Settings -> Custom Instructions

**方式三：离线使用**

本仓库已包含 SKILL.md 文件：`skills/karpathy/andrej-karpathy-skill/SKILL.md`

### 使用示例

安装后，当你在 Codex 中编写、审查或重构代码时，Skill 会自动激活：

```text
用户：修复登录页面的验证 bug
Codex（激活 Skill 后的响应模式）：
Assumption: 用户指的是前端表单验证，不是后端 token 验证
Changed: 仅修改 LoginForm.tsx 中的 email 正则表达式
Verified: 手动测试通过，邮箱格式正确验证通过
Remaining risk: 未覆盖的边缘情况：带加号的邮箱地址
```

### 核心行为

**响应模式** — 非平凡编码任务使用标准化格式：

```text
Assumption:    ← 说明你的理解
Changed:       ← 列出实际修改
Verified:      ← 描述验证方式
Remaining risk: ← 指出未覆盖的风险
```

**主动回退** — 当请求会导致不必要的范围扩大时，主动建议更小的路径：

- 窄 bug 的大范围重写 → 建议最小修复
  - 单用例的新抽象 → 建议内联实现
- 行为修改中混入格式化扫荡 → 建议分离

---

## 2. Karpathy LLM Wiki（知识库系统）

> 来源：[Astro-Han/karpathy-llm-wiki](https://github.com/Astro-Han/karpathy-llm-wiki)

基于 [Karpathy 的 LLM Wiki 想法](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)，让 AI 编织和维护结构化知识库。新源编译为持久化的 Wiki 页面，查询时引用已有知识页而非重新检索。

### LLM Wiki vs RAG

| 方式 | 知识存储 | 合成时机 | 适合场景 |
| --- | --- | --- | --- |
| **RAG** | 原始块和嵌入 | 查询时 | 大规模语料的宽泛检索 |
| **LLM Wiki** | 精编 Markdown 页面 | 编译和维护时 | 持续积累的知识、摘要和交叉引用 |

### 三个操作

| 操作 | 功能 | 输出 |
| --- | --- | --- |
| **Ingest（编译）** | 收集源材料到 `raw/`，编译为 Wiki 页面 | 新建或更新 Wiki 页面 |
| **Query（查询）** | 搜索 Wiki 并引用来源回答 | 带引用的 Markdown 回答 |
| **Lint（检查）** | 检查索引完整性和链接健康度 | 自动修复 + 报告问题 |

### 安装方式

**方式一：npx 安装（推荐）**

```bash
npx add-skill Astro-Han/karpathy-llm-wiki
```

**方式二：手动安装到 Codex**

```bash
# 将 skill 复制到 Codex skills 目录
mkdir -p ~/.agents/skills/karpathy-llm-wiki
cp -r SKILL.md references/ ~/.agents/skills/karpathy-llm-wiki/
```

**方式三：离线使用**

本仓库已包含 SKILL.md 文件：`skills/karpathy/karpathy-llm-wiki/SKILL.md`

### 使用示例

**编译源材料**

```
Ingest this article: https://example.com/attention-is-all-you-need
```

**查询知识库**

```
What do I know about attention mechanisms?
```

**维护 Wiki 健康**

```
Lint my wiki
```

### 知识库目录结构

```text
your-project/
  raw/            ← 不可变的源材料
    topic/
      2026-04-03-source-article.md
  wiki/           ← AI 维护的编译知识页
    topic/
      concept-name.md
    index.md      ← 全局目录
    log.md        ← 追加式操作日志
```

### 生产数据参考

截至 2026 年 4 月的生产知识库统计：

- 94 篇 Wiki 文章，分布在 13 个主题目录
- 99 份源材料已编译
- 过去 7 天 87 条操作日志

---

## 快速对比

| 维度 | Karpathy Skill | LLM Wiki |
| --- | --- | --- |
| **用途** | 改善编码 Agent 行为 | 构建和维护结构化知识库 |
| **适用场景** | 写代码、审代码、修 bug | 研究、学习、项目知识管理 |
| **工作方式** | 行为准则注入 | 源材料编译为 Wiki 页面 |
| **安装方式** | Git clone 或 Custom Instructions | npx add-skill 或手动复制 |
| **兼容工具** | Codex | Claude Code、Cursor、Codex、OpenCode |

## 离线文件

本仓库已包含以下 SKILL.md 文件：

```
skills/karpathy/
  ├── andrej-karpathy-skill/SKILL.md
  └── karpathy-llm-wiki/SKILL.md
```

## 相关资源

- [Karpathy: LLM Wiki Idea](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
- [Agent Skills 标准](https://agentskills.io)
- [lucasastorian/llmwiki](https://github.com/lucasastorian/llmwiki)
- [atomicmemory/llm-wiki-compiler](https://github.com/atomicmemory/llm-wiki-compiler)
