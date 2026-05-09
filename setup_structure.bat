@echo off
chcp 65001 >nul
cls
echo.
echo ╔═══════════════════════════════════════════════════════════╗
echo ║   多模态教育Agent - 项目结构自动创建工具                 ║
echo ║   Multimodal Education Agent - Structure Setup           ║
echo ╚═══════════════════════════════════════════════════════════╝
echo.
echo 开始创建项目文件骨架...
echo.

REM ============================================
REM 第一部分：根目录文件
REM ============================================
echo [1/9] 创建根目录配置文件...

(
echo # Docker Compose Configuration
echo version: '3.8'
echo.
echo services:
echo   backend:
echo     build: ./backend
echo     ports:
echo       - "8000:8000"
echo.
echo   mobile:
echo     build: ./mobile
) > docker-compose.yml

(
echo # Python
echo __pycache__/
echo *.py[cod]
echo venv/
echo.
echo # C++
echo *.o
echo *.so
echo build/
echo.
echo # Flutter
echo .dart_tool/
echo .packages
echo build/
echo.
echo # IDE
echo .vscode/
echo .idea/
echo.
echo # 环境变量
echo .env
echo *.log
) > .gitignore

echo ✓ 根目录文件创建完成

REM ============================================
REM 第二部分：Backend 后端目录
REM ============================================
echo [2/9] 创建后端目录结构...

REM Core C++ 目录
mkdir backend\core\include\perception 2>nul
mkdir backend\core\include\stream 2>nul
mkdir backend\core\include\sync 2>nul
mkdir backend\core\include\scheduler 2>nul
mkdir backend\core\include\utils 2>nul
mkdir backend\core\src\perception 2>nul
mkdir backend\core\src\stream 2>nul
mkdir backend\core\src\sync 2>nul
mkdir backend\core\src\scheduler 2>nul
mkdir backend\core\src\utils 2>nul

REM Bindings
mkdir backend\bindings\pybind 2>nul

REM Agents
mkdir backend\agents\base 2>nul
mkdir backend\agents\perception 2>nul
mkdir backend\agents\reasoning 2>nul
mkdir backend\agents\orchestrator 2>nul
mkdir backend\agents\adapters 2>nul

REM Services
mkdir backend\services\llm 2>nul
mkdir backend\services\ocr 2>nul
mkdir backend\services\asr 2>nul
mkdir backend\services\rag 2>nul

REM 其他
mkdir backend\pipelines 2>nul
mkdir backend\models 2>nul
mkdir backend\utils 2>nul
mkdir backend\api\rest\routes 2>nul
mkdir backend\api\rest\schemas 2>nul
mkdir backend\api\websocket 2>nul
mkdir backend\tests\unit\core 2>nul
mkdir backend\tests\unit\agents 2>nul
mkdir backend\tests\integration 2>nul
mkdir backend\configs\platforms 2>nul
mkdir backend\configs\models 2>nul
mkdir backend\configs\deployment 2>nul

echo ✓ 后端目录创建完成

REM ============================================
REM 第三部分：创建后端配置文件
REM ============================================
echo [3/9] 创建后端配置文件...

REM requirements.txt
(
echo # Core Dependencies
echo numpy^>=1.21.0
echo opencv-python^>=4.6.0
echo pybind11^>=2.10.0
echo.
echo # AI/ML
echo torch^>=2.0.0
echo transformers^>=4.30.0
echo.
echo # API
echo fastapi^>=0.100.0
echo uvicorn^>=0.23.0
) > backend\requirements.txt

REM CMakeLists.txt
(
echo cmake_minimum_required(VERSION 3.15^)
echo project(MultimodalEduAgent VERSION 1.0.0^)
echo.
echo set(CMAKE_CXX_STANDARD 17^)
) > backend\CMakeLists.txt

REM README.md
(
echo # Backend Service
echo.
echo 后端服务 - Python + C++ 混合架构
) > backend\README.md

