all: left right

left:
	cd /zmk/app && \
	west build -d build/left -b nice_nano_v2 -- -DZMK_CONFIG="/zmk-config" -DSHIELD=kyria_rev2_left && \
	cp build/left/zephyr/zmk.uf2 /out/left.uf2

right:
	cd /zmk/app && \
	west build -d build/right -b nice_nano_v2 -- -DZMK_CONFIG="/zmk-config" -DSHIELD=kyria_rev2_right && \
	cp build/right/zephyr/zmk.uf2 /out/right.uf2
