# if the command-not-found package is installed, use it
if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
  function command_not_found_handle {
    # check because c-n-f could've been removed in the meantime
    printf "$grey"
    if [ -x /usr/lib/command-not-found ]; then
      /usr/lib/command-not-found -- "$1"
      printf "$reset"
      return $?
    elif [ -x /usr/share/command-not-found/command-not-found ]; then
      /usr/share/command-not-found/command-not-found -- "$1"
      printf "$reset"
      return $?
    else
      echo askdjSADLJAS
      printf "\"%s%s%reset\" is not found" "$pink" "$1" "$reset" >&2
      return 127
    fi
  }
fi
