# **💽 Cyber-Eros 协议生态系统**

**自动化导演驱动的深度沉浸文字角色扮演（RP）全家桶解决方案**

---

## **🌟 项目概述**

**Cyber-Eros (v3.5.0)** 是一个 **Claude Code 技能生态系统**——不仅仅是一个角色扮演提示词，它是一个完整的**叙事生态系统**。本项目旨在通过模块化的协议设计，解决长程文字扮演中的核心痛点：设定导入繁琐、剧情容易卡壳、记忆随 Token 增加而模糊、以及文风难以保持一致。

---

## **🆕 v3.5 更新**

- **触发条件** — 明确指导何时使用每个技能
- **16 个示例** — 所有场景的详细输入→输出示例
- **质量检查清单** — 每次使用技能后的自我验证
- **错误处理** — 优雅处理常见故障
- **版本历史** — 跟踪各版本变更

---

## **🏗️ 生态全景图 (Modules)**

Cyber-Eros 家族包含五大核心协议，它们既可独立运行，也能无缝协同：

| 协议名称 | 核心功能 | 触发词 | 何时使用 |
| :---- | :---- | :---- | :---- |
| **Cyber-Eros** | **[核心引擎]** 驱动状态机、感官金字塔，调度全家桶生态。 | /eros | 开始 RP 会话 |
| **Lore-Distiller** | **[设定蒸馏]** 从小说/长文本中提纯人设、剧情与文风。 | /distill | 从小说中提取设定 |
| **World-Weaver** | **[创世编织]** 给一个灵感种子，自动补完整个原创世界观。 | /weave | 创建原创设定 |
| **Director-Engine** | **[导演引擎]** 自动监测卡壳，强行注入变数，驱动无尽模式。 | (自动触发) | 当剧情停滞时 |
| **Memory-Archiver** | **[记忆存档]** 高密度折叠上下文，解决遗忘问题，支持读档。 | /archive | 保存/加载会话 |

---

## **🚀 快速开始**

### **一键安装**

```bash
# Linux / Mac
bash <(curl -s https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.sh)

# Windows (PowerShell)
irm https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.ps1 | iex
```

### **手动安装**

```bash
git clone https://github.com/mlkgrnt/Cyber-Eros.skill.git
cd Cyber-Eros.skill
./install.sh    # Linux / Mac
.\install.ps1   # Windows
```

### **使用方法**

1. **选择模式**: 从零开始 (`/weave`) 或克隆灵魂 (`/distill`)
2. **初始化引擎**: 使用 `/eros` 挂载设定并启动会话
3. **叙事驱动**: **导演引擎** 自动管理剧情节奏和环境

---

## **🔒 安全功能**

- **安全词** — 停下、退出、pause、stop 立即暂停会话
- **硬性限制** — 设置时设定的绝对边界始终被尊重
- **状态机** — 渐进式发展防止强制场景
- **OOC 支持** — 括号内的文本被视为角色外发言

---

## **🔗 另请参阅**

- [Learn-Language](https://github.com/mlkgrnt/Learn-Language) — 同一作者的交互式语言学习系统

---

## **⚖️ 许可证与致谢**

由 **ClementineLam** 开发。

© 2024。根据 **Cyber-Eros 星际条约** 授权。

*幽灵与机器的边界，由文字划定。*
