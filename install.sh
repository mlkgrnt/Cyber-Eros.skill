#!/usr/bin/env bash
# Cyber-Eros.skill 一键安装脚本 (Unix/macOS)
# 用法 (远程): curl -fsSL https://raw.githubusercontent.com/mlkgrnt/Cyber-Eros.skill/main/install.sh | bash
# 用法 (本地): ./install.sh
# 将技能安装到 ~/.claude/skills/

set -euo pipefail

REPO_URL="https://github.com/mlkgrnt/Cyber-Eros.skill.git"
SKILLS_DIR="${HOME}/.claude/skills"
SKILLS=("cyber-eros" "director-engine" "lore-distiller" "memory-archiver" "world-weaver")
CLEANUP_DIR=""

echo "=== Cyber-Eros.skill Installer ==="
echo ""

# 检测是否已在仓库目录中（有 SKILL.md 的子文件夹）
is_local_clone() {
    for skill in "${SKILLS[@]}"; do
        if [ ! -d "./${skill}" ]; then
            return 1
        fi
    done
    return 0
}

# 获取技能源目录
if is_local_clone; then
    echo "  Detected local repository."
    SOURCE_DIR="."
else
    echo "  Local repository not found, downloading from GitHub..."
    echo "  URL: ${REPO_URL}"
    echo ""

    # 检查 git
    if ! command -v git &>/dev/null; then
        echo "  ERROR: git is not installed." >&2
        echo "  Please install git first: https://git-scm.com/" >&2
        exit 1
    fi

    # clone 到临时目录
    CLEANUP_DIR=$(mktemp -d)
    if ! git clone --depth 1 "${REPO_URL}" "${CLEANUP_DIR}/repo" 2>&1; then
        echo "  ERROR: Failed to clone repository." >&2
        rm -rf "${CLEANUP_DIR}"
        exit 1
    fi

    SOURCE_DIR="${CLEANUP_DIR}/repo"
    echo "  Download complete."
fi

# 创建目标目录
mkdir -p "${SKILLS_DIR}"

installed=0
errors=()

for skill in "${SKILLS[@]}"; do
    src="${SOURCE_DIR}/${skill}"
    dst="${SKILLS_DIR}/${skill}"

    if [ ! -d "${src}" ]; then
        errors+=("SKIPPED: '${skill}' — source folder not found at ${src}")
        continue
    fi

    # Remove existing if present
    rm -rf "${dst}"

    # Copy recursively
    cp -r "${src}" "${SKILLS_DIR}/"
    installed=$((installed + 1))
    echo "  INSTALLED: ${skill}"
done

# 清理临时目录
if [ -n "${CLEANUP_DIR}" ]; then
    rm -rf "${CLEANUP_DIR}"
fi

echo ""
echo "=== Results ==="
echo "  ${installed} / ${#SKILLS[@]} skills installed to ${SKILLS_DIR}"

if [ ${#errors[@]} -gt 0 ]; then
    echo ""
    echo "Warnings:" >&2
    for e in "${errors[@]}"; do
        echo "  ${e}" >&2
    done
fi

echo ""
echo "Installed skills:"
for d in "${SKILLS_DIR}"/*/; do
    [ -d "${d}" ] && echo "  - $(basename "${d}")"
done

echo ""
echo "Done! Restart Claude Code to use the new skills."
