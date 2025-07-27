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

If you got error like 
```
/usr/bin/ld: /usr/lib/x86_64-linux-gnu/libx264.a(pixel-a-8.o): relocation R_X86_64_32S against hidden symbol `x264_8_pw_00ff' can not be used when making a PIE object
/usr/bin/ld: /usr/lib/x86_64-linux-gnu/libx264.a(predict-a-8.o): relocation R_X86_64_32S against hidden symbol `x264_8_pb_1' can not be used when making a PIE object
/usr/bin/ld: /usr/lib/x86_64-linux-gnu/libx264.a(sad-a-8.o): relocation R_X86_64_32S against hidden symbol `x264_8_pw_8' can not be used when making a PIE object
``` 
Then at 
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
