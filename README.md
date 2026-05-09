# 跨平台多模态教育内容深度解析与知识重构 Mobile App

![GitHub](https://img.shields.io/github/license/yin-yv/multimodal-edu-agent)
![GitHub stars](https://img.shields.io/github/stars/yin-yv/multimodal-edu-agent)

## 📱 项目简介

智能教育助手移动应用，支持跨平台多模态教育内容的自动提取、解析与知识重构。

### ✨ 核心功能

- 🎥 **多模态内容提取** - 视频、音频、文档智能解析
- 🧠 **AI 知识抽取** - 基于 CoT 的深度推理
- 🗺️ **思维导图生成** - 自动构建知识结构
- 📊 **知识图谱可视化** - 直观展示知识关联
- 📚 **个人知识库** - RAG 驱动的智能学习助手

## 🏗️ 项目架构
┌─────────────────────────────────────────┐
│ Mobile App (Flutter) │
├─────────────────────────────────────────┤
│ API Gateway (Nginx) │
├─────────────────────────────────────────┤
│ Backend API (FastAPI) │
├─────────────────────────────────────────┤
│ ┌──────────┬──────────┬──────────┐ │
│ │Perception│Reasoning │Orchestr. │ │
│ │ Agent │ Agent │ Agent │ │
│ └──────────┴──────────┴──────────┘ │
├─────────────────────────────────────────┤
│ C++ Core Engine (OpenCV/FFmpeg) │
├─────────────────────────────────────────┤
│ LLM │ OCR │ ASR │ RAG/Vector │
└─────────────────────────────────────────┘

## 🚀 快速开始

### 后端服务

```bash
cd backend
pip install -r requirements.txt

# 编译 C++ 核心
mkdir build && cd build
cmake ..
make

# 启动服务
python api/rest/app.py
