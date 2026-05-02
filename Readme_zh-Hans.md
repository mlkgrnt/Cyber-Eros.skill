# **💽 Cyber-Eros 协议生态系统**

**自动化导演驱动的深度沉浸文字角色扮演（RP）全家桶解决方案**

## **🌟 项目概述**

**Cyber-Eros (v3.3.0)** 是一个 **Claude Code 技能生态系统**——不仅仅是一个角色扮演提示词，它是一个完整的**叙事生态系统**。本项目旨在通过模块化的协议设计，解决长程文字扮演中的核心痛点：设定导入繁琐、剧情容易卡壳、记忆随 Token 增加而模糊、以及文风难以保持一致。

本项目由 **ClementineLam** 开发，支持从”零成本创世”到”长文本提纯”，再到”自动化冲突管理”的全流程闭环。每个模块均为独立的 Claude Code 技能，配有各自的 `SKILL.md`。

## **🏗️ 生态全景图 (Modules)**

Cyber-Eros 家族包含五大核心协议，它们既可独立运行，也能无缝协同：

| 协议名称 | 核心功能 | 触发关键词 |
| :---- | :---- | :---- |
| **Cyber-Eros** | **\[核心引擎\]** 驱动状态机、感官金字塔，调度全家桶生态。 | /eros, /ce |
| **Lore-Distiller** | **\[设定蒸馏\]** 从小说/长文本中提纯人设、剧情与文风。 | /distill, /蒸馏 |
| **World-Weaver** | **\[创世编织\]** 给一个灵感种子，自动补完整个原创世界观。 | /weave, /创世 |
| **Director-Engine** | **\[导演引擎\]** 自动监测卡壳，强行注入变数，驱动无尽模式。 | (呼叫导演), (投掷变数) |
| **Memory-Archiver** | **\[记忆存档\]** 高密度折叠上下文，解决遗忘问题，支持读档。 | /archive, /存档 |

## **🔥 核心特性**

### **1\. 🎭 自动化导演机制 (Director-Driven)**

不再需要用户辛苦推剧情。**Director-Engine** 会在底层实时监测：

* **死水破冰**：检测到原地踏步时，自动触发环境异变（如停电、追兵）。  
* **主线催化**：在角色沉溺温存时，掉落致命线索或限时危机。  
* **无尽日常**：主线通关后，自动生成生活插曲与情趣挑战。

### **2\. 🧪 极致的设定蒸馏与挂载**

通过 **Lore-Distiller**，你可以将万字小说瞬间液化为结构化的 .md 和 .json 文件。系统不仅抓取硬指标，还能克隆原著的“句法特征”与“感官偏好”，让 AI 彻底告别“AI味”。

### **3\. 🕸️ 环境物权化与感官引擎**

核心引擎遵循**感官金字塔**逻辑（听觉-视觉-触觉-嗅觉-情绪），并强制执行“环境物权化”——每一轮描写都必须卷入周围的物件（如：冰冷的墙壁、褶皱的床单、摇曳的灯影）。

### **4\. 💾 读档接续与状态机**

内置 **Memory-Archiver** 能够将冗长的对话“降维压缩”。它记录关系跃迁（Relationship Delta）而非单纯重复对话，确保即使在开启新会话后，AI 依然记得你们刚确立的称呼或那个未揭开的秘密。

## **🚀 快速开始**

### **模式 A：从零开始 (原创模式)**

1. 发送 /weave 启动创世编织机。  
2. 给出你的灵感种子（如：*“赛博朋克+强强+宿敌”*）。  
3. 确认生成的设定文件后，输入 /eros 选择模式 \[1\] 挂载设定。

### **模式 B：灵魂克隆 (同人模式)**

1. 发送 /distill 并贴入原著文本。  
2. 选择蒸馏维度，获取生成的配置文件。  
3. 开启新会话，直接投喂文件并输入 /eros 启动。

## **📦 安装说明 (Claude Code)**

**一键安装（无需克隆仓库）：**

macOS / Linux:
```bash
curl -fsSL https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.sh | bash
```

Windows (PowerShell):
```powershell
irm https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.ps1 | iex
```

**或者克隆到本地后运行：**
```bash
git clone https://github.com/mlkgrnt/Cyber-Eros.skill.git
cd Cyber-Eros.skill
./install.sh        # macOS / Linux
.\install.ps1       # Windows PowerShell
```

重启 Claude Code 后，各技能（cyber-eros / lore-distiller / world-weaver / director-engine / memory-archiver）即可通过斜杠命令使用。

## **🛠️ 环境适配说明**

Cyber-Eros 具备**环境感知能力**：

* **在 Claude Code / Agent 环境下**：协议会静默调用 Bash/File Write 工具，直接在本地创建 distilled\_lore/ 或 save\_states/ 文件夹。  
* **在普通 Web 聊天窗口**：协议会以优雅的 Markdown 代码块形式输出数据，方便用户手动保存。

## **⚠️ 安全与规范**

* **安全词机制**：支持“停下”、“退出”、“慢一点”等三级安全词控制。  
* **边界隔离**：严禁越过用户设定的 hard\_limits（绝对禁忌）。  
* **OOC 隔离**：所有的系统指令和调度均通过 ( ) 或 \[ \] 进行，确保正文剧情的纯净沉浸感。

**“在赛博荒原中，只有情感是唯一的实体。”**

*—— Cyber-Eros Protocol v3.3*

© 2024 ClementineLam. Licensed under the Cyber-Eros Interstellar Treaty.