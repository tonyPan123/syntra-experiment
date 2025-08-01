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
Build rust dependency, 
```
cargo build --release
```
Build gf-complete
```
./autogen.sh
./configure
make
sudo make install
```

Then you can build syntra and salsify, you need to have such dependencies first: 
```
sudo apt-get install yasm libxinerama-dev libxcursor-dev libglu1-mesa-dev libboost-all-dev libx264-dev libxrandr-dev libxi-dev libglew-dev libglfw3-dev

```
Then, 
```
mkdir src/rust-deps
cp ../minimax/target/release/libnetwork_model_lib.a src/rust-deps/
```
```
./autogen.sh
./configure

```

If you got error like 
```
/usr/bin/ld: /usr/lib/x86_64-linux-gnu/libx264.a(pixel-a-8.o): relocation R_X86_64_32S against hidden symbol `x264_8_pw_00ff' can not be used when making a PIE object
/usr/bin/ld: /usr/lib/x86_64-linux-gnu/libx264.a(predict-a-8.o): relocation R_X86_64_32S against hidden symbol `x264_8_pb_1' can not be used when making a PIE object
/usr/bin/ld: /usr/lib/x86_64-linux-gnu/libx264.a(sad-a-8.o): relocation R_X86_64_32S against hidden symbol `x264_8_pw_8' can not be used when making a PIE object
``` 
Then at 
```
src/frontend/Makefile.am
src/salsify/Makefile.am
```
You need to delete 
```
/usr/lib/x86_64-linux-gnu/libx264.a
```
```
BASE_LDADD = ../input/libalfalfainput.a ../decoder/libalfalfadecoder.a ../util/libalfalfautil.a /usr/lib/x86_64-linux-gnu/libx264.a $(X264_LIBS)
```
WebRTC-gcc baseline:
Install Depot tools first
```
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=/path/to/depot_tools:$PATH
```
In AlphaRTC
```
gclient sync // This may fail once
mv src/* .
gn gen out/Default
ninja -C out/Default peerconnection_gcc
```
Fetch the benchmark video and convert it into yuv420p format:
```
pip install -U yt-dlp
yt-dlp -f "bestvideo[height=720][ext=mp4]" "https://www.youtube.com/watch?v=hkmnhcsvueE"
ffmpeg -i WATCH：\ White\ House\ Press\ Secretary\ Kayleigh\ McEnany\ briefs\ reporters\ \[hkmnhcsvueE\].mp4 -pix_fmt yuv420p benchmark.y4m
```
Make the barcode video for gcc and vegas baselines (to calculate ssim score)
```
pip3 install python-barcode
ffmpeg -i benchmark.y4m -frames:v 18000 trimmed.y4m
ffmpeg -i trimmed.y4m -qscale:v 2 frames/frame_%05d.png
python3 make_barcode.py
ffmpeg -i frames/frame_%05d.png -i barcodes/barcode_%05d.png -filter_complex "[0][1]overlay=10:10" outputs/out_%05d.png
ffmpeg -framerate 30 -i output_frames/out_%05d.png -pix_fmt yuv420p benchmark-barcode.y4m
```
webrtc scripts
```
sudo apt install zbar-tools

pip3 install matplotlib
pip3 install python-barcode
pip3 install opencv-python
pip3 install pyzbar
pip3 install scikit-image
```

```
gclient sync // This may fail once
mv src/* .
gn gen out/Default
ninja -C out/Default peerconnection_serverless
```
```
ln -s ~/benchmark-barcode.y4m testmedia/benchmark-barcode.y4m
cp ../out/Default/peerconnection_serverless .
cp ../out/Default/peerconnection_gcc .
```



