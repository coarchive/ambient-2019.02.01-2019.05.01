bin = $(dotfiles)/bin
bin_exe = $(bin)/wexecute.exe
new_exe = ./bin/Release/net472/wexecute.exe

.PHONY: install
install: # yes, that's right. It depends on itself
	wexecute.exe dotnet build -c Release
copy install:
	if [ -f bin_exe ]; then mv $(bin_exe) $(bin_exe).old; fi
	cp $(new_exe) $(bin_exe)
undo: # I've never had to use this yet but I'm sure that I'll end up messing it up
	mv $(bin_exe) $(bin_exe).new
	mv $(bin_exe).old $(bin_exe)
