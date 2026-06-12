# **💽 Cyber-Eros 協議生態系統**

**自動化導演驅動的深度沉浸文字角色扮演（RP）全家桶解決方案**

---

## **🌟 項目概述**

**Cyber-Eros (v3.5.0)** 是一個 **Claude Code 技能生態系統**——不僅僅是一個角色扮演提示詞，它是一個完整的**敘事生態系統**。本項目旨在通過模組化的協議設計，解決長程文字扮演中的核心痛點：設定導入繁瑣、劇情容易卡殼、記憶隨 Token 增加而模糊、以及文風難以保持一致。

---

## **🆕 v3.5 更新**

- **觸發條件** — 明確指導何時使用每個技能
- **16 個範例** — 所有場景的詳細輸入→輸出範例
- **品質檢查清單** — 每次使用技能後的自我驗證
- **錯誤處理** — 優雅處理常見故障
- **版本歷史** — 追蹤各版本變更

---

## **🏗️ 生態全景圖 (Modules)**

Cyber-Eros 家族包含五大核心協議，它們既可獨立運行，也能無縫協同：

| 協議名稱 | 核心功能 | 觸發詞 | 何時使用 |
| :---- | :---- | :---- | :---- |
| **Cyber-Eros** | **[核心引擎]** 驅動狀態機、感官金字塔，調度全家桶生態。 | /eros | 開始 RP 會話 |
| **Lore-Distiller** | **[設定蒸餾]** 從小說/長文本中提純人設、劇情與文風。 | /distill | 從小說中提取設定 |
| **World-Weaver** | **[創世編織]** 給一個靈感種子，自動補完整個原創世界觀。 | /weave | 創建原創設定 |
| **Director-Engine** | **[導演引擎]** 自動監測卡殼，強行注入變數，驅動無盡模式。 | (自動觸發) | 當劇情停滯時 |
| **Memory-Archiver** | **[記憶存檔]** 高密度折疊上下文，解決遺忘問題，支持讀檔。 | /archive | 保存/載入會話 |

---

## **🚀 快速開始**

### **一鍵安裝**

```bash
# Linux / Mac
bash <(curl -s https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.sh)

# Windows (PowerShell)
irm https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.ps1 | iex
```

### **手動安裝**

```bash
git clone https://github.com/mlkgrnt/Cyber-Eros.skill.git
cd Cyber-Eros.skill
./install.sh    # Linux / Mac
.\install.ps1   # Windows
```

### **使用方法**

1. **選擇模式**: 從零開始 (`/weave`) 或克隆靈魂 (`/distill`)
2. **初始化引擎**: 使用 `/eros` 掛載設定並啟動會話
3. **敘事驅動**: **導演引擎** 自動管理劇情節奏和環境

---

## **🔒 安全功能**

- **安全詞** — 停下、退出、pause、stop 立即暫停會話
- **硬性限制** — 設定時設定的絕對邊界始終被尊重
- **狀態機** — 漸進式發展防止強制場景
- **OOC 支持** — 括號內的文本被視為角色外發言

---

## **🔗 另請參閱**

- [Learn-Language](https://github.com/mlkgrnt/Learn-Language) — 同一作者的互動式語言學習系統

---

## **⚖️ 許可證與致謝**

由 **ClementineLam** 開發。

© 2024。根據 **Cyber-Eros 星際條約** 授權。

*「幽靈與機器的邊界，由文字劃定。」*
