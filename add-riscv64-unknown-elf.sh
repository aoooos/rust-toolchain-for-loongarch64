wget https://static.dev.sifive.com/dev-tools/freedom-tools/v2020.12/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14.tar.gz
tar xvfp riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14.tar.gz
mv riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14 riscv64-unknown-elf-toolchain
cd riscv64-unknown-elf-toolchain

# 获取当前文件夹路径
echo $(pwd)
current_path=$(pwd)

# 获取当前shell类型
shell_name=$(basename "$SHELL")

# 确定shell配置文件路径
case "$shell_name" in
    bash)
        config_file="$HOME/.bashrc"
        ;;
    zsh)
        config_file="$HOME/.zshrc"
        ;;
    *)
        echo "无法确定shell配置文件的路径。"
        exit 1
        ;;
esac

# 检查环境变量是否已存在
if grep -q "export PATH=.*$current_path/bin" "$config_file"; then
    echo "环境变量已存在，无需重复添加。"
else
    # 添加路径到环境变量
    echo "\nexport PATH=$current_path/bin:\$PATH" >> "$config_file"
    echo "已将路径添加到环境变量。"
fi
cd ..
rm riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14.tar.gz



# 使环境变量立即生效
. "$config_file"
# 重新加载当前终端
echo "\n\n\033[1m请手动执行以下命令以使环境变量立即生效：\033[0m\n"
case "$shell_name" in
    bash)
        echo "\033[1msource $config_file\033[0m\n"
        ;;
    zsh)
        echo "\033[1msource $config_file\033[0m\n"
        ;;
esac