set -ex

git clone https://github.com/loongarch-rs/rust.git
cd rust
cp ../config.toml ./
./x.py build
./x.py install