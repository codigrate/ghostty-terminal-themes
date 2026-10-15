#!/usr/bin/env bash

# Codigrate Ghostty Theme Preview
# Run:
#   bash codigrate-ghostty-theme-preview.sh
#
# Optional:
#   chmod +x codigrate-ghostty-theme-preview.sh
#   ./codigrate-ghostty-theme-preview.sh
#
# This previews your active Ghostty theme using ANSI colors.
# Palette blocks, contrast tests, truecolor, and terminal UI/status sections are intentionally removed.
# Ghostty itself does not parse Java/TypeScript/Python syntax colors.
# This script simulates code-like highlighting with ANSI 0-15 colors,
# so you can judge how your terminal palette feels in real code blocks.

SCRIPT_PATH="$(cd "$(dirname "$0")" && pwd)/$(basename "$0")"
THEMES_ROOT="$(cd "$(dirname "$0")" && pwd)"

RESET="\033[0m"
BOLD="\033[1m"
DIM="\033[2m"
UNDERLINE="\033[4m"

C0="\033[38;5;0m"
C1="\033[38;5;1m"
C2="\033[38;5;2m"
C3="\033[38;5;3m"
C4="\033[38;5;4m"
C5="\033[38;5;5m"
C6="\033[38;5;6m"
C7="\033[38;5;7m"
C8="\033[38;5;8m"
C9="\033[38;5;9m"
C10="\033[38;5;10m"
C11="\033[38;5;11m"
C12="\033[38;5;12m"
C13="\033[38;5;13m"
C14="\033[38;5;14m"
C15="\033[38;5;15m"

CODE_PAD="    "

section() {
  echo
  printf "${BOLD}%s${RESET}\n" "$1"
  printf "──────────────────────────────────────────────────────────────────────────────\n"
}

pause_line() {
  echo
}

header() {
  clear
  printf "\n${BOLD}    Codigrate Ghostty Theme Preview${RESET}\n"
  echo
}

java_preview() {
  section "    Java Preview"

  printf "${CODE_PAD}${C2}// Java preview for Ghostty ANSI colors${RESET}\n"
  printf "${CODE_PAD}${C5}@SpringBootApplication${RESET}\n"
  printf "${CODE_PAD}${C4}public class${RESET} ${C6}Application${RESET} {\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}    ${C4}private static final${RESET} ${C6}String${RESET} APP_NAME = ${C1}\"Codigrate\"${RESET};\n"
  printf "${CODE_PAD}    ${C4}private${RESET} ${C6}int${RESET} count = ${C2}19${RESET};\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}    ${C4}public static void${RESET} ${C3}main${RESET}(${C6}String${RESET}[] args) {\n"
  printf "${CODE_PAD}        ${C6}System${RESET}.out.${C3}println${RESET}(${C1}\"Hello from Java theme preview\"${RESET});\n"
  printf "${CODE_PAD}        ${C4}new${RESET} ${C6}Application${RESET}().${C3}run${RESET}();\n"
  printf "${CODE_PAD}    }\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}    ${C4}public void${RESET} ${C3}run${RESET}() {\n"
  printf "${CODE_PAD}        ${C4}if${RESET} (count > ${C2}10${RESET}) {\n"
  printf "${CODE_PAD}            ${C6}System${RESET}.out.${C3}println${RESET}(APP_NAME + ${C1}\" has themes\"${RESET});\n"
  printf "${CODE_PAD}        } ${C4}else${RESET} {\n"
  printf "${CODE_PAD}            ${C4}throw new${RESET} ${C6}IllegalStateException${RESET}(${C1}\"Not enough themes\"${RESET});\n"
  printf "${CODE_PAD}        }\n"
  printf "${CODE_PAD}    }\n"
  printf "${CODE_PAD}}\n"
}


typescript_preview() {
  section "    TypeScript Preview"

  printf "${CODE_PAD}${C2}// TypeScript preview for Ghostty ANSI colors${RESET}\n"
  printf "${CODE_PAD}${C4}type${RESET} ${C6}ThemeKind${RESET} = ${C1}\"nature\"${RESET} | ${C1}\"city\"${RESET};\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}${C4}interface${RESET} ${C6}Theme${RESET} {\n"
  printf "${CODE_PAD}  name: ${C6}string${RESET};\n"
  printf "${CODE_PAD}  dark: ${C6}boolean${RESET};\n"
  printf "${CODE_PAD}  kind: ${C6}ThemeKind${RESET};\n"
  printf "${CODE_PAD}  downloads: ${C6}number${RESET};\n"
  printf "${CODE_PAD}}\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}${C4}const${RESET} themes: ${C6}Theme${RESET}[] = [\n"
  printf "${CODE_PAD}  { name: ${C1}\"Aurora Borealis\"${RESET}, dark: ${C5}true${RESET}, kind: ${C1}\"nature\"${RESET}, downloads: ${C2}323400${RESET} },\n"
  printf "${CODE_PAD}  { name: ${C1}\"Vienna\"${RESET}, dark: ${C5}true${RESET}, kind: ${C1}\"city\"${RESET}, downloads: ${C2}19000${RESET} },\n"
  printf "${CODE_PAD}];\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}${C4}export function${RESET} ${C3}findTheme${RESET}(name: ${C6}string${RESET}): ${C6}Theme${RESET} | ${C6}undefined${RESET} {\n"
  printf "${CODE_PAD}  ${C4}return${RESET} themes.${C3}find${RESET}(theme => theme.name === name);\n"
  printf "${CODE_PAD}}\n"
}

