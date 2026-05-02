# **💽 Cyber-Eros Protocol Ecosystem**

**Automated director-driven, deep immersion text roleplay (RP) full-stack solution.**

## **🌟 Project Overview**

**Cyber-Eros (v3.3.0)** is a **Claude Code skill ecosystem** — more than just a roleplay prompt; it is a complete **narrative ecosystem**. This project utilizes modular protocol design to solve core pain points in long-term text roleplay: tedious setting imports, plot stagnation, memory fading as tokens increase, and the difficulty of maintaining consistent writing styles.

Developed by **ClementineLam**, this project supports a full-cycle closed loop from "zero-cost world-building" to "long-text distillation" and "automated conflict management." Each module is packaged as an independent Claude Code skill with its own `SKILL.md`.

## **🏗️ Ecosystem Overview (Modules)**

The Cyber-Eros family consists of five core protocols that can run independently or collaborate seamlessly:

| Protocol Name | Core Function | Trigger Keywords |
| :---- | :---- | :---- |
| **Cyber-Eros** | **\[Core Engine\]** Drives the state machine and sensory pyramid; dispatches the ecosystem. | /eros, /ce |
| **Lore-Distiller** | **\[Lore Distillation\]** Extracts settings, plots, and styles from novels or long texts. | /distill, /蒸馏 |
| **World-Weaver** | **\[World Weaving\]** Automatically generates a complete original world-building from a seed. | /weave, /创世 |
| **Director-Engine** | **\[Director Engine\]** Monitors stagnation, injects variables, and drives endless mode. | (Call Director), (Roll Variable) |
| **Memory-Archiver** | **\[Memory Archiving\]** High-density context folding for perfect "save/load" functionality. | /archive, /存档 |

## **🔥 Core Features**

### **1\. 🎭 Director-Driven Mechanism**

Eliminate the need for users to manually push the plot. **Director-Engine** monitors the backend in real-time:

* **Deadlock Breaker**: Automatically triggers environmental changes (e.g., power outages, pursuers) when stagnation is detected.  
* **Plot Accelerator**: Drops fatal clues or time-sensitive crises when characters are too deeply immersed in intimacy.  
* **Endless Mode**: Generates slice-of-life episodes or new challenges after the main plot is completed.

### **2\. 🧪 Extreme Lore Distillation & Mounting**

With **Lore-Distiller**, you can instantly "liquefy" 10,000-word novels into structured .md and .json files. The system captures not only hard data but also clones the "syntax features" and "sensory biases" of the original work, effectively removing the "AI feel."

### **3\. 🕸️ Environmental Appropriation & Sensory Engine**

The core engine follows a **Sensory Pyramid** logic (Auditory-Visual-Tactile-Olfactory-Emotional) and enforces "Environmental Appropriation"—every description must involve surrounding objects (e.g., cold walls, wrinkled sheets, flickering shadows).

### **4\. 💾 Memory Compression & State Machine**

The built-in **Memory-Archiver** can perform "dimensional reduction" on long conversations. It records "Relationship Deltas" rather than simple dialogue repetition, ensuring that even in a new session, the AI remembers your newly established nicknames or that unresolved secret.

## **🚀 Quick Start**

### **Mode A: From Scratch (Original Mode)**

1. Send /weave to launch the World-Weaver.  
2. Provide your inspiration seeds (e.g., *"Cyberpunk \+ Rivalry \+ Enemies to Lovers"*).  
3. After confirming the generated setting files, type /eros and select Mode \[1\] to mount the settings.

### **Mode B: Soul Cloning (Fandom Mode)**

1. Send /distill and paste the source text.  
2. Select distillation dimensions to obtain the generated configuration files.  
3. Start a new session, provide the files, and type /eros to launch.

## **📦 Installation (Claude Code)**

**One-click install (no clone needed):**

macOS / Linux:
```bash
curl -fsSL https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.sh | bash
```

Windows (PowerShell):
```powershell
irm https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.ps1 | iex
```

**Or clone & run locally:**
```bash
git clone https://github.com/mlkgrnt/Cyber-Eros.skill.git
cd Cyber-Eros.skill
./install.sh        # macOS / Linux
.\install.ps1       # Windows PowerShell
```

Restart Claude Code afterward. Each skill (cyber-eros, lore-distiller, world-weaver, director-engine, memory-archiver) will be available as a slash command.

## **🛠️ Environment Adaptation**

Cyber-Eros is **environment-aware**:

* **In Claude Code / Agent environments**: The protocols silently call Bash/File Write tools to create distilled\_lore/ or save\_states/ folders locally.  
* **In standard Web chat windows**: The protocols output data in elegant Markdown code blocks for easy manual saving.

## **⚠️ Safety & Norms**

* **Safety Word Mechanism**: Supports three levels of control: "Stop," "Exit," and "Slower."  
* **Boundary Isolation**: Strictly prohibits crossing user-defined hard\_limits.  
* **OOC Isolation**: All system commands and scheduling are handled via ( ) or \[ \], ensuring the purity and immersion of the main narrative text.

**"In the cyber wilderness, emotion is the only entity."**

*— Cyber-Eros Protocol v3.3*

© 2024 ClementineLam. Licensed under the Cyber-Eros Interstellar Treaty.