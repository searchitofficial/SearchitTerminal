# Default Browser Check

function dbCheck() {
    tmpBrowser=$(cat ~/.config/SearchitTerminal/searchit.cfg | grep "Browser")
    tmpBrowser=${tmpBrowser/Default\ Browser:\ }
    tmpBrowser=${tmpBrowser//\ /+}
    if [ "$tmpBrowser" == "Firefox" ]
        then {
            browser=firefox
        }
    elif [ "$tmpBrowser" == "Google+Chrome" ]
        then {
            browser=google-chrome
        }
    elif [ "$tmpBrowser" == "Opera" ]
        then {
            browser=opera
        }
    elif [ "$tmpBrowser" == "Chromium" ]
        then {
            browser=chromium-browser
        }
    elif [ "$tmpBrowser" == "Brave" ]
        then {
            browser=brave-browser
        }
    elif [ "$tmpBrowser" == "Vivaldi" ]
        then {
            browser=vivaldi
        }
    elif [ "$tmpBrowser" == "Links" ]
        then {
            browser=links
        }
    elif [ "$tmpBrowser" == "W3m" ]
        then {
            browser=w3m
        }
    elif [ "$tmpBrowser" == "Lynx" ]
        then {
            browser=lynx
        }
    else {
        echo "${orange}${blink}ERROR: Unable to read configuration file${normal}"
    }
    fi
}
