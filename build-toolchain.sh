set -ex

git clone https://github.com/loongarch-rs/rust.git
cd rust
git checkout bd32075934ca2825e6b51d246e19670941598240
cp ../config.toml ./
./x.py build
./x.py install