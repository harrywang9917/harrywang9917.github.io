#!/bin/bash

# Jekyll新文章创建脚本
# 用法: ./new_post.sh "文章标题" [语言] [文件名slug]
# 例如: ./new_post.sh "My New Post" en
#       ./new_post.sh "Machine Learning Basics" en ml-basics
#       ./new_post.sh "机器学习基础" zh ml-basics

if [ -z "$1" ]; then
    echo "错误：请提供文章标题"
    echo "用法: ./new_post.sh \"文章标题\" [语言] [文件名slug]"
    echo ""
    echo "示例："
    echo "  ./new_post.sh \"Machine Learning\" en"
    echo "  ./new_post.sh \"机器学习\" zh ml-intro"
    echo "  ./new_post.sh \"Deep Learning Basics\" en deep-learning-basics"
    exit 1
fi

TITLE="$1"
LANG="${2:-en}"  # 默认英文
DATE=$(date +%Y-%m-%d)

# 如果没有提供slug作为第三个参数，尝试自动生成
if [ -n "$3" ]; then
    SLUG="$3"
else
    # 尝试转换标题为slug（只适用于英文标题）
    SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/[^a-z0-9-]//g')
    # 如果转换后为空（如中文标题），使用默认值
    if [ -z "$SLUG" ]; then
        SLUG="new-post"
        echo "⚠️  检测到非英文标题，使用默认文件名: ${DATE}-${SLUG}.md"
        echo "💡 建议：手动指定slug，例如: ./new_post.sh \"$TITLE\" $LANG my-slug"
    fi
fi

FILENAME="_posts/${DATE}-${SLUG}.md"

# 检查文件是否已存在
if [ -f "$FILENAME" ]; then
    echo "❌ 错误：文件已存在: $FILENAME"
    exit 1
fi

cat > "$FILENAME" << EOF
---
layout: post
title: "$TITLE"
subtitle: ""
date: $DATE
categories: []
tags: []
author: Harry
lang: $LANG
bibliography: false
excerpt: ""
---

## Introduction

Write your content here...

## Conclusion

...
EOF

echo "✅ 新文章已创建: $FILENAME"
echo "📝 现在可以编辑这个文件了"
echo ""
echo "快速启动："
echo "  bundle exec jekyll serve"
echo "  open http://127.0.0.1:4000"
