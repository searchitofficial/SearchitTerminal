# DuckDuckGo Search Function

    function duckduckgo() {
        dbCheck
        query=${tmpquery//\ /+}
        if [ "$opParam" == '-image' ]  || [ "$opParam" == '-img' ]
            then {
              query=${query/-img+}
              query=${query/-image+}
              option="&iax=images&ia=images"
            }
        elif [ "$opParam" == '-video' ] || [ "$opParam" == '-vid' ]
            then {
              query=${query/-vid+}
              query=${query/-video+}
              option="&iax=videos&ia=videos"
        }
        elif [ "$opParam" == '-news' ] || [ "$opParam" == '-nws' ]
            then {
              query=${query/-nws+}
              query=${query/-news+}
              option="&iar=news&ia=news"
        }
      elif [ "$opParam" == '-meanings' ] || [ "$opParam" == '-mns' ]
            then {
              query=${query/-mns+}
              query=${query/-meanings+}
              option="&ia=meanings"
        }
      elif [ "$opParam" == '-answer' ] || [ "$opParam" == '-ans' ]
            then {
              query=${query/-ans+}
              query=${query/-answer+}
              option="&ia=answer"
        }
      elif [ "$opParam" == '-nutrition' ] || [ "$opParam" == '-ntr' ]
              then {
                query=${query/-ntr+}
                query=${query/-nutrition+}
                option="&ia=nutrition"
        }
      elif [ "$opParam" == '-recipes' ] || [ "$opParam" == '-rcp' ]
              then {
                query=${query/-rcp+}
                query=${query/-recipes+}
                option="&ia=recipes"
        }
      elif [ "$opParam" == '-help' ] || [ "$opParam" == '-h' ] || [ "$opParam" == '-?' ]
          then {
            echo " ${aqua}${bold}DuckDuckGo Search Filters: ${normal}
                    For Images     -image       -img
                    For Videos     -video       -vid
                    For News       -news        -nws
                    For Meanings   -meanings    -mns
                    For Answer     -answer      -ans
                    For Nutrition  -nutrition   -ntr
                    For Recipes    -recipes     -rcp
            "
            exit
      }
        else {
              option=""
        }
      fi
      query=${query/-ddg+}
      query=${query/-duckduckgo+}
      $browser www.duckduckgo.com/?q=$query$option
    }
