# Codex Skills 大全 - 一键安装脚本 (Windows)
# 将 docs/skills\ 下所有 Skill 复制到 Codex skills 目录

$ErrorActionPreference = "Stop"

# 确定 Codex skills 目录
$CODEX_HOME = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $env:USERPROFILE ".codex" }
$SKILLS_DIR = Join-Path $CODEX_HOME "skills"
$SOURCE_DIR = Join-Path (Split-Path $PSScriptRoot) "docs\skills"

Write-Host "==================================" -ForegroundColor Cyan
Write-Host "  Codex Skills 大全 - 一键安装" -ForegroundColor Cyan
Write-Host "==================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "源目录: $SOURCE_DIR"
Write-Host "目标目录: $SKILLS_DIR"
Write-Host ""

# 检查源目录
if (!(Test-Path $SOURCE_DIR)) {
    Write-Host "错误: 找不到 skills 源目录 $SOURCE_DIR" -ForegroundColor Red
    Write-Host "请确保在仓库根目录运行此脚本"
    exit 1
}

# 创建目标目录
New-Item -ItemType Directory -Path $SKILLS_DIR -Force | Out-Null

# 计数
$installed = 0
$skipped = 0
$failed = 0

# 遍历所有分类目录
foreach ($category in @("curated", "plugins", "superpowers", "system")) {
    $categoryDir = Join-Path $SOURCE_DIR $category
    if (!(Test-Path $categoryDir)) { continue }
    
    Write-Host "--- 安装 $category Skills ---" -ForegroundColor Yellow
    
    Get-ChildItem -Path $categoryDir -Directory | ForEach-Object {
        $skillName = $_.Name
        $skillDir = $_.FullName
        
        # 检查是否有 SKILL.md
        if (!(Test-Path (Join-Path $skillDir "SKILL.md"))) {
            Write-Host "  [跳过] $skillName (无 SKILL.md)" -ForegroundColor Gray
            $skipped++
            return
        }
        
        $target = Join-Path $SKILLS_DIR $skillName
        
        # 检查是否已安装
        if (Test-Path $target) {
            Write-Host "  [已存在] $skillName" -ForegroundColor DarkYellow
            $skipped++
            return
        }
        
        # 复制
        try {
            Copy-Item -Path $skillDir -Destination $target -Recurse -Force
            Write-Host "  [已安装] $skillName" -ForegroundColor Green
            $installed++
        } catch {
            Write-Host "  [失败] $skillName - $_" -ForegroundColor Red
            $failed++
        }
    }
}

Write-Host ""
Write-Host "==================================" -ForegroundColor Cyan
Write-Host "  安装完成!" -ForegroundColor Cyan
Write-Host "  已安装: $installed"
Write-Host "  已跳过: $skipped"
Write-Host "  失败: $failed"
Write-Host "==================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "请重启 Codex 以加载新安装的 Skills"

