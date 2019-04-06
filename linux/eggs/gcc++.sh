#!/bin/bash
args=(
  -g
  -pedantic
  -pedantic-Wall
  -Wextra
  -Wcast-align
  -Wcast-qual
  -Wctor-dtor-privacy
  -Wdisabled-optimization
  -Wformat=2
  -Winit-self
  -Wlogical-op
  -Wmissing-declarations
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

function cxxc {
  # cplusplus compile
  $([ "$1" = "nt" ] && "wexe") g++ "${args[@]}" "$2" -o "$3"
}

function cxx { # cplusplus
  out="./out.elf"
  cxxc "linux" "$1" "$out" && "$out"
  rm "$out"
}

function nt-cxx { # nt cplusplus
  out="./out.exe"
  cxxc "nt" "$1" "$out"
  [ -f "$out" ] && "$out"
  rm "$out"
}

function cxx {
  out="./$1.debug"
  cxxc "gw" "$1" "$out" && (gdb "$out"; rm "$out")
}
