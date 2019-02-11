const nt = {
  environment: { },
  hardlinks: { },
  symlinks: { },
};
const wsl = {
  hardcoded: { },
  environment: { },
  hardlinks: { },
  symlinks: { },
  sync: { etc: { } },
};
const ambient = {
  
};
// Anything that uses wsl.hardcoded has it written into the file
with (wsl.hardcoded) {
  C = "/mnt/C";
  windir = `${C}/Windows`;
  system32 = `${windir}/system32`;
  ambient = `${C}/Users/Alf/Desktop/ambient`;
  dotfiles = `${ambient}/wsl`;
  static = `${dotfiles}/static`;
}
with (wsl.sync.etc) {
  environment = `${wsl.hardcoded.static}/environment`;
  wsl.conf = `${wsl.hardcoded.static}/wsl.conf`;
}
with (wsl.environment) {
  console.log("Running /etc/environment");
  C = wsl.hardcoded.C;
  windir = wsl.hardcoded.windir;
  system32 = wsl.hardcoded.system32;
  ambient = wsl.hardcoded.ambient;
  dotfiles = wsl.hardcoded.dotfiles;
  PATH = "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin";
}

  environment: {
    
    &dotfiles: 
  },
  symlinks: {
    etc: {
      regex: $dotfiles/global.,
      files: {
        bash.bash_logout: $dotfiles/global.bash_logout,
        bash.bashrc: $dotfiles/global.bashrc,
        profile: $dotfiles/global.profile,
      }
    }
  }
  shell: {
    global: {
      .bash_logout: ~,
      .bashrc: ~,
      .profile: ~,
    },
    root: {
      .bash_logout: false,
      .bash_profile: ~,
      .bashrc: ~,
      .profile: false,
    },
    user: {
      .bash_logout: false,
      .bash_profile: ~,
      .bashrc: ~,
      .profile: bourne.profile,
    }
  },
  misc: {
    /home/Falfa/.gitconfig: .gitconfig,
    /etc/apt/apt.conf.d: apt/apt.conf.d,
    /etc/apt/sources.list.d: apt/sources.list.d,
    /etc/apt/sources.list: apt/sources.list,
  }
}
