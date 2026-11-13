# Linux/PC build of the port: translated decomp + runtime + headless harness.
CC ?= gcc
CFLAGS ?= -O2 -g
CFLAGS += -U_FORTIFY_SOURCE -std=gnu89 -w -Iruntime -Igen/c
GEN := $(wildcard gen/c/*.c)
RT := $(wildcard runtime/*.c)
HOST := $(wildcard host/*.c)
OBJ := $(patsubst %.c,build/obj/%.o,$(GEN) $(RT) $(HOST))

build/hamtaro_host: $(OBJ)
	$(CC) -o $@ $^ -lm

build/obj/%.o: %.c gen/c/decomp_gen.h runtime/rt_mem.h runtime/rt.h
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf build
