rm -rf xcelium.d
rm *.log
rm *.history

xrun tb_DFF.v DFF.v -clean -l 256mux.log