python_preview() {
  section "    Python Preview"

  printf "${CODE_PAD}${C2}# Python preview for Ghostty ANSI colors${RESET}\n"
  printf "${CODE_PAD}${C4}from${RESET} dataclasses ${C4}import${RESET} ${C6}dataclass${RESET}\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}${C5}@dataclass${RESET}\n"
  printf "${CODE_PAD}${C4}class${RESET} ${C6}Theme${RESET}:\n"
  printf "${CODE_PAD}    name: ${C6}str${RESET}\n"
  printf "${CODE_PAD}    dark: ${C6}bool${RESET}\n"
  printf "${CODE_PAD}    downloads: ${C6}int${RESET} = ${C2}0${RESET}\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}${C4}def${RESET} ${C3}describe${RESET}(theme: ${C6}Theme${RESET}) -> ${C6}str${RESET}:\n"
  printf "${CODE_PAD}    ${C4}if${RESET} theme.dark:\n"
  printf "${CODE_PAD}        ${C4}return${RESET} ${C1}f\"{theme.name} is a focused dark theme\"${RESET}\n"
  printf "${CODE_PAD}    ${C4}return${RESET} ${C1}f\"{theme.name} is a calm light theme\"${RESET}\n"
}

menu() {
  echo
  printf "${BOLD}Choose preview:${RESET}\n"
  echo "  1) Full preview"
  echo "  2) Java"
  echo "  3) TypeScript"
  echo "  4) Python"
  echo "  5) Shell"
  echo "  6) Git diff"
  echo "  0) Exit"
  echo
  printf "Selection: "
}

full_preview() {
  header
  java_preview
  typescript_preview
  python_preview
  pause_line
}

run_choice() {
  case "$1" in
    1) full_preview ;;
    2) header; java_preview ;;
    3) header; typescript_preview ;;
    4) header; python_preview ;;
    5) header; shell_preview ;;
    6) header; git_diff_preview ;;
    0) exit 0 ;;
    *) echo "Invalid selection." ;;
  esac
}

find_theme_file() {
  # Accepts a theme name (with or without the "Codigrate " prefix) or a path, and echoes the
  # matching Ghostty theme file (the extensionless "Codigrate <Name>" file in its theme folder).
  local query="$1"

  if [[ -f "$query" ]]; then
    printf "%s\n" "$query"
    return 0
  fi

  local base
  base="$(basename "$query")"

  find "$THEMES_ROOT/nature" "$THEMES_ROOT/cities" -type f -name "Codigrate *" ! -name "*.png" 2>/dev/null \
    | while IFS= read -r f; do
        local name
        name="$(basename "$f")"
        if [[ "$name" == "$base" || "$name" == "Codigrate $base" || "$name" == *"$base" ]]; then
          printf "%s\n" "$f"
        fi
      done | head -n 1
}

open_theme() {
  # Opens a Ghostty window painted with the theme, sized like every screenshot in this repo
  # (222x63), titled like them, and renders the full preview inside it - ready to screenshot
  # (Cmd+Shift+4, Space, click the window). Nothing in your Ghostty config changes: the theme,
  # the size, the title and the command are passed on the command line of a new Ghostty instance.
  local file="$1"

  if [[ -z "$file" || ! -f "$file" ]]; then
    printf "Theme file not found.\n" >&2
    return 1
  fi

  local title
  title="...$(printf "%s" "$THEMES_ROOT" | sed -E 's#^.*(/Documents/GitHub/[^/]+)$#\1#')"

  open -na Ghostty --args \
    --theme="$file" \
    --working-directory="$THEMES_ROOT" \
    --window-width=222 \
    --window-height=63 \
    --title="$title" \
    --command="bash -c 'clear; bash \"$SCRIPT_PATH\" --full; read -r _'"
}

open_all() {
  local files=()
  while IFS= read -r f; do files+=("$f"); done < <(
    find "$THEMES_ROOT/nature" "$THEMES_ROOT/cities" -type f -name "Codigrate *" ! -name "*.png" 2>/dev/null | sort
  )

  if [[ ${#files[@]} -eq 0 ]]; then
    printf "No theme files found under %s\n" "$THEMES_ROOT" >&2
    return 1
  fi

  printf "Opening %d themes - screenshot each window, then press Enter for the next.\n\n" "${#files[@]}"
  for f in "${files[@]}"; do
    printf "-> %s\n" "$(basename "$f")"
    open_theme "$f"
    printf "   Screenshot the window, then press Enter to continue... "
    read -r _
  done
  printf "\nDone.\n"
}

usage() {
  cat <<USAGE
Codigrate Ghostty Theme Preview

  bash theme-preview.sh                 the preview menu in this window
  bash theme-preview.sh --full          render the full preview in this window
  bash theme-preview.sh --open "<name>" open Ghostty with a theme + preview (222x63)
  bash theme-preview.sh --all           step through every theme (for screenshots)

Examples:
  bash theme-preview.sh --open "Codigrate London"
  bash theme-preview.sh --open "Tokyo"
USAGE
}

case "${1:-}" in
  --open)  open_theme "$(find_theme_file "${2:-}")"; exit 0 ;;
  --all)   open_all; exit 0 ;;
  -h|--help) usage; exit 0 ;;
esac

if [[ "${1:-}" == "--full" ]]; then
  full_preview
  exit 0
fi

if [[ "${1:-}" == "--java" ]]; then
  header
  java_preview
  exit 0
fi


while true; do
  header
  menu
  read -r choice
  run_choice "$choice"
  echo
  printf "Press Enter to return to menu..."
  read -r _
done
