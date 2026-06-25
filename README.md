# Codex Skills 大全

> 已验证的 Codex Skills 资源目录 - 按行业分类，含安装方式与使用示例

收录 **100+** 个已验证的 Codex Skills，涵盖开发、设计、视频、文档、安全、学术等领域。

**在线浏览**：GitHub Pages 网站（部署后自动可用）

## 包含内容

| 来源 | 数量 | 说明 |
| --- | --- | --- |
| OpenAI 官方 Curated | 39 | 部署、设计、项目管理、安全等 |
| Anthropic 官方 Skills | 17 | 文档处理、创意设计、MCP 构建、前端测试 |
| 插件生态 | 15+ | 浏览器控制、Canva、视频、文档处理 |
| Superpowers | 14 | 软件开发全流程 |
| Karpathy 系 Skills | 2 | 编码准则 + LLM Wiki 知识库 |
| 系统内置 | 5 | 图像生成、文档处理、Skill 管理 |
| 社区仓库 | 11+ | 学术、营销、通用等 |

## 一键启动（推荐）

### Windows 用户

双击 **`启动网站.bat`** 即可自动打开网页。

首次使用会自动安装依赖（约30秒），之后每次双击秒开。

### Mac / Linux 用户

```bash
chmod +x start.sh
./start.sh
```

脚本会自动检查环境、安装依赖、启动网站并打开浏览器。

### 前置要求

需要先安装 [Node.js](https://nodejs.org/)（下载 LTS 版本，一路下一步安装即可）。

## 安装到 Codex

```bash
# Clone 仓库
git clone https://github.com/YOUR_USERNAME/complete_skills_guide.git
cd complete_skills_guide

# 一键安装所有 Skills 到 Codex 环境
# Linux / Mac
chmod +x scripts/install-all.sh
./scripts/install-all.sh

# Windows
.\scripts\install-all.ps1
```

## 本地开发

```bash
npm install
npm run docs:dev
```

浏览器打开 http://localhost:5173

## 构建静态网站

```bash
npm run docs:build
```

构建产物在 `docs/.vitepress/dist/`，可直接部署或离线使用。

## 贡献

1. Fork 本仓库
2. 在 `skills/` 中添加 Skill 文件
3. 在对应分类的 `.md` 文件中添加说明
4. 提交 PR

## License

MIT