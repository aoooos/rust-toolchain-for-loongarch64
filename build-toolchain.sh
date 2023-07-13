set -ex

git clone https://github.com/loongarch-rs/rust.git
cd rust
git checkout 42f28f9eb41adb7a197697e5e2d6535d00fd0f4a 
cp ../config.toml ./
./x.py build
./x.py install