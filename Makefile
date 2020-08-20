RLIB:=-L target/release -lrust_ffi_example

ifeq ($(shell uname),Darwin)
	LDFLAGS := -Wl,-dead_strip $(RLIB)
else
	LDFLAGS := -Wl,--gc-sections -lpthread -ldl $(RLIB)
endif

run:
	@./rust_ffi
.PHONY: run

build: rs c
.PHONY: build

rs:
	@cargo build --release
.PHONY: rs

c:
	@gcc main.c $(LDFLAGS) -o rust_ffi
.PHONY: c

objdump:
	@objdump -t rust_ffi | less
.PHONY: objdump