echo ✓ 后端配置文件创建完成

REM ============================================
REM 第四部分：创建 C++ 头文件
REM ============================================
echo [4/9] 创建 C++ 头文件...

REM Perception 头文件
(
echo #pragma once
echo.
echo namespace multimodal {
echo namespace perception {
echo.
echo class VisionProcessor {
echo public:
echo     VisionProcessor(^);
echo     ~VisionProcessor(^);
echo };
echo.
echo } // namespace perception
echo } // namespace multimodal
) > backend\core\include\perception\vision_processor.h

(
echo #pragma once
echo.
echo namespace multimodal {
echo namespace perception {
echo.
echo class DomParser {
echo public:
echo     DomParser(^);
echo };
echo.
echo } // namespace perception
echo } // namespace multimodal
) > backend\core\include\perception\dom_parser.h

(
echo #pragma once
echo.
echo namespace multimodal {
echo namespace perception {
echo.
echo class UIAdapter {
echo public:
echo     UIAdapter(^);
echo };
echo.
echo } // namespace perception
echo } // namespace multimodal
) > backend\core\include\perception\ui_adapter.h

REM Stream 头文件
(
echo #pragma once
echo.
echo namespace multimodal {
echo namespace stream {
echo.
echo class VideoDecoder {
echo public:
echo     VideoDecoder(^);
echo };
echo.
echo } // namespace stream
echo } // namespace multimodal
) > backend\core\include\stream\video_decoder.h

(
echo #pragma once
echo.
echo namespace multimodal {
echo namespace stream {
echo.
echo class AudioDecoder {
echo public:
echo     AudioDecoder(^);
echo };
echo.
echo } // namespace stream
echo } // namespace multimodal
) > backend\core\include\stream\audio_decoder.h

(
echo #pragma once
echo.
echo namespace multimodal {
echo namespace stream {
echo.
echo class FrameExtractor {
echo public:
echo     FrameExtractor(^);
echo };
echo.
echo } // namespace stream
echo } // namespace multimodal
) > backend\core\include\stream\frame_extractor.h

REM Scheduler 头文件
(
echo #pragma once
echo.
echo namespace multimodal {
echo namespace scheduler {
echo.
echo class TokenBucket {
echo public:
echo     TokenBucket(size_t capacity, size_t refill_rate^);
echo     bool tryConsume(size_t tokens^);
echo };
echo.
echo } // namespace scheduler
echo } // namespace multimodal
) > backend\core\include\scheduler\token_bucket.h

(
echo #pragma once
echo.
echo namespace multimodal {
echo namespace scheduler {
echo.
echo class TaskQueue {
echo public:
echo     TaskQueue(^);
echo };
echo.
echo } // namespace scheduler
echo } // namespace multimodal
) > backend\core\include\scheduler\task_queue.h

(
echo #pragma once
echo.
echo namespace multimodal {
echo namespace scheduler {
echo.
echo class WorkerPool {
echo public:
echo     WorkerPool(^);
echo };
echo.
echo } // namespace scheduler
echo } // namespace multimodal
) > backend\core\include\scheduler\worker_pool.h

REM Utils 头文件
(
echo #pragma once
echo.
echo namespace multimodal {
echo namespace utils {
echo.
echo class Logger {
echo public:
echo     static void info(const char* msg^);
echo     static void error(const char* msg^);
echo };
echo.
echo } // namespace utils
echo } // namespace multimodal
) > backend\core\include\utils\logger.h

type nul > backend\core\include\utils\config_parser.h
type nul > backend\core\include\utils\memory_pool.h
type nul > backend\core\include\sync\timestamp_aligner.h
type nul > backend\core\include\sync\multimodal_fusion.h

echo ✓ C++ 头文件创建完成

REM ============================================
REM 第五部分：创建 C++ 源文件
REM ============================================
echo [5/9] 创建 C++ 源文件...

