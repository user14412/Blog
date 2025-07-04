#!/bin/bash

# 🚀 博客测试和部署脚本

echo "🧹 清理旧文件..."
hexo clean

echo "📦 生成静态文件..."
hexo generate

echo "🔍 检查生成结果..."
if [ $? -eq 0 ]; then
    echo "✅ 生成成功！"
else
    echo "❌ 生成失败！请检查配置文件。"
    exit 1
fi

echo "🌐 启动本地服务器..."
echo "📱 请在浏览器中访问 http://localhost:4000 查看效果"
echo "💡 按 Ctrl+C 停止服务器"

hexo server
