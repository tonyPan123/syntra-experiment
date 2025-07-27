## Steps
Install cargo
Install z3
```
mkdir scratch
cd scratch
git clone https://github.com/Z3Prover/z3
git checkout 4.12.2
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DZ3_BUILD_LIBZ3_SHARED=TRUE ../
make -j
sudo make install
ldconfig /usr/local/lib
cd ../..
rm -fr scratch
```

## Switching network models.
1. Need to update the main repo Cargo.toml to include as member.
2. Need to update minimax Cargo.toml to have path of the network model. And also any dependencies (e.g., z3).
3. Update the 2 invocations of network model in the main function of cong_ctrl.rs to use the network model type.