REM Perception 源文件
(
echo #include "perception/vision_processor.h"
echo.
echo namespace multimodal {
echo namespace perception {
echo.
echo VisionProcessor::VisionProcessor(^) {
echo     // TODO: Implementation
echo }
echo.
echo VisionProcessor::~VisionProcessor(^) {
echo     // TODO: Cleanup
echo }
echo.
echo } // namespace perception
echo } // namespace multimodal
) > backend\core\src\perception\vision_processor.cpp

type nul > backend\core\src\perception\dom_parser.cpp
type nul > backend\core\src\perception\ui_adapter.cpp
type nul > backend\core\src\stream\video_decoder.cpp
type nul > backend\core\src\stream\audio_decoder.cpp
type nul > backend\core\src\stream\frame_extractor.cpp
type nul > backend\core\src\sync\timestamp_aligner.cpp
type nul > backend\core\src\sync\multimodal_fusion.cpp
type nul > backend\core\src\scheduler\token_bucket.cpp
type nul > backend\core\src\scheduler\task_queue.cpp
type nul > backend\core\src\scheduler\worker_pool.cpp
type nul > backend\core\src\utils\logger.cpp
type nul > backend\core\src\utils\config_parser.cpp
type nul > backend\core\src\utils\memory_pool.cpp

echo ✓ C++ 源文件创建完成

REM ============================================
REM 第六部分：创建 Python 文件
REM ============================================
echo [6/9] 创建 Python Agent 文件...

REM __init__.py 文件
type nul > backend\agents\__init__.py
type nul > backend\services\__init__.py
type nul > backend\pipelines\__init__.py
type nul > backend\models\__init__.py
type nul > backend\utils\__init__.py
type nul > backend\api\__init__.py

REM Base Agent
(
echo """Agent 基类"""
echo.
echo class AgentBase:
echo     def __init__(self, config^):
echo         self.config = config
echo.
echo     async def process(self, data^):
echo         raise NotImplementedError
) > backend\agents\base\agent_base.py

type nul > backend\agents\base\__init__.py
type nul > backend\agents\base\message.py

REM Perception Agent
(
echo """感知层 Agent"""
echo from agents.base.agent_base import AgentBase
echo.
echo class PerceptionAgent(AgentBase^):
echo     async def process(self, data^):
echo         # TODO: Implementation
echo         pass
) > backend\agents\perception\perception_agent.py

type nul > backend\agents\perception\__init__.py
type nul > backend\agents\perception\cv_processor.py
type nul > backend\agents\perception\dom_analyzer.py
type nul > backend\agents\perception\ui_detector.py

REM Reasoning Agent
(
echo """推理层 Agent - 核心"""
echo from agents.base.agent_base import AgentBase
echo.
echo class ReasoningAgent(AgentBase^):
echo     async def process(self, data^):
echo         # TODO: CoT Implementation
echo         pass
) > backend\agents\reasoning\reasoning_agent.py

type nul > backend\agents\reasoning\__init__.py
type nul > backend\agents\reasoning\cot_engine.py
type nul > backend\agents\reasoning\context_reconstructor.py
type nul > backend\agents\reasoning\knowledge_extractor.py
type nul > backend\agents\reasoning\graph_builder.py

REM Orchestrator
(
echo """主控 Agent"""
echo from agents.base.agent_base import AgentBase
echo.
echo class MasterAgent(AgentBase^):
echo     async def process_course_content(self, platform, course_url^):
echo         # TODO: Implementation
echo         pass
) > backend\agents\orchestrator\master_agent.py

type nul > backend\agents\orchestrator\__init__.py
type nul > backend\agents\orchestrator\task_scheduler.py
type nul > backend\agents\orchestrator\resource_manager.py

REM Adapters
(
echo """通用平台适配器"""
echo from abc import ABC, abstractmethod
echo.
echo class UniversalAdapter(ABC^):
echo     @abstractmethod
echo     async def extract_content(self, url^):
echo         pass
) > backend\agents\adapters\universal_adapter.py

