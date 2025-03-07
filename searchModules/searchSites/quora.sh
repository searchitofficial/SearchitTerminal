# Quora Search Function

function quora() {
    dbCheck
    query=${tmpquery//\ /+}
    if [ "$opParam" == '-question' ] || [ "$opParam" == '-qsn' ]
            then {
              query=${query/-qsn+}
              query=${query/-question+}
              option="question"
        }
    elif [ "$opParam" == '-answer' ] || [ "$opParam" == '-ans' ]
            then {
              query=${query/-ans+}
              query=${query/-answer+}
              option="answer"
      }
    elif [ "$opParam" == '-post' ] || [ "$opParam" == '-pst' ]
            then {
              query=${query/-pst+}
              query=${query/-post+}
              option="post"
      }
    elif [ "$opParam" == '-profile' ] || [ "$opParam" == '-pfl' ]
            then {
              query=${query/-pfl+}
              query=${query/-profile+}
              option="profile"
      }
    elif [ "$opParam" == '-topic' ] || [ "$opParam" == '-tpc' ]
            then {
              query=${query/-tpc+}
              query=${query/-topic+}
              option="topic"
      }
    elif [ "$opParam" == '-blog' ] || [ "$opParam" == '-blg' ]
            then {
              query=${query/-blg+}
              query=${query/-blog+}
              option="blog"
      }
    elif [ "$opParam" == '-space' ] || [ "$opParam" == '-spc' ]
            then {
              query=${query/-spc+}
              query=${query/-space+}
              option="tribe"
      }
    elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
          then {
            echo "  ${aqua}${bold}Quora Search Filters: ${normal}
                    For Question          -question      -qsn
                    For Answer            -answer        -ans
                    For Posts             -post          -pst
                    For Profile           -profile       -pfl
                    For Topic             -topic         -tpc
                    For Blogs             -blog          -blg
                    For Spaces            -space         -spc
                 "
            exit
      }
    else {
          option=""
        }
    fi
    query=${query/-qra+}
    query=${query/-quora+}
    $browser www.quora.com/search?q=$query\&type=$option
}
