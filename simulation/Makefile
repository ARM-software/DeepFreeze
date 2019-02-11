# PN Whatmough Sept 2017
# Verilog simulation


TOP_MODULE = FC_FixyNN
TB_MODULE = tb
SIMULATOR = VCS
SRC = /home/shrkol02/Fixy_PPA/vsim/lenet_fc/src.f


.DEFAULT: compile
compile:
    @mkdir -p work  
ifeq ($(SIMULATOR),IV)
    cd work && iverilog -g2012 -f $(SRC) -o $(TOP_MODULE).vvp -v | tee $(TOP_MODULE).compile.log
endif
ifeq ($(SIMULATOR),VCS)
    cd work && vcs \
    -sverilog -full64 -timescale=1ns/1ps -error=noZMMCM +lint=all,nVCDE,noSVA-UA,noNS \
    -debug -debug_pp \
    -f $(SRC) \
    | tee compile.log
endif


run:
ifeq ($(SIMULATOR),IV)
    cd work && vvp $(TOP_MODULE).vvp | tee run.log
endif
ifeq ($(SIMULATOR),VCS)
    cd work && ./simv | tee run.log
endif

DVE:
    cd work && dve -vpd vcdplus.vpd -full64 | tee dve.log

waves:
    gtkwave $(TOP_MODULE).vcd &
    
clean:
    rm -r work

help:
    man iverilog
