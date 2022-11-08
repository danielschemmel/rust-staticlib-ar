To see the problem run `make indirect`, which should fail. On the other hand, `make direct` should succeed, indicating that the problem is not with the rust staticlib, but with the thin archive created with `ar`.

To see how it used to work, change to the alternate version by editing [`rust-toolchain.toml`](rust-toolchain.toml) - remember to `make clean` after changing the channel.

The last working version is nightly-2022-08-12 / stable 1.64.0 and the first version showing the problem is nightly-2022-08-13 / stable 1.65.0.
