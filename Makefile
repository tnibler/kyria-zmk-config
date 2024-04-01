all: left right

kyria_left:
	cd /zmk/app && \
	west build -d build/left -b nice_nano_v2 -- -DZMK_CONFIG="/zmk-config/config" -DSHIELD=kyria_rev2_left && \
	cp build/left/zephyr/zmk.uf2 /out/left.uf2

kyria_right:
	cd /zmk/app && \
	west build -d build/right -b nice_nano_v2 -- -DZMK_CONFIG="/zmk-config/config" -DSHIELD=kyria_rev2_right && \
	cp build/right/zephyr/zmk.uf2 /out/right.uf2

corne_right:
	cd /zmk/app && \
	west build -d build/corne_right -b seeeduino_xiao_ble -- -DZMK_CONFIG="/zmk-config/config" -DSHIELD=chippy_right && \
	cp build/corne_right/zephyr/zmk.uf2 /out/corne_right.uf2
	@echo "built /out/corne_right.uf2"

corne_left:
	cd /zmk/app && \
	west build -d build/corne_left -b seeeduino_xiao_ble -- -DZMK_CONFIG="/zmk-config/config" -DSHIELD=chippy_left && \
	cp build/corne_left/zephyr/zmk.uf2 /out/corne_left.uf2
	@echo "built /out/corne_left.uf2"
