# Static

Files in here should probably be moved to WSL once and then left alone.
Don't bother moving `./environment`, though since
[WSL doesn't care about `/etc/environment`](https://github.com/Microsoft/WSL/issues/1405)
Instead, use `../profile.d/paths.bash`, or something.
Yes, I know it's not the same since it's called every login.
