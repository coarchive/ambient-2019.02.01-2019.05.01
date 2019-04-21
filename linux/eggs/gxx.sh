#!/bin/bash

args=(
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
function g++ {
  g++ "${args[@]}" 
}
export -f g++
