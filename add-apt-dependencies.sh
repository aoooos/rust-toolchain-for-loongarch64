apt install git curl libssl-dev cmake flex texinfo help2man libncurses5-dev bison g++ ninja-build -y
apt install gcc-aarch64-linux-gnu -y
apt install gcc-riscv64-linux-gnu -y

required_version="3.20.0"
installed_version=$(cmake --version | awk 'NR==1{print $NF}')

# 使用dpkg的--compare-versions选项来比较版本号
if dpkg --compare-versions "$installed_version" "ge" "$required_version"; then
    echo "cmake is higher than $required_version"
else
    git clone https://github.com/Kitware/CMake.git
    cd CMake
    ./bootstrap
    make -j$(nproc)
    make install
    cd ..
    rm -rf CMake
fi
