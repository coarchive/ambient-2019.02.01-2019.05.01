# shellcheck shell=sh

# Ensure base distro defaults xdg path are set if nothing filed up some
# defaults yet.
if [ -z "$XDG_DATA_DIRS" ]; then
  export XDG_DATA_DIRS="/usr/local/share:/usr/share"
fi

if $wsl; then
  return 0 # currently snapd doesn't work on wsl because of system call stuff
fi

# Desktop files (used by desktop environments within both X11 and Wayland) are
# looked for in XDG_DATA_DIRS; make sure it includes the relevant directory for
# snappy applications' desktop files.

snap_xdg_path="/var/lib/snapd/desktop"
if [ -n "${XDG_DATA_DIRS##*${snap_xdg_path}}" -a -n "${XDG_DATA_DIRS##*${snap_xdg_path}:*}" ]; then
  export XDG_DATA_DIRS="${XDG_DATA_DIRS}:${snap_xdg_path}"
fi

# Expand $PATH to include the directory where snappy applications go.
snap_bin_path="/snap/bin"
if [ -n "${PATH##*${snap_bin_path}}" ] && [ -n "${PATH##*${snap_bin_path}:*}" ]; then
    export PATH=$PATH:${snap_bin_path}
fi
