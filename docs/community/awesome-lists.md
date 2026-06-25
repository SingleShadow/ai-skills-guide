---
sidebar_position: 5
---

# Skill 资源合集

> 精选的 Skills 仓库目录，帮你发现各领域的高质量 Agent Skills

---

## awesome-claude-skills

> 65,500+ Stars | 最大的 Claude Skills 合集 | ComposioHQ

[ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) 是目前最大的 Claude/Codex Skills 策展列表，涵盖开发、设计、安全、DevOps 等多个领域的 Skills 资源。

### 内容分类

| 分类 | 说明 |
| --- | --- |
| **开发工具** | 代码生成、测试、调试、CI/CD 相关 Skills |
| **设计与前端** | UI 设计、组件生成、样式系统 Skills |
| **文档处理** | PDF、Word、PPT、Excel 处理 Skills |
| **安全审计** | 代码安全扫描、漏洞检测 Skills |
| **DevOps** | 部署、监控、基础设施管理 Skills |
| **数据分析** | 数据处理、可视化、报告生成 Skills |

### 如何使用

1. 浏览仓库中的分类列表
2. 找到感兴趣的 Skill 链接
3. 按照各 Skill 的说明安装到你的环境

### 安全提示

> awesome 列表中的 Skills 来自不同作者，安全性参差不齐。建议：
> - 优先选择知名组织（Anthropic、Vercel、Cloudflare 等）发布的 Skills
> - 安装前检查 Skill 的 SKILL.md 内容，确认没有可疑指令
> - 避免安装要求过高权限或访问敏感数据的 Skill

### 链接

- [GitHub](https://github.com/ComposioHQ/awesome-claude-skills)

---

## awesome-agent-skills

> 26,000+ Stars | 1424+ Skills | VoltAgent

[VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) 收录了 1424+ 个经过人工筛选的 Agent Skills，来自 Anthropic、Google、Vercel、Stripe、Cloudflare 等官方团队以及社区贡献。

### 官方团队贡献

| 团队 | 领域 |
| --- | --- |
| **Anthropic** | Claude 官方 Skills |
| **Vercel** | Next.js、React 优化 |
| **Google Gemini** | Gemini 模型集成 |
| **Stripe** | 支付集成 |
| **Cloudflare** | 边缘计算、Workers |
| **Netlify** | 部署和 Hosting |
| **Sentry** | 错误监控 |
| **Hugging Face** | ML 模型集成 |
| **Figma** | 设计工具集成 |
| **Microsoft** | Azure 和 Copilot |

### 兼容工具

Claude Code、Codex、Cursor、GitHub Copilot、OpenCode、Windsurf、Gemini CLI 等主流 AI 编码工具。

### 安全提示

> 此列表明确标注"Hand-picked, not AI-slop generated"（人工筛选，非 AI 批量生成），质量相对可靠。但仍建议：
> - 优先选择带有官方团队标记的 Skills
> - 检查 Skill 的实际代码和指令内容
> - 注意 Skill 是否要求不必要的系统权限

### 链接

- [GitHub](https://github.com/VoltAgent/awesome-agent-skills)

---

## 安全使用指南

### 评估 Skill 安全性的检查清单

1. **来源可信**：是否来自知名组织或有良好声誉的开发者
2. **代码透明**：SKILL.md 中的指令是否清晰可读，没有混淆内容
3. **权限合理**：是否要求超出其功能所需的系统权限
4. **无外部调用**：是否在未告知的情况下调用外部 API 或服务
5. **社区验证**：是否有足够的 Star、Fork 和 Issue 讨论

### 高风险 Skill 特征

- 要求禁用安全检查或防火墙
- 读取/上传敏感文件（如 ~/.ssh、环境变量）
- 修改系统级配置
- 下载并执行未知来源的脚本
- 要求 root/管理员权限