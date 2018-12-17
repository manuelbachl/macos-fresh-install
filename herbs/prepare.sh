########################################################################################################################
##### Set permissions ##################################################################################################
########################################################################################################################
__setPermissions() {
    DIRS=("/usr/local/bin" "/usr/local/include" "/usr/local/lib" "/usr/local/share");
    mkdir -p tmp
    for dir in ${DIRS}; do
        bullet "Setting permissions for $(tput bold)${dir}$(tput sgr0)"
        sudo chgrp admin ${dir}
        sudo chmod g+w ${dir}
        ok "Set permissions for '${dir}'"
    done
}


########################################################################################################################
##### Requirements checks ##############################################################################################
########################################################################################################################
__checkHomebrew() {
    bullet "Checking if $(tput bold)homebrew$(tput sgr0) is installed"
    if hash brew &> /dev/null; then
        ok "homebrew already installed"
    else
        warning "homebrew missing"
        bullet "Installing homebrew"
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        ok "homebrew installed"
        bullet "Installing cask"
        brew install caskroom/cask/brew-cask
        ok "cask installed"
        bullet "Update and cleanup"
        brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
        ok "Updated and cleaned up"
    fi
    bullet "Brew taps (may take a few minutes)"
    brew tap homebrew/cask > /dev/null 2>&1
    brew tap homebrew/cask-fonts > /dev/null 2>&1
    brew tap homebrew/cask-versions > /dev/null 2>&1
    brew tap homebrew/core > /dev/null 2>&1
    brew tap homebrew/services > /dev/null 2>&1
    ok "Taps done"
}

__checkXCode() {
    bullet "Checking if $(tput bold)XCode$(tput sgr0) is installed"
    if xcode-select -p > /dev/null 2>&1; then
        ok "XCode already installed"
    else
        error "XCode must be installed!"
        warning "Follow the setup instructions in the opened window."
        warning "After installing XCode, you need to start XCode and accept the license agreement."
        warning "After that, you can run this recipe again..."
        xcode-select --install
        exit
    fi
}

########################################################################################################################
##### Preparation ######################################################################################################
########################################################################################################################
__prepare() {
    echo
    prompt "Are you sure you want to prepare your system? [y/N]"
    read -r confirmPreparation
    case ${confirmPreparation} in
        [yY][eE][sS]|[yY])
            task "Setting permissions (you may be asked for your sudo password)."
            __setPermissions
            task "Checking requirements"
            __checkHomebrew
            __checkXCode
            echo
            ok "Preparation done. You're ready to heat up the stove"
            ;;
        *)
            warning "Pulled the pot from the stove..."
            ;;
    esac
}
