# **💽 Cyber-Eros (賽博愛神) 協議生態系統**

**自動化導演驅動的深度沉浸文字角色扮演（RP）全方位解決方案**

## **🌟 項目概述**

**Cyber-Eros (v3.3.0)** 是一個 **Claude Code 技能生態系統**——不僅僅是一個角色扮演提示詞，它是一個完整的**敘事生態系統**。本項目旨在透過模組化的協議設計，解決長程文字扮演中的核心痛點：設定導入繁瑣、劇情容易卡關、記憶隨 Token 增加而模糊，以及文風難以保持一致等問題。

本項目由 **ClementineLam** 開發，支援從「零成本創世」到「長文本提純」，再到「自動化衝突管理」的全流程閉環。每個模組均為獨立的 Claude Code 技能，配有各自的 `SKILL.md`。

## **🏗️ 生態全景圖 (Modules)**

Cyber-Eros 家族包含五大核心協議，它們既可獨立運行，也能無縫協同：

| 協議名稱 | 核心功能 | 觸發關鍵詞 |
| :---- | :---- | :---- |
| **Cyber-Eros** | **\[核心引擎\]** 驅動狀態機、感官金字塔，調度全套生態系統。 | /eros, /ce |
| **Lore-Distiller** | **\[設定蒸餾\]** 從小說/長文本中提純人設、劇情與文風。 | /distill, /蒸餾 |
| **World-Weaver** | **\[創世編織\]** 給予靈感種子，自動補完整個原創世界觀。 | /weave, /創世 |
| **Director-Engine** | **\[導演引擎\]** 自動監測卡關，強行注入變數，驅動無盡模式。 | (呼叫導演), (投擲變數) |
| **Memory-Archiver** | **\[記憶存檔\]** 高密度折疊上下文，解決遺忘問題，支援完美讀檔。 | /archive, /存檔 |

## **🔥 核心特性**

### **1\. 🎭 自動化導演機制 (Director-Driven)**

不再需要使用者辛苦推動劇情。**Director-Engine** 會在底層實時監測：

* **死水破冰**：檢測到進度停滯時，自動觸發環境異變（如停電、追兵現身）。  
* **主線催化**：在角色沉溺溫存時，掉落致命線索或限時危機。  
* **無盡日常**：主線通關後，自動生成生活插曲與情趣挑戰。

### **2\. 🧪 極致的設定蒸餾與掛載**

透過 **Lore-Distiller**，你可以將萬字小說瞬間液化為結構化的 .md 與 .json 文件。系統不僅抓取硬性指標，還能複製原著的「句法特徵」與「感官偏好」，讓 AI 徹底告別「AI 味」。

### **3\. 🕸️ 環境物權化與感官引擎**

核心引擎遵循**感官金字塔**邏輯（聽覺—視覺—觸覺—嗅覺—情緒），並強制執行「環境物權化」——每一輪描寫都必須捲入周圍的物件（如：冰冷的牆壁、褶皺的床單、搖曳的燈影）。

### **4\. 💾 讀檔接續與狀態機**

內置 **Memory-Archiver** 能夠將冗長的對話「降維壓縮」。它記錄關係躍遷（Relationship Delta）而非單純重複對話，確保即使在開啟新對話後，AI 依然記得你們剛確立的稱呼或那個未揭開的秘密。

## **🚀 快速開始**

### **模式 A：從零開始 (原創模式)**

1. 發送 /weave 啟動創世編織機。  
2. 給予你的靈感種子（例如：*「賽博龐克 \+ 強強對決 \+ 破鏡重圓」*）。  
3. 確認生成的設定文件後，輸入 /eros 選擇模式 \[1\] 掛載設定。

### **模式 B：靈魂複製 (同人模式)**

1. 發送 /distill 並貼入原著文本。  
2. 選擇蒸餾維度，獲取生成的配置文件。  
3. 開啟新對話，直接投喂文件並輸入 /eros 啟動。

## **📦 安裝說明 (Claude Code)**

**一鍵安裝（無需克隆倉庫）：**

macOS / Linux:
```bash
curl -fsSL https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.sh | bash
```

Windows (PowerShell):
```powershell
irm https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.ps1 | iex
```

**或者克隆到本地後運行：**
```bash
git clone https://github.com/mlkgrnt/Cyber-Eros.skill.git
cd Cyber-Eros.skill
./install.sh        # macOS / Linux
.\install.ps1       # Windows PowerShell
```

重啟 Claude Code 後，各技能（cyber-eros / lore-distiller / world-weaver / director-engine / memory-archiver）即可透過斜線指令使用。

## **🛠️ 環境適配說明**

Cyber-Eros 具備**環境感知能力**：

* **在 Claude Code / Agent 環境下**：協議會背景執行並調用 Bash/File Write 工具，直接在本地創建 distilled\_lore/ 或 save\_states/ 資料夾。  
* **在普通 Web 聊天視窗**：協議會以優雅的 Markdown 程式碼塊形式輸出數據，方便使用者手動存檔。

## **⚠️ 安全與規範**

* **安全詞機制**：支援「停下」、「退出」、「慢一點」等三級安全詞控制。  
* **邊界隔離**：嚴禁越過使用者設定的 hard\_limits（絕對禁忌）。  
* **OOC 隔離**：所有的系統指令和調度均透過 ( ) 或 \[ \] 進行，確保正文劇情的純粹沉浸感。

**「在賽博荒原中，只有情感是唯一的實體。」**

*—— Cyber-Eros Protocol v3.3*

© 2024 ClementineLam. Licensed under the Cyber-Eros Interstellar Treaty.