# ambient/changelog.md

# 0.2.0 Ruse

Switched from
[Hyper](https://github.com/zeit/hyper)
to
[Alacritty](https://github.com/jwilm/alacritty)
due to performance concerns. Tested
[Terminus](https://github.com/Eugeny/terminus)
and created
[nt/terminus.yml](nt/terminus.yml)
hard linked to `%appdata%/Terminus/config.yaml`.
Terminus had proper ConPTY support but was slower than hyper.
I tried out
[wsltty](https://github.com/mintty/wsltty)
and created
[nt/ConEmu.xml](nt/ConEmu.xml).
While wsltty was fast,
it's lack of a usable config file and appropriate
documentation made configuration via a file daunting.
Also, I hate writing XML by hand.
Terminus seemed like the best option since it's default
config file was well commented YAML.

Created [changelog.md](javascript:void())

While the salmon system works,
the goal of Ruse is to try to minimize the complexity of ambient.



# 0.1.0 Salmon

The salmon system has one entry point whenever bash launches

Added a centralized launch script for bash `linux/salmon`
Added several 
