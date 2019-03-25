#!/usr/bin/env bash

# Colors used for status updates
ESC_SEQ="\x1b["
COL_RESET=${ESC_SEQ}"39;49;00m"
COL_RED=${ESC_SEQ}"0;31m"
COL_LRED=${ESC_SEQ}"31;01m"
COL_GREEN=${ESC_SEQ}"0;32m"
COL_LGREEN=${ESC_SEQ}"32;01m"
COL_YELLOW=${ESC_SEQ}"0;33m"
COL_LYELLOW=${ESC_SEQ}"33;01m"
COL_BLUE=${ESC_SEQ}"0;34m"
COL_LBLUE=${ESC_SEQ}"34;01m"
COL_MAGENTA=${ESC_SEQ}"0;35m"
COL_LMAGENTA=${ESC_SEQ}"35;01m"
COL_CYAN=${ESC_SEQ}"0;36m"
COL_LCYAN=${ESC_SEQ}"36;01m"
COL_WHITE=${ESC_SEQ}"0;37m"
COL_WHITE=${ESC_SEQ}"37;01m"

# added COLOR... prefix, leaving COL... for backwards compatability
COLOR_RESET=${ESC_SEQ}"39;49;00m"
COLOR_RED=${ESC_SEQ}"0;31m"
COLOR_LRED=${ESC_SEQ}"31;01m"
COLOR_GREEN=${ESC_SEQ}"0;32m"
COLOR_LGREEN=${ESC_SEQ}"32;01m"
COLOR_YELLOW=${ESC_SEQ}"0;33m"
COLOR_LYELLOW=${ESC_SEQ}"33;01m"
COLOR_BLUE=${ESC_SEQ}"0;34m"
COLOR_LBLUE=${ESC_SEQ}"34;01m"
COLOR_MAGENTA=${ESC_SEQ}"0;35m"
COLOR_LMAGENTA=${ESC_SEQ}"35;01m"
COLOR_CYAN=${ESC_SEQ}"0;36m"
COLOR_LCYAN=${ESC_SEQ}"36;01m"
COLOR_WHITE=${ESC_SEQ}"0;37m"
COLOR_WHITE=${ESC_SEQ}"37;01m"


### SAMPLE
# printf "\n ${COL_GREEN}[ •• ]${COL_RESET} ${COL_YELLOW} ==> Copying files to ${COL_CYAN}./examples${COL_GREEN} ...   ${COL_RESET}\n"
###