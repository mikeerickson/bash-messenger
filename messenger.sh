#!/usr/bin/env bash
# messenger.sh

VERSION="1.0.0"

# https://askubuntu.com/questions/558280/changing-colour-of-text-and-background-of-terminal
# https://www.google.com/search?q=bash+colors+background+yellow


test_messenger() {
    printf "\n"

    version
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
        printf "\e[32m$1\e[39;49;00m\n";
    else
        printf "\e[30;42;11;87m$2\e[39;49;00m\e[32m $1\e[39;49;00m\n";
    fi
}

error() {
    if [ -z "$2" ]; then
        printf "\e[31m$1\e[39;49;00m\n";
    else
        printf "\e[30;41;11;87m$2\e[39;49;00m\e[31m $1\e[39;49;00m\n";
    fi
}

info() {
    if [ -z "$2" ]; then
        printf "\e[34;11m$1\e[39;49;00m\n";
    else
        printf "\e[30;44;11;87m$2\e[39;49;00m\e[34m $1\e[39;49;00m\n";
    fi
}

warning() {
    if [ -z "$2" ]; then
        printf "\e[33m$1\e[39;49;00m\n";
    else
        printf "\e[30;43;11;87m$2\e[39;49;00m\e[33m $1\e[39;49;00m\n";
    fi
}

warn() {
    if [ -z "$2" ]; then
        printf "\e[33m$1\e[39;49;00m\n";
    else
        printf "\e[30;43;11;87m$2\e[39;49;00m\e[33m $1\e[39;49;00m\n";
    fi
}

important() {
    if [ -z "$2" ]; then
        printf "\e[33m$1\e[39;49;00m\n";
    else
        printf "\e[30;43;11;87m$2\e[39;49;00m\e[33m $1\e[39;49;00m\n";
    fi
}

log() {
    if [ -z "$2" ]; then
        printf "$1\n";
    else
        printf "\e[30;107;11;87m$2\e[39;49;00m $1\n";
    fi
}

status() {
    if [ -z "$2" ]; then
        printf "\e[35m$1\e[39;49;00m\n";
    else
        printf "\e[30;45;11;87m$2\e[39;49;00m\e[35m $1\e[39;49;00m\n";
    fi
}

note() {
    # note: { fg: '38m', bg: '48m' },
    if [ -z "$2" ]; then
        printf "$1\n";
    else
        printf "\e[30;107;11;87m$2\e[39;49;00m $1\n";
    fi
}

notice() {
    if [ -z "$2" ]; then
        printf "\e[34m$1\e[39;49;00m\n";
    else
        printf "\e[30;44;11;87m$2\e[39;49;00m\e[34m $1\e[39;49;00m\n";
    fi
}
