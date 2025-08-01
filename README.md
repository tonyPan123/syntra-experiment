# Syntra 

# 0. Install and configure dependencies
## System dependencies
```
sudo apt update
sudo apt-get install python3 python3-pip
sudo apt-get install pkg-config autoconf-archive
sudo apt-get install libjpeg-dev
sudo apt-get install yasm libxinerama-dev libxcursor-dev libglu1-mesa-dev libboost-all-dev libx264-dev libxrandr-dev libxi-dev libglew-dev libglfw3-dev
sudo apt-get install zbar-tools
sudo apt-get install ffmpeg
```
## Python dependencies 
```
pip3 install z3-solver
pip3 install numpy
pip3 install pandas
pip3 install python-barcode
pip3 install matplotlib
pip3 install python-barcode
pip3 install opencv-python
pip3 install pyzbar
pip3 install scikit-image
pip3 install -U yt-dlp
```
## Extra dependencies
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
export PATH=$PATH:~/.cargo/bin

git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=/path/to/depot_tools:$PATH # modify this path to where you want the dependencies installed
```
## Build
There are dependecies between the projects so you should do the following in order!!!
### GF-complete
```
cd gf-complete
./autogen.sh
./configure
make
sudo make install
```
### QE Module
```
cd qe
python3 -m qe.netcal.qe_queries -t 6
```
### Belief-bound runtime
```
cd minimax
cargo build --release
```

### Syntra & Salsify
```
cd alfalfa
mkdir src/rust-deps
cp ../minimax/target/release/libnetwork_model_lib.a src/rust-deps/
./autogen.sh
./configure
make
```
#### Warning

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
### WebRTC-gcc
```
cd gcc
gclient sync // This will fail
gclient sync // Just run this command twice
mv src/* .
gn gen out/Default
third_party/depot_tools/ninja -C out/Default peerconnection_gcc
cp out/Default/peerconnection_gcc playground/
```
### WebRTC-vegas
```
cd vegas
gclient sync // This will fail
gclient sync // Just run this command twice
mv src/* .
gn gen out/Default
third_party/depot_tools/ninja -C out/Default peerconnection_serverless
cp out/Default/peerconnection_serverless playground/
```

# Experiments
## Set up
### Workload preparation
```
yt-dlp -f "bestvideo[height=720][ext=mp4]" "https://www.youtube.com/watch?v=hkmnhcsvueE"
sudo ./fetch_workload.sh /path/to/syntra /path/to/filesystem /directory/contains/the/video
```
## Run
### Figure 4
```
./figure4.sh benchmark.y4m
```
### Table 1
```
./table1.sh benchmark.y4m
```
