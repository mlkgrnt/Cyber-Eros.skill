# **💽 Ecosistema del Protocolo Cyber-Eros** 

**Solución integral de juegos de rol (RP) de texto con inmersión profunda, impulsada por un director automatizado.**

## **🌟 Resumen del Proyecto**

**Cyber-Eros (v3.3.0)** es un **ecosistema de skills de Claude Code** — no es simplemente un prompt de juego de rol; es un **ecosistema narrativo** completo. Este proyecto ha sido diseñado mediante protocolos modulares para resolver los puntos críticos de los juegos de rol de larga duración: la tediosa importación de configuraciones, el estancamiento de la trama, la pérdida de memoria debido al límite de tokens y la dificultad para mantener un estilo de escritura coherente.

Desarrollado por **ClementineLam**, el proyecto soporta un ciclo cerrado que abarca desde la "creación de mundos desde cero" hasta la "destilación de textos largos" y la "gestión automatizada de conflictos". Cada módulo es un skill independiente de Claude Code con su propio `SKILL.md`.

## **🏗️ Panorama del Ecosistema (Módulos)**

La familia Cyber-Eros incluye cinco protocolos principales que pueden funcionar de forma independiente o colaborar sin fisuras:

| Nombre del Protocolo | Función Principal | Palabras Clave de Activación |
| :---- | :---- | :---- |
| **Cyber-Eros** | **\[Motor Central\]** Impulsa la máquina de estados y la pirámide sensorial; gestiona el ecosistema. | /eros, /ce |
| **Lore-Distiller** | **\[Destilación de Lore\]** Extrae personajes, trama y estilo a partir de novelas o textos largos. | /distill, /蒸馏 |
| **World-Weaver** | **\[Tejedor de Mundos\]** Genera un mundo original completo a partir de una semilla de inspiración. | /weave, /创世 |
| **Director-Engine** | **\[Motor de Director\]** Monitoriza el estancamiento, inyecta variables y activa el modo infinito. | (llamar al director), (lanzar variable) |
| **Memory-Archiver** | **\[Archivador de Memoria\]** Comprime el contexto en alta densidad para un "guardado/carga" perfecto. | /archive, /存档 |

## **🔥 Características Principales**

### **1\. 🎭 Mecanismo de Director Automatizado (Director-Driven)**

Elimina la necesidad de que el usuario fuerce el avance de la trama. **Director-Engine** monitoriza la sesión en tiempo real:

* **Rompehielos (Deadlock Breaker)**: Si detecta estancamiento, activa cambios ambientales (cortes de luz, intrusos).  
* **Acelerador de Trama (Plot Accelerator)**: Inyecta pistas críticas o crisis de tiempo cuando los personajes se sumergen demasiado en la intimidad.  
* **Modo Infinito (Endless Mode)**: Tras resolver la trama principal, genera episodios cotidianos o nuevos desafíos de convivencia.

### **2\. 🧪 Destilación y Montaje de Lore Extremo**

Mediante **Lore-Distiller**, puedes "licuar" novelas de diez mil palabras en archivos estructurados .md y .json. El sistema no solo extrae datos rígidos, sino que clona las "características sintácticas" y las "preferencias sensoriales" de la obra original, eliminando la sensación de "IA genérica".

### **3\. 🕸️ Apropiación del Entorno y Motor Sensorial**

El motor central sigue la lógica de la **Pirámide Sensorial** (Auditivo-Visual-Táctil-Olfativo-Emocional) y obliga a la **"Apropiación del Entorno"**: cada descripción debe involucrar objetos del entorno (ej. paredes frías, sábanas arrugadas, sombras parpadeantes).

### **4\. 💾 Guardado Continuo y Máquina de Estados**

El **Memory-Archiver** integrado permite "reducir la dimensión" de los diálogos extensos. Registra el **Salto de Relación (Relationship Delta)** en lugar de repeticiones de diálogo, asegurando que incluso en una nueva sesión, la IA recuerde el apodo recién establecido o ese secreto no revelado.

## **🚀 Inicio Rápido**

### **Modo A: Desde Cero (Modo Original)**

1. Envía /weave para activar el Tejedor de Mundos.  
2. Proporciona tus semillas de inspiración (ej: *"Cyberpunk \+ Rivales \+ Enemigos a amantes"*).  
3. Tras confirmar los archivos de configuración, escribe /eros y selecciona el Modo \[1\].

### **Modo B: Clonación de Almas (Modo Fandom)**

1. Envía /distill y pega el texto de la obra original.  
2. Selecciona las dimensiones de destilación para obtener los archivos de configuración.  
3. Inicia una nueva sesión, entrega los archivos y escribe /eros para comenzar.

## **📦 Instalación (Claude Code)**

**Instalación con un clic (sin necesidad de clonar):**

macOS / Linux:
```bash
curl -fsSL https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.sh | bash
```

Windows (PowerShell):
```powershell
irm https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.ps1 | iex
```

**O clonar y ejecutar localmente:**
```bash
git clone https://github.com/mlkgrnt/Cyber-Eros.skill.git
cd Cyber-Eros.skill
./install.sh        # macOS / Linux
.\install.ps1       # Windows PowerShell
```

Reinicie Claude Code. Cada skill (cyber-eros, lore-distiller, world-weaver, director-engine, memory-archiver) estará disponible como comando de barra.

## **🛠️ Adaptación al Entorno**

Cyber-Eros tiene **capacidad de percepción del entorno**:

* **En entornos de Agentes (ej. Claude Code)**: El protocolo llama silenciosamente a herramientas de escritura de archivos para crear las carpetas distilled\_lore/ o save\_states/ localmente.  
* **En ventanas de chat web estándar**: El protocolo genera bloques de código Markdown elegantes para que el usuario los guarde manualmente.

## **⚠️ Seguridad y Normas**

* **Mecanismo de Palabras de Seguridad**: Soporta tres niveles: "Para/Stop", "Salir/Exit" y "Más despacio".  
* **Aislamiento de Límites**: Prohibición absoluta de cruzar los hard\_limits definidos por el usuario.  
* **Aislamiento OOC**: Todas las instrucciones del sistema y programaciones se realizan mediante ( ) o \[ \], asegurando la pureza de la narrativa.

**"En el desierto cibernético, la emoción es la única entidad."**

*— Protocolo Cyber-Eros v3.3*

© 2024 ClementineLam. Licenciado bajo el Tratado Interestelar Cyber-Eros.