type nul > backend\agents\adapters\__init__.py
type nul > backend\agents\adapters\platform_a_adapter.py
type nul > backend\agents\adapters\platform_b_adapter.py
type nul > backend\agents\adapters\platform_c_adapter.py

echo ✓ Python Agent 文件创建完成

REM ============================================
REM 第七部分：创建移动端目录
REM ============================================
echo [7/9] 创建移动端目录结构...

mkdir mobile\flutter_app\lib\core\network 2>nul
mkdir mobile\flutter_app\lib\core\storage 2>nul
mkdir mobile\flutter_app\lib\core\utils 2>nul
mkdir mobile\flutter_app\lib\core\config 2>nul
mkdir mobile\flutter_app\lib\data\models 2>nul
mkdir mobile\flutter_app\lib\data\repositories 2>nul
mkdir mobile\flutter_app\lib\data\providers 2>nul
mkdir mobile\flutter_app\lib\domain\usecases 2>nul
mkdir mobile\flutter_app\lib\domain\services 2>nul
mkdir mobile\flutter_app\lib\presentation\screens\home 2>nul
mkdir mobile\flutter_app\lib\presentation\screens\course 2>nul
mkdir mobile\flutter_app\lib\presentation\screens\extraction 2>nul
mkdir mobile\flutter_app\lib\presentation\screens\knowledge 2>nul
mkdir mobile\flutter_app\lib\presentation\widgets\common 2>nul
mkdir mobile\flutter_app\lib\presentation\widgets\cards 2>nul
mkdir mobile\flutter_app\lib\presentation\controllers 2>nul
mkdir mobile\flutter_app\lib\routes 2>nul
mkdir mobile\flutter_app\lib\theme 2>nul
mkdir mobile\flutter_app\assets\images 2>nul
mkdir mobile\flutter_app\test 2>nul
mkdir mobile\native_modules\android 2>nul
mkdir mobile\native_modules\ios 2>nul

echo ✓ 移动端目录创建完成

REM ============================================
REM 第八部分：创建移动端文件
REM ============================================
echo [8/9] 创建移动端文件...

REM pubspec.yaml
(
echo name: edu_agent_app
echo description: 智能教育助手
echo version: 1.0.0+1
echo.
echo environment:
echo   sdk: "^>=3.0.0 <4.0.0"
echo.
echo dependencies:
echo   flutter:
echo     sdk: flutter
echo   get: ^4.6.5
echo   dio: ^5.3.2
) > mobile\flutter_app\pubspec.yaml

REM main.dart
(
echo import 'package:flutter/material.dart';
echo.
echo void main(^) {
echo   runApp(const MyApp(^)^);
echo }
echo.
echo class MyApp extends StatelessWidget {
echo   const MyApp({Key? key}^) : super(key: key^);
echo.
echo   @override
echo   Widget build(BuildContext context^) {
echo     return MaterialApp(
echo       title: '智能教育助手',
echo       home: Scaffold(
echo         appBar: AppBar(title: Text('首页'^)^),
echo         body: Center(child: Text('欢迎'^)^),
echo       ^),
echo     ^);
echo   }
echo }
) > mobile\flutter_app\lib\main.dart

REM API Client
(
echo import 'package:dio/dio.dart';
echo.
echo class ApiClient {
echo   final Dio _dio = Dio(^);
echo.
echo   Future^<Map^<String, dynamic^>^> extractCourse(String url^) async {
echo     // TODO: Implementation
echo     return {};
echo   }
echo }
) > mobile\flutter_app\lib\core\network\api_client.dart

