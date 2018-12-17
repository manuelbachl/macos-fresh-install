########################################################################################################################
##### Heat up ##########################################################################################################
########################################################################################################################
__heatUp() {
    echo
    prompt "Select which recipe you want to cook (enter the number):"
    echo
    option "[1] Developer"
    option "[2] Designer"
    option "[X] I'm a Master chef, I want to improvise"
    echo
    read -r userType
    case ${userType} in
        1)
            task "Reading ingredients/cask/developer.sh"
            IFS=$'\n' read -d '' -r casks < ${pwd}/ingredients/cask/developer.sh
            if [[ ${casks[@]} > 0 ]]
                then
                    ok "${#casks[@]} $1 to install"
                    for i in "${casks[@]}"
                    do
                        echo
                        bullet "Install ${i}"
                        # brew cask install $i
                        ok "Done brewing cask ${i}"
                    done
                else
                    warning "No $1 selected"
            fi
            ;;
        2)
            ok "Designer"
            ;;
        [xX])
            ok "Hope you know what you do"
            ;;
        *)
            exit
            warning "Please select a proper option"
            __heatUp
            ;;
    esac
}
