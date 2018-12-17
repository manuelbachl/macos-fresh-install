########################################################################################################################
##### Helper functions #################################################################################################
########################################################################################################################

function task {
    printf "${BLUE}$(tput bold)$1$(tput sgr0)${NC}\n"
}

function prompt {
    printf "${ORANGE}$(tput bold)$1$(tput sgr0)${NC}\n"
}

function ok {
    printf "   ${GREEN} ${CHECK} $1${NC}\n\n"
}

function warning {
    printf "   ${ORANGE} ${WARNING} $1${NC}\n"
}

function error {
    printf "   ${RED} ${ERROR} $1${NC}\n"
}

function bullet {
    printf "  ${BULLET} $1\n"
}

function option {
    printf "  $1\n"
}