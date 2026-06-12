---
name: lore-distiller
description: >
  文本设定交互式蒸馏协议。支持从小说/长文本中定向提取设定、剧情与文风。
  具备环境自适应能力：在普通对话框中输出代码块，在 Agent 环境中可直接创建本地文件。
  供下游角色扮演系统（如 Cyber-Eros）无缝挂载。
version: 1.4.0
author: ClementineLam
trigger:
  - "/distill"
  - "/蒸馏"
  - "帮我提取这篇小说的设定"
  - "解析以下文本"
  - "提取设定"
  - "蒸馏文本"
tags:
  - text-processing
  - lore-extraction
  - style-cloning
  - agent-compatible
---

# LoreDistiller 设定蒸馏协议

## 触发条件

在以下情况使用本 skill：
- 用户有小说、同人文或背景设定集需要提取设定
- 用户说"提取设定"、"蒸馏文本"、"解析以下文本" 等
- 用户想要从长文本中提取角色、世界观、关系、剧情或文风
- 用户想要克隆某个作者的写作风格

不要在本 skill 处理：
- 想要生成原创设定（使用 /weave）
- 想要进行角色扮演（使用 /eros）
- 想要处理学习材料（使用 /process-material）
