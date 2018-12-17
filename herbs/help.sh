########################################################################################################################
##### Help function ####################################################################################################
########################################################################################################################
__help() {
    case "$1" in
    "help")
        printf "${BLUE}$(tput bold)The following commands are available in this cli tool:$(tput sgr0)${NC}\n"
        printf ${HELPGENERAL};
        printf ${HELPCACHE}
        ;;
    "help:cache")
        printf "\n${BLUE}$(tput bold)The following 'cache' related commands are available in this cli tool:$(tput sgr0)${NC}\n"
        printf "${HELPCACHE}\n"
        ;;
    *)
        __help "help"
        ;;
    esac
}
