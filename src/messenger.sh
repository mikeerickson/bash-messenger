#!/usr/bin/env bash
# messenger.sh

VERSION="1.0.0"

ESC_SEQ="\x1b["
COL_RESET=${ESC_SEQ}"39;49;00m"
COL_GREEN=${ESC_SEQ}"0;32m"
COL_RED=${ESC_SEQ}"0;31m"
COL_YELLOW=${ESC_SEQ}"0;33m"
COL_BLUE=${ESC_SEQ}"0;34m"
COL_MAGENTA=${ESC_SEQ}"0;35m"
COL_CYAN=${ESC_SEQ}"0;36m"
COL_WHITE=${ESC_SEQ}"0;37m"

test_messenger() {
    printf "\n"
    
    version
    printf "\n"
    printf "\n"
    
    success "Success Message" " SUCCESS "
    success "Success Message"
    printf "\n"
    
    error "Error Message" " ERROR "
    error "Error Message"
    printf "\n"
    
    warning "Warning Message" " WARNING "
    warning "Warning Message"
    printf "\n"
    
    warn "Warn Message" " WARN "
    warn "Warn Message"
    printf "\n"
    
    info "Info Message" " INFO "
    info "Info Message"
    printf "\n"
    
    note "Note Message" " NOTE "
    note "Note Message"
    printf "\n"
    
    log "Log Message" " LOG "
    log "Log Message"
    printf "\n"
    
    debug "Debug Message" " DEBUG "
    debug "Debug Message"
    printf "\n"
    
    status "Status Message" " STATUS "
    status "Status Message"
    printf "\n"
    
    important "Important Message" " IMPORTANT "
    important "Important Message"
    printf "\n"
    
    notice "Notice Message" " NOTICE "
    notice "Notice Message"
    printf "\n"
}

version() {
    info "Bash Messenger v$VERSION"
    warning "Crafted with love by Codedungeon"
}

success() {
    if [ -z "$2" ]; then
        printf "$COL_GREEN$1$COL_RESET\n";
    else
        printf "\e[30;42;11;87m$2$COL_GREEN $1 $COL_RESET\n";
    fi
}

error() {
    if [ -z "$2" ]; then
        printf "$COL_RED$1$COL_RESET\n";
    else
        printf "\e[30;41;11;87m$2$COL_RED $1$COL_RESET\n";
    fi
}

info() {
    if [ -z "$2" ]; then
        printf "$COL_BLUE$1$COL_RESET\n";
    else
        printf "\e[30;44;11;87m$2$COL_BLUE $1$COL_RESET\n";
    fi
}

warning() {
    if [ -z "$2" ]; then
        printf "$COL_YELLOW$1$COL_RESET\n";
    else
        printf "\e[30;43;11;87m$2$COL_YELLOW $1$COL_RESET\n";
    fi
}

warn() {
    if [ -z "$2" ]; then
        printf "$COL_YELLOW$1$COL_RESET\n";
    else
        printf "\e[30;43;11;87m$2$COL_YELLOW $1$COL_RESET\n";
    fi
}

important() {
    if [ -z "$2" ]; then
        printf "\e[33m$1$COL_RESET\n";
    else
        printf "\e[30;43;11;87m$2$COL_RESET\e[33m $1$COL_RESET\n";
    fi
}

log() {
    if [ -z "$2" ]; then
        printf "$1\n";
    else
        printf "\e[30;107;11;87m$2$COL_RESET $1\n";
    fi
}

debug() {
    if [ -z "$2" ]; then
        printf "$1\n";
    else
        printf "\e[30;107;11;87m$2$COL_RESET $1\n";
    fi
}

status() {
    if [ -z "$2" ]; then
        printf "$COL_MAGENTA$1$COL_RESET\n";
    else
        printf "\e[30;45;11;87m$2$COL_MAGENTA $1$COL_RESET\n";
    fi
}

note() {
    if [ -z "$2" ]; then
        printf "$1\n";
    else
        printf "\e[30;107;11;87m$2$COL_RESET $1\n";
    fi
}

notice() {
    if [ -z "$2" ]; then
        printf "$COL_CYAN$1$COL_RESET\n";
    else
        printf "\e[30;46;11;87m$2$COL_CYAN $1$COL_RESET\n";
    fi
}
