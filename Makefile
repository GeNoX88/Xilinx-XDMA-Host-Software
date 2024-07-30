
data:
	mkdir -p data bin
	gcc ./src/gen_random_data.c -o ./bin/gen_random -std=c99

host:
	mkdir -p bin
	gcc ./src/xdma_rw.c -o ./bin/xdma_rw -std=c99

driver:
	make -C ./dma_ip_drivers/XDMA/linux-kernel/xdma

clean:
	rm -rf data bin
	make -C ./dma_ip_drivers/XDMA/linux-kernel/xdma clean

.DEFAULT_GOAL := xdma
