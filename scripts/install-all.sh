#!/bin/bash
# Codex Skills 大全 - 一键安装脚本 (Linux / Mac)
# 将 docs/skills/ 下所有 Skill 复制到 Codex skills 目录

set -e

# 确定 Codex skills 目录
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
SKILLS_DIR="$CODEX_HOME/skills"
SOURCE_DIR="$(cd "$(dirname "$0")/../docs/skills" && pwd)"

echo "=================================="
echo "  Codex Skills 大全 - 一键安装"
echo "=================================="
echo ""
echo "源目录: $SOURCE_DIR"
echo "目标目录: $SKILLS_DIR"
echo ""

# 检查源目录
if [ ! -d "$SOURCE_DIR" ]; then
    echo "错误: 找不到 skills 源目录 $SOURCE_DIR"
    echo "请确保在仓库根目录运行此脚本"
    exit 1
fi

# 创建目标目录
mkdir -p "$SKILLS_DIR"

# 计数
installed=0
skipped=0
failed=0

# 遍历所有分类目录
for category in curated plugins superpowers system; do
    category_dir="$SOURCE_DIR/$category"
    if [ ! -d "$category_dir" ]; then
        continue
    fi
    
    echo "--- 安装 $category Skills ---"
    
    for skill_dir in "$category_dir"/*/; do
        skill_name=$(basename "$skill_dir")
        
        # 检查是否有 SKILL.md
        if [ ! -f "$skill_dir/SKILL.md" ]; then
            echo "  [跳过] $skill_name (无 SKILL.md)"
            skipped=$((skipped + 1))
            continue
        fi
        
        target="$SKILLS_DIR/$skill_name"
        
        # 检查是否已安装
        if [ -d "$target" ]; then
            echo "  [已存在] $skill_name"
            skipped=$((skipped + 1))
            continue
        fi
        
        # 复制
        if cp -r "$skill_dir" "$target" 2>/dev/null; then
            echo "  [已安装] $skill_name"
            installed=$((installed + 1))
        else
            echo "  [失败] $skill_name"
            failed=$((failed + 1))
        fi
    done
done

echo ""
echo "=================================="
echo "  安装完成!"
echo "  已安装: $installed"
echo "  已跳过: $skipped"
echo "  失败: $failed"
echo "=================================="
echo ""
echo "请重启 Codex 以加载新安装的 Skills"