type nul > mobile\flutter_app\lib\core\network\websocket_client.dart
type nul > mobile\flutter_app\lib\core\storage\local_db.dart
type nul > mobile\flutter_app\lib\core\config\app_config.dart
type nul > mobile\flutter_app\lib\data\models\course.dart
type nul > mobile\flutter_app\lib\data\repositories\course_repository.dart
type nul > mobile\flutter_app\lib\presentation\screens\home\home_screen.dart
type nul > mobile\flutter_app\lib\routes\app_routes.dart
type nul > mobile\flutter_app\lib\theme\app_theme.dart

echo ✓ 移动端文件创建完成

REM ============================================
REM 第九部分：创建其他配置
REM ============================================
echo [9/9] 创建部署和文档...

mkdir docs\mobile 2>nul
mkdir docs\api 2>nul
mkdir docs\deployment 2>nul
mkdir scripts 2>nul
mkdir gateway\nginx 2>nul
mkdir deployment\kubernetes 2>nul

REM 文档
(
echo # 项目架构文档
echo.
echo ## 系统架构
echo.
echo 本项目采用 C++ 底层 + Python 业务层 + Flutter 移动端的架构
) > docs\mobile\architecture.md

type nul > docs\api\rest_api.md
type nul > docs\deployment\backend_deploy.md

REM 脚本
(
echo #!/bin/bash
echo echo "Building mobile app..."
echo cd mobile/flutter_app
echo flutter build apk
) > scripts\build_mobile.sh

type nul > scripts\release_android.sh
type nul > gateway\nginx\nginx.conf

echo ✓ 部署和文档创建完成

REM ============================================
REM 创建项目结构文档
REM ============================================
(
echo # 项目结构说明
echo.
echo ## 目录结构
echo.
echo ```
echo multimodal-edu-agent/
echo ├── backend/           # 后端服务
echo │   ├── core/          # C++ 核心
echo │   ├── agents/        # Python Agents
echo │   ├── services/      # 外部服务
echo │   └── api/           # API 接口
echo ├── mobile/            # 移动应用
echo │   ├── flutter_app/   # Flutter 主应用
echo │   └── native_modules/# 原生模块
echo ├── docs/              # 文档
echo ├── scripts/           # 脚本
echo └── deployment/        # 部署配置
echo ```
echo.
echo ## 开发指南
echo.
echo 1. 后端开发：进入 backend 目录
echo 2. 移动端开发：进入 mobile/flutter_app 目录
echo 3. 文档编写：进入 docs 目录
) > PROJECT_STRUCTURE.md

REM ============================================
REM 统计信息
REM ============================================
echo.
echo ╔═══════════════════════════════════════════════════════════╗
echo ║                   ✅ 创建完成！                           ║
echo ╚═══════════════════════════════════════════════════════════╝
echo.
echo 📊 统计信息：
for /f %%a in ('dir /s /b *.py ^| find /c /v ""') do echo    Python 文件: %%a 个
for /f %%a in ('dir /s /b *.cpp ^| find /c /v ""') do echo    C++ 源文件: %%a 个
for /f %%a in ('dir /s /b *.h ^| find /c /v ""') do echo    C++ 头文件: %%a 个
for /f %%a in ('dir /s /b *.dart ^| find /c /v ""') do echo    Dart 文件: %%a 个
for /f %%a in ('dir /s /b *.yaml ^| find /c /v ""') do echo    配置文件: %%a 个
echo.
echo 📁 主要目录：
echo    ├─ backend/         (后端服务 - C++ + Python)
echo    ├─ mobile/          (移动应用 - Flutter)
echo    ├─ docs/            (项目文档)
echo    ├─ scripts/         (工具脚本)
echo    └─ gateway/         (API 网关)
echo.
echo 🎯 下一步操作：
echo    1. 查看项目结构:
echo       tree /F ^> structure.txt
echo.
echo    2. 提交到 GitHub:
echo       git add .
echo       git commit -m "🎉 Initial structure setup"
echo       git push origin main
echo.
echo    3. 查看详细文档:
echo       notepad PROJECT_STRUCTURE.md
echo.
pause