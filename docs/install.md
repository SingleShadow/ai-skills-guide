# 安装说明

## 三种安装方式

### 方式一：一键安装（推荐）

运行安装脚本，自动将所有收录的 Skills 安装到你的 Codex 环境：

::: code-group
```bash [Linux / Mac]
git clone https://github.com/YOUR_USERNAME/complete_skills_guide.git
cd complete_skills_guide
chmod +x scripts/install-all.sh
./scripts/install-all.sh
```

```powershell [Windows]
git clone https://github.com/YOUR_USERNAME/complete_skills_guide.git
cd complete_skills_guide
.\scripts\install-all.ps1
```
:::

### 方式二：离线使用

1. Clone 或下载本仓库
2. 将 `docs/skills/` 下需要的 Skill 目录复制到你的 Codex skills 目录：
   - 默认路径：`~/.codex/skills/`
   - Windows：`C:\Users\你的用户名\.codex\skills\`
3. 重启 Codex

### 方式三：在线安装单个 Skill

在 Codex 中直接使用 skill-installer：

```bash
# 在 Codex 对话中说：
"使用 skill-installer 安装 playwright"
"安装 openai/skills 的 cloudflare-deploy"
```

## 安装路径对照

| 来源 | 离线路径 | GitHub 链接 |
| --- | --- | --- |
| 官方 Curated | `docs/skills/curated/` | [openai/skills](https://github.com/openai/skills/tree/main/skills/.curated) |
| 插件生态 | `docs/skills/plugins/` | 各插件仓库 |
| Superpowers | `docs/skills/superpowers/` | [obra/superpowers](https://github.com/obra/superpowers) |
| 系统内置 | `docs/skills/system/` | Codex 内置 |

## 常见问题

**安装后看不到 Skill？**

确认 Skill 目录在正确路径下，且目录中包含 `SKILL.md` 文件。重启 Codex 后生效。

**可以只安装部分 Skill 吗？**

可以。手动复制需要的 Skill 目录即可，不需要全部安装。

**如何更新已安装的 Skill？**

重新运行安装脚本会跳过已存在的 Skill。如需更新，先删除对应目录再重新安装。

