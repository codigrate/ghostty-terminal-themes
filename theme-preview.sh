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

  printf "${CODE_PAD}${C8}// Java preview for Ghostty ANSI colors${RESET}\n"
  printf "${CODE_PAD}${C3}@SpringBootApplication${RESET}\n"
  printf "${CODE_PAD}${C5}public class${RESET} ${C4}Application${RESET} {\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}    ${C5}private static final${RESET} ${C4}String${RESET} APP_NAME = ${C2}\"Codigrate\"${RESET};\n"
  printf "${CODE_PAD}    ${C5}private${RESET} ${C4}int${RESET} count = ${C1}19${RESET};\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}    ${C5}public static void${RESET} ${C6}main${RESET}(${C4}String${RESET}[] args) {\n"
  printf "${CODE_PAD}        ${C4}System${RESET}.out.${C6}println${RESET}(${C2}\"Hello from Java theme preview\"${RESET});\n"
  printf "${CODE_PAD}        ${C5}new${RESET} ${C4}Application${RESET}().${C6}run${RESET}();\n"
  printf "${CODE_PAD}    }\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}    ${C5}public void${RESET} ${C6}run${RESET}() {\n"
  printf "${CODE_PAD}        ${C5}if${RESET} (count > ${C1}10${RESET}) {\n"
  printf "${CODE_PAD}            ${C4}System${RESET}.out.${C6}println${RESET}(APP_NAME + ${C2}\" has themes\"${RESET});\n"
  printf "${CODE_PAD}        } ${C5}else${RESET} {\n"
  printf "${CODE_PAD}            ${C5}throw new${RESET} ${C4}IllegalStateException${RESET}(${C2}\"Not enough themes\"${RESET});\n"
  printf "${CODE_PAD}        }\n"
  printf "${CODE_PAD}    }\n"
  printf "${CODE_PAD}}\n"
}


typescript_preview() {
  section "    TypeScript Preview"

  printf "${CODE_PAD}${C8}// TypeScript preview for Ghostty ANSI colors${RESET}\n"
  printf "${CODE_PAD}${C5}type${RESET} ${C4}ThemeKind${RESET} = ${C2}\"nature\"${RESET} | ${C2}\"city\"${RESET};\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}${C5}interface${RESET} ${C4}Theme${RESET} {\n"
  printf "${CODE_PAD}  name: ${C4}string${RESET};\n"
  printf "${CODE_PAD}  dark: ${C4}boolean${RESET};\n"
  printf "${CODE_PAD}  kind: ${C4}ThemeKind${RESET};\n"
  printf "${CODE_PAD}  downloads: ${C4}number${RESET};\n"
  printf "${CODE_PAD}}\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}${C5}const${RESET} themes: ${C4}Theme${RESET}[] = [\n"
  printf "${CODE_PAD}  { name: ${C2}\"Aurora Borealis\"${RESET}, dark: ${C3}true${RESET}, kind: ${C2}\"nature\"${RESET}, downloads: ${C1}323400${RESET} },\n"
  printf "${CODE_PAD}  { name: ${C2}\"Vienna\"${RESET}, dark: ${C3}true${RESET}, kind: ${C2}\"city\"${RESET}, downloads: ${C1}19000${RESET} },\n"
  printf "${CODE_PAD}];\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}${C5}export function${RESET} ${C6}findTheme${RESET}(name: ${C4}string${RESET}): ${C4}Theme${RESET} | ${C4}undefined${RESET} {\n"
  printf "${CODE_PAD}  ${C5}return${RESET} themes.${C6}find${RESET}(theme => theme.name === name);\n"
  printf "${CODE_PAD}}\n"
}

python_preview() {
  section "    Python Preview"

  printf "${CODE_PAD}${C8}# Python preview for Ghostty ANSI colors${RESET}\n"
  printf "${CODE_PAD}${C5}from${RESET} dataclasses ${C5}import${RESET} ${C4}dataclass${RESET}\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}${C3}@dataclass${RESET}\n"
  printf "${CODE_PAD}${C5}class${RESET} ${C4}Theme${RESET}:\n"
  printf "${CODE_PAD}    name: ${C4}str${RESET}\n"
  printf "${CODE_PAD}    dark: ${C4}bool${RESET}\n"
  printf "${CODE_PAD}    downloads: ${C4}int${RESET} = ${C1}0${RESET}\n"
  printf "${CODE_PAD}\n"
  printf "${CODE_PAD}${C5}def${RESET} ${C6}describe${RESET}(theme: ${C4}Theme${RESET}) -> ${C4}str${RESET}:\n"
  printf "${CODE_PAD}    ${C5}if${RESET} theme.dark:\n"
  printf "${CODE_PAD}        ${C5}return${RESET} ${C2}f\"{theme.name} is a focused dark theme\"${RESET}\n"
  printf "${CODE_PAD}    ${C5}return${RESET} ${C2}f\"{theme.name} is a calm light theme\"${RESET}\n"
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
