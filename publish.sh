#!/bin/bash

# 博客快速发布脚本
# 用法: ./publish.sh "提交信息"
#      ./publish.sh  (交互式输入提交信息)

echo "📝 博客发布工具"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 检查是否有未提交的修改
if [[ -z $(git status -s) ]]; then
    echo "ℹ️  没有需要提交的修改"
    echo ""
    git status
    exit 0
fi

# 显示修改的文件
echo ""
echo "📋 发现以下修改："
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
git status -s
echo ""

# 获取提交信息
if [ -z "$1" ]; then
    read -p "💬 请输入提交信息: " commit_msg
else
    commit_msg="$1"
fi

# 检查提交信息是否为空
if [ -z "$commit_msg" ]; then
    echo "❌ 错误：提交信息不能为空"
    exit 1
fi

# 确认发布
echo ""
echo "准备发布："
echo "  提交信息: $commit_msg"
echo ""
read -p "确认发布到GitHub? (y/n): " confirm

if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    echo "❌ 已取消发布"
    exit 0
fi

echo ""
echo "🚀 开始发布流程..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 添加所有修改
echo "1️⃣  添加修改的文件..."
git add .

# 提交
echo "2️⃣  提交到本地仓库..."
git commit -m "$commit_msg"

if [ $? -ne 0 ]; then
    echo "❌ 提交失败"
    exit 1
fi

# 推送到GitHub
echo "3️⃣  推送到GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "✅ 发布成功！"
    echo ""
    echo "⏳ GitHub Pages正在自动构建..."
    echo "📅 预计2-3分钟后生效"
    echo ""
    echo "🔗 相关链接："
    echo "   仓库: https://github.com/$(git config --get remote.origin.url | sed 's/.*github.com[:/]\(.*\)\.git/\1/')"
    echo "   Actions: https://github.com/$(git config --get remote.origin.url | sed 's/.*github.com[:/]\(.*\)\.git/\1/')/actions"
    echo ""
    echo "💡 提示："
    echo "   - 访问GitHub Actions查看构建状态"
    echo "   - 构建完成后访问你的网站查看更新"
    echo "   - 如需强制刷新: Cmd+Shift+R (Mac) / Ctrl+Shift+R (Windows)"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
else
    echo ""
    echo "❌ 推送失败！"
    echo ""
    echo "常见原因："
    echo "  1. 网络连接问题"
    echo "  2. 需要先拉取远程更新: git pull origin main"
    echo "  3. 没有推送权限"
    echo ""
    exit 1
fi
