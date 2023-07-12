# Rust toolchain for loongarch64

⚠️ The repo is especially prepared for the [Arceos](https://github.com/aoooos/arceos.git) project.⚠️

All tested only on Debian-based systems.

The default `config.toml` file provided in the repo builds the Rust toolchain for the target      
`x86_64-unknown-linux-gnu`, `x86_64-unknown-none`, `riscv64gc-unknown-none-elf`, `riscv64gc-unknown-linux-gnu`,`aarch64-unknown-none-softfloat`, `aarch64-unknown-linux-gnu`, `loongarch64-unknown-none-softfloat`, `loongarch64-unknown-none`, `loongarch64-unknown-linux-gnu`.

### How to use:
1. Run `sudo sh add-dependencies.sh` to install required dependencies.
2. Run `sudo sh sccache.sh` to install sccache, which will accelerate the compiling procedure.
3. Run `sh add-loongarch64-unknown-linux-gnu.sh` to install loongarch64-unknown-linux-gnu toolchain.
4. Run `sh add-riscv64-unknown-elf.sh` to install add-riscv64-unknown-elf toolchain.
5. Run `sh build-toolchain.sh` to build and install rust toolchain.

After that, you can find your toolchain at `~/.rustup/toolchains/dev`, which should be added to the environment $PATH.
