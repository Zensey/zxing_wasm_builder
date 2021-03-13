
.DEFAULT_GOAL: build

build:
	#docker rm zxing_wasm_builder
	docker build -t zxing .
	docker run -it --name zxing_wasm_builder -v zx_temp:/temp:rw zxing
	docker cp zxing_wasm_builder:/temp ./build
	docker rm zxing_wasm_builder
	docker volume rm zx_temp
