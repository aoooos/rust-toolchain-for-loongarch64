set -ex

cd rust
cp ../config.toml ./
./x.py build
./x.py install