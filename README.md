# syntra-experiment

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
export PATH=$PATH:~/.cargo/bin
```

```
pip3 install z3-solver
pip3 install numpy
pip3 install pandas
```

```
python3 -m qe.netcal.qe_queries -t 6
```

```
cargo build --release
```

Sometime for 
```
src/frontend/Makefile
```
You need to delete 
```
/usr/lib/x86_64-linux-gnu/libx264.a
```
```
BASE_LDADD = ../input/libalfalfainput.a ../decoder/libalfalfadecoder.a ../util/libalfalfautil.a /usr/lib/x86_64-linux-gnu/libx264.a $(X264_LIBS)
```
