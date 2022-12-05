BUILD_DIR = build

AS = mips-linux-gnu-as
LD = mips-linux-gnu-ld
OBJCOPY := mips-linux-gnu-objcopy

ROM_SIZE = 0x1000000
ASFLAGS := -G0 -EB -mtune=vr4300 -march=vr4300 -mabi=32 -I. -Iinclude -O1 --no-construct-floats

LD_SCRIPT = legoracers.ld
LDFLAGS := -T $(LD_SCRIPT) -mips3 --accept-unknown-input-arch --no-check-sections -T undefined_syms_auto.txt

AS_SRCS := $(wildcard asm/*.s) $(wildcard asm/**/*.s) $(wildcard asm/**/**/*.s)  $(wildcard asm/**/**/**/*.s) 
AS_OBJS := $(addprefix $(BUILD_DIR)/, $(AS_SRCS:.s=.s.o))

BIN_DIR := assets
BINS := $(wildcard $(BIN_DIR)/*.bin) $(wildcard $(BIN_DIR)/**/*.bin)
BIN_OBJS := $(addprefix $(BUILD_DIR)/, $(BINS:.bin=.bin.o))
BIN_BUILD_DIR := $(BUILD_DIR)/$(BIN_DIR)
OBJS := $(AS_OBJS) $(BIN_OBJS)

BINOFLAGS := -I binary -O elf32-big


$(BUILD_DIR)/%.s.o: %.s
	@echo "$(@D)"
	@mkdir -p $(@D)
	$(AS) $(ASFLAGS) $< -o $@

$(BUILD_DIR)/%.bin.o : %.bin
	@mkdir -p $(@D)
	$(OBJCOPY) $(BINOFLAGS) $< $@

rom.elf: $(OBJS) $(LD_SCRIPT)
	$(LD) $(LDFLAGS) -Map $(@:.elf=.map) -o $@

rom.z64: rom.elf
	$(OBJCOPY) -O binary --pad-to=$(ROM_SIZE) --gap-fill=0x00 $< $@
	@./fix.sh $@

.PHONY: clean
clean:
	find assets/ | grep -E '/[0-9A-F]+\.bin' | xargs rm
	sed -E '/        (_?[0-9A-F]+)_bin = \.;/d' legoracers.ld > legoracers.ld2
	sed -E '/        build\/assets\/([0-9A-F]+)\.bin\.o\(\.data\);/d' legoracers.ld2 > legoracers.ld
	rm legoracers.ld2
	patch -p1 -i patch.diff

