git clone https://github.com/yushulx/zxing-cpp-emscripten
cd zxing-cpp-emscripten/build-wasm
sed -i.old s/emconfigure/emcmake/ configure.sh
./configure.sh
./build.sh

cp -pr ./ /temp
