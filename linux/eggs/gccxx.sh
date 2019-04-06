#!/bin/bash
args=(
  -g
  -pedantic
  -Wextra
  -Wcast-align
  -Wcast-qual
  -Wctor-dtor-privacy
  -Wdisabled-optimization
  -Wformat=2
  -Winit-self
  -Wlogical-op
  # -Wmissing-declarations
  -Wmissing-include-dirs
  -Wnoexcept
  -Wold-style-cast
  -Woverloaded-virtual
  -Wredundant-decls
  -Wshadow
  -Wsign-conversion
  -Wsign-promo
  -Wstrict-null-sentinel
  -Wstrict-overflow=5
  -Wswitch-default
  -Wundef
  -Werror
  -Wno-unused
)

function ccxx { # compile cplusplus
  $([ "$1" = "nt" ] && echo "wexecute.exe") g++ "${args[@]}" "$2" -o "$3"
}

function print_help {
  echo "(${blue}cxx$reset | ${teal}nt-cxx$reset) (${orange}compile$reset | ${yellow}run$reset) filename.cxx"
}

function cxx { # cplusplus
  if [ -z "$2" ]; then
    print_help
    return 1
  fi
  local out="./${2%.*}.elf"
  cxxc linux "$2" "$out"
  if $? && [ "$1" = run ]; then
    ("$out"; rm "$out")
  elif [ "$2" != compile ]; then
    print_help
    return 1
  fi
}

function nt-cxx { # nt cplusplus
  if [ -z "$2" ]; then
    print_help
    return 1
  fi
  local out="./${2%.*}.exe"
  cxxc nt "$2" "$out"
  if $? && [ "$1" = run ]; then
    ("$out"; rm "$out")
  elif [ "$2" != compile ]; then
    print_help
    return 1
  fi
}

function cxxd { # cplusplus debug
  local out="./$1.elf.debug"
  cxxc "gw" "$1" "$out" && (gdb "$out"; rm "$out")
}

