cp -r /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/mobilenet_header.txt /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w16_a16/CNN_main.sv
cp -r /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/mobilenet_header.txt /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w16_a8/CNN_main.sv
cp -r /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/mobilenet_header.txt /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w2_a16/CNN_main.sv
cp -r /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/mobilenet_header.txt /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w2_a8/CNN_main.sv
cp -r /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/mobilenet_header.txt /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w4_a16/CNN_main.sv
cp -r /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/mobilenet_header.txt /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w4_a8/CNN_main.sv
cp -r /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/mobilenet_header.txt /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w8_a16/CNN_main.sv
cp -r /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/mobilenet_header.txt /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w8_a8/CNN_main.sv

sed -i 's/xxxx/synthetic_mnet_025_rtl_w16_a16/g' /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w16_a16/CNN_main.sv 
sed -i 's/xxxx/synthetic_mnet_025_rtl_w16_a8/g' /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w16_a8/CNN_main.sv
sed -i 's/xxxx/synthetic_mnet_025_rtl_w2_a16/g' /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w2_a16/CNN_main.sv
sed -i 's/xxxx/synthetic_mnet_025_rtl_w2_a8/g'  /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w2_a8/CNN_main.sv
sed -i 's/xxxx/synthetic_mnet_025_rtl_w4_a16/g' /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w4_a16/CNN_main.sv
sed -i 's/xxxx/synthetic_mnet_025_rtl_w4_a8/g'  /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w4_a8/CNN_main.sv
sed -i 's/xxxx/synthetic_mnet_025_rtl_w8_a16/g' /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w8_a16/CNN_main.sv
sed -i 's/xxxx/synthetic_mnet_025_rtl_w8_a8/g'  /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w8_a8/CNN_main.sv

cat /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w16_a16/top.sv >> /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w16_a16/CNN_main.sv
cat /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w16_a8/top.sv >> /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w16_a8/CNN_main.sv
cat /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w2_a16/top.sv >> /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w2_a16/CNN_main.sv
cat /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w2_a8/top.sv >> /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w2_a8/CNN_main.sv
cat /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w4_a16/top.sv >> /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w4_a16/CNN_main.sv
cat /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w4_a8/top.sv >> /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w4_a8/CNN_main.sv
cat /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w8_a16/top.sv >> /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w8_a16/CNN_main.sv
cat /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w8_a8/top.sv >> /home/skvenka5/ARM_fixy/DeepFreeze/examples/synthetic_mnet_0.25/synthetic_mnet_025_rtl_w8_a8/CNN_main.sv
history | grep scp | grep synthetic

