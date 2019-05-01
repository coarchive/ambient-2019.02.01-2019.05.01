#!/bin/bash

export PS1="\
\[$yan\]<-\$(printf %03d \$?) \[$orange\]$(basename $(tty)) \[$fuchsia\]LV\$SHLVL \
\[$red\]\u \[$blue\]in \[$pink\]\w \[$reset\]\
"
# <-000 LV1 User in ~ ! 
