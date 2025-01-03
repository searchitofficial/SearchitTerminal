# Qwant Junior Search Function

function qwantjr() {
    dbCheck
    query=${tmpquery//\ /+}
    if [ "$opParam" == '-news' ] || [ "$opParam" == '-nws' ]
            then {
              query=${query/-nws+}
              query=${query/-news+}
              option="&t=news"
        }
    elif [ "$opParam" == '-image' ] || [ "$opParam" == '-img' ]
            then {
              query=${query/-img+}
              query=${query/-image+}
              option="&t=images"
      }
    elif [ "$opParam" == '-video' ] || [ "$opParam" == '-vid' ]
        then {
          query=${query/-vid+}
          query=${query/-video+}
          option="&t=videos"
    }
    elif [ "$opParam" == '-education' ] || [ "$opParam" == '-edu' ]
        then {
          query=${query/-edu+}
          query=${query/-education+}
          option="&t=education"
    }
    elif [ "$opParam" == '-board' ] || [ "$opParam" == '-brd' ]
        then {
          query=${query/-brd+}
          query=${query/-board+}
          query=${query/-qwntjr+}
          query=${query/-qwantjunior+}
          $browser www.qwantjunior.com/carnets/?q=$query
          exit
    }
    elif [ "$opParam" == '-note' ] || [ "$opParam" == '-nte' ]
        then {
          query=${query/-nte+}
          query=${query/-note+}
          query=${query/-qwntjr+}
          query=${query/-qwantjunior+}
          $browser www.qwantjunior.com/carnets/notes?q=$query
          exit
    }
    elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
          then {
            echo "  ${aqua}${bold}Qwant Jr. Search Filters: ${normal}
                    For News             -news             -nws
                    For Images           -image            -img
                    For Videos           -video            -vid
                    For Education        -education        -edu
                    For Notes            -note             -nte
                    For Boards           -board            -brd
                 "
            exit
      }
    else {
          option="&t=web"
        }
    fi
  query=${query/-qwntjr+}
  query=${query/-qwantjunior+}
  $browser www.qwantjunior.com/?q=$query$option
}
