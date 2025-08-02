# Syntra 

# 0. Install and configure dependencies
## Requirements
* OS and JDK:
  - Syntra is developed and tested under **Ubuntu 22.04 and 20.04**
  - git version 2.25.1
  - gcc & g++ >= 9.4.0

## System dependencies
```
sudo apt update
sudo apt-get install python3 python3-pip
// Syntra & Salsify
sudo apt-get install pkg-config autoconf-archive
sudo apt-get install libjpeg-dev
sudo apt-get install yasm libxinerama-dev libxcursor-dev libglu1-mesa-dev libboost-all-dev libx264-dev libxrandr-dev libxi-dev libglew-dev libglfw3-dev
// Python scripts
sudo apt-get install zbar-tools
// FFmpeg
sudo apt-get install ffmpeg
// Mahimahi
sudo apt-get install apache2
sudo apt-get install apache2-dev
sudo apt-get install dnsmasq
sudo apt-get install protobuf-compiler
sudo apt-get install libssl-dev
sudo apt-get install libxcb-present-dev
sudo apt install libpango1.0-dev
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
### QE module
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

On Ubuntu 20.04, you may get an error like 
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
from the line
```
BASE_LDADD = ../input/libalfalfainput.a ../decoder/libalfalfadecoder.a ../util/libalfalfautil.a /usr/lib/x86_64-linux-gnu/libx264.a $(X264_LIBS)
```
Then `make` again
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
### Mahimahi
```
git clone https://github.com/ravinet/mahimahi
cd mahimahi
./autogen.sh
./configure
make
sudo make install
```

# Experiments
## Set up
Warning: all the path you replace with should be absolute path!!!
### Workload preparation
Our workload contains multiple 10-min duration 30 fps 1280 X 720 video. So first of all, we gonna fetch it from youtube:
```
yt-dlp -f "bestvideo[height=720][ext=mp4]" "https://www.youtube.com/watch?v=hkmnhcsvueE"
```
Because the workload is really big (need ~200GB) so you can uncompress the video to your backup filesystem (replace `/path/to/filesystem`):
```
sudo ffmpeg -i /path/to/video -pix_fmt yuv420p -frames:v 18000 /path/to/filesystem/benchmark.y4m
```
Finally you need to run `fetch_workload.sh` in `syntra-experiment` to add barcodes to the video and finish the set up of the workload (it will also add some soft links from your backup filesystem to `syntra-experiment`): 
```
sudo ./fetch_workload.sh /path/to/syntra /path/to/filesystem 
```
## Run
### Figure 4 (~15 hours)
For reproduction of figure 4, you need to supply the path of the directory containing traces shipped with Mahimahi. If you build mahimahi 
from source code, it will be in `/path/to/mahimahi/repo/traces` (replace /path/to/mahimahi/repo). If you build it from apt, then it should be `/usr/share/mahimahi/traces/`.
```
cd syntra-experiment
./figure4.sh /path/to/filesystem/benchmark.y4m /path/to/traces > figure4.out
```
`figure4.out` will contains the plain text of figure 4 in the paper. 
### Table 1 (~5 hours)
Unlike figure 4, table 1 only requires the traces shipped with `syntra-experiment`, so it only needs the path to `benchmark.y4m`.
```
cd syntra-experiment
./table1.sh /path/to/filesystem/benchmark.y4m > table1.out
```
`table1.out` will contains the plain text of table 1 in the paper. 
