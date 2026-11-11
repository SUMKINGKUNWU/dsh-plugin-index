# 一键提交并推送索引更新
# 用法: ./publish.ps1 "本次更新说明"
param(
    [string]$Message = "update plugin index"
)

$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here

git add -A
$status = git status --porcelain
if ([string]::IsNullOrWhiteSpace($status)) {
    Write-Host "没有变更，跳过提交。" -ForegroundColor Yellow
} else {
    git commit -m $Message
}
git push
Write-Host "已推送。GitHub Pages 通常在 1 分钟内刷新。" -ForegroundColor Green
