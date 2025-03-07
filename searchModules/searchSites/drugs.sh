# Amazon Search Function

function drugs() {
    dbCheck
    query=${tmpquery//\ /+}
    if [ "$opParam" == '-csr' ] || [ "$opParam" == '-consumer' ]
            then {
              query=${query/-csr+}
              query=${query/-consumer+}
              option="consumer"
        }
    elif [ "$opParam" == '-pro' ] || [ "$opParam" == '-professional' ]
            then {
              query=${query/-pro+}
              query=${query/-professional+}
              option="professional"
      }
    elif [ "$opParam" == '-pid' ] || [ "$opParam" == '-pillid' ]
            then {
              query=${query/-pid+}
              query=${query/-pillid+}
              option="drugimages"
      }
    elif [ "$opParam" == '-iac' ] || [ "$opParam" == '-interaction' ]
            then {
              query=${query/-iac+}
              query=${query/-interaction+}
              option="interactions"
      }
    elif [ "$opParam" == '-nws' ] || [ "$opParam" == '-news' ]
            then {
              query=${query/-nws+}
              query=${query/-news+}
              option="news"
      }
    elif [ "$opParam" == '-fda' ] || [ "$opParam" == '-fdaalert' ]
            then {
              query=${query/-fda+}
              query=${query/-fdaaleart+}
              option="fdaalerts"
      }
    elif [ "$opParam" == '-avl' ] || [ "$opParam" == '-approval' ]
            then {
              query=${query/-avl+}
              query=${query/-approval+}
              option="newdrugapprovals"
      }
    elif [ "$opParam" == '-pln' ] || [ "$opParam" == '-pipeline' ]
            then {
              query=${query/-pln+}
              query=${query/-pipeline+}
              option="newdrugapplications"
      }
    elif [ "$opParam" == '-ctl' ] || [ "$opParam" == '-clinicaltrial' ]
            then {
              query=${query/-ctl+}
              query=${query/-clinicaltrial+}
              option="clinicaltrials"
      }
    elif [ "$opParam" == '-cnt' ] || [ "$opParam" == '-carenote' ]
            then {
              query=${query/-cnt+}
              query=${query/-carenote+}
              option="cg"
      }
    elif [ "$opParam" == '-ntl' ] || [ "$opParam" == '-naturalproduct' ]
            then {
              query=${query/-ntl}
              query=${query/-natural+}
              query=${query/-naturalproduct+}
              option="natural"
      }
    elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
          then {
            echo "  ${aqua}${bold}Drugs Search Filters: ${normal}
                    For Consumer         -csr    -consumer
                    For Professional     -pro    -professional
                    For Pill Id          -pid    -pillid
                    For Interaction      -iac    -interaction
                    For News             -nws    -news
                    For FDA Alerts       -fda    -fdaalert
                    For Approvals        -avl    -aprroval
                    For Pipeline         -pln    -pipeline
                    For Clinical Trials  -ctl    -clinicaltrial
                    For Care Notes       -cnt    -carenote
                    For Natural Products -ntl    -natural
                 "
            exit
      }
    else {
          option=""
        }
    fi
    query=${query/-drug+}
    query=${query/-drugs+}
    $browser www.drugs.com/search.php?searchterm=$query\&sources[]=$option
}
