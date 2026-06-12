# **💽 Ecosistema del Protocolo Cyber-Eros**

**Solución completa de roleplay de texto inmersivo automatizado impulsado por director.**

---

## **🌟 Descripción del Proyecto**

**Cyber-Eros (v3.5.0)** es un **ecosistema de habilidades para Claude Code** — más que solo un prompt de roleplay; es un **ecosistema narrativo** completo. Este proyecto utiliza diseño de protocolo modular para resolver los puntos débiles principales en el roleplay de texto a largo plazo: importación tediosa de configuraciones, estancamiento de la trama, desvanecimiento de la memoria a medida que aumentan los tokens, y la dificultad de mantener estilos de escritura consistentes.

---

## **🆕 Novedades en v3.5**

- **Condiciones de activación** — guía clara sobre cuándo usar cada habilidad
- **16 ejemplos** — ejemplos detallados de entrada→salida para todos los escenarios
- **Listas de verificación de calidad** — auto-verificación después de usar cada habilidad
- **Manejo de errores** — recuperación elegante ante fallos comunes
- **Historial de versiones** — seguimiento de cambios entre versiones

---

## **🏗️ Descripción General del Ecosistema (Módulos)**

La familia Cyber-Eros consiste en cinco protocolos principales que pueden ejecutarse independientemente o colaborar sin problemas:

| Nombre del Protocolo | Función Principal | Activación | Cuándo Usar |
| :---- | :---- | :---- | :---- |
| **Cyber-Eros** | **[Motor Principal]** Impulsa la máquina de estados y la pirámide sensorial; despacha el ecosistema. | /eros | Iniciar una sesión de RP |
| **Lore-Distiller** | **[Destilación de Lore]** Extrae configuraciones, tramas y estilos de novelas o textos largos. | /distill | Extraer configuraciones de novelas |
| **World-Weaver** | **[Tejido de Mundos]** Genera automáticamente una construcción de mundo original completa a partir de una semilla. | /weave | Crear configuraciones originales |
| **Director-Engine** | **[Motor del Director]** Monitorea el estancamiento, inyecta variables e impulsa el modo sin fin. | (Auto-activado) | Cuando la trama se estanca |
| **Memory-Archiver** | **[Archivado de Memoria]** Plegado de contexto de alta densidad para funcionalidad perfecta de guardar/cargar. | /archive | Guardar/cargar sesiones |

---

## **🚀 Inicio Rápido**

### **Instalación con un clic**

```bash
# Linux / Mac
bash <(curl -s https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.sh)

# Windows (PowerShell)
irm https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.ps1 | iex
```

### **Instalación manual**

```bash
git clone https://github.com/mlkgrnt/Cyber-Eros.skill.git
cd Cyber-Eros.skill
./install.sh    # Linux / Mac
.\install.ps1   # Windows
```

### **Uso**

1. **Selecciona tu modo**: Comienza desde cero (`/weave`) o clona un alma (`/distill`)
2. **Inicializa el motor**: Usa `/eros` para montar configuraciones e iniciar la sesión
3. **Impulso narrativo**: El **Director-Engine** gestiona automáticamente el ritmo de la trama y el entorno

---

## **🔒 Características de Seguridad**

- **Palabras de seguridad** — "停下", "退出", "pause", "stop" pausan inmediatamente la sesión
- **Límites duros** — Los límites absolutos establecidos durante la configuración siempre se respetan
- **Máquina de estados** — La progresión gradual previene escenarios forzados
- **Soporte OOC** — El texto entre paréntesis/corchetes se trata como fuera de personaje

---

## **🔗 Ver También**

- [Learn-Language](https://github.com/mlkgrnt/Learn-Language) — Sistema interactivo de aprendizaje de idiomas del mismo autor

---

## **⚖️ Licencia y Créditos**

Desarrollado por **ClementineLam**.

© 2024. Licenciado bajo el **Tratado Interestelar Cyber-Eros**.

*"La línea entre fantasma y máquina se traza con palabras."*
