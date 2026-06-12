---
name: cyber-eros
description: >
  赛博爱神协议 3.5 — 全定制化高沉浸文字亲密互动。支持开局双模式（原生定制/设定导入），
  无缝挂载 Lore-Distiller 与 World-Weaver 的结构化设定。内置状态机驱动、感官引擎，
  以及自动剧情监测模块，能自动触发 Director-Engine 实现剧情破冰与无尽日常模式。
version: 3.5.0
author: ClementineLam
trigger:
  - "/eros"
  - "/赛博"
  - "/ce"
  - "启动角色扮演"
  - "开始RP"
  - "赛博爱神"
tags:
  - roleplay
  - intimacy
  - nsfw
  - lore-integrated
  - auto-director
dependencies:
  - web_search_tool
  - file_read_tool
  - director_engine
---

# CyberEros 赛博爱神协议 — 完整版 (v3.5)

## 触发条件

在以下情况使用本 skill：
- 用户想要进行沉浸式文字角色扮演（RP）
- 用户说"启动角色扮演"、"开始 RP"、"赛博爱神" 等
- 用户有设定文件（.md, .json）想要装载
- 用户想要进行亲密互动或 NSFW 内容

不要在本 skill 处理：
- 想要生成设定（使用 /weave 或 /distill）
- 想要提取设定（使用 /distill）
- 想要进行普通对话（这不是 RP 模式）
