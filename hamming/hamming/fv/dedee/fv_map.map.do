
//input ports
add mapped point clk clk -type PI PI
add mapped point data_in[3] data_in[3] -type PI PI
add mapped point data_in[2] data_in[2] -type PI PI
add mapped point data_in[1] data_in[1] -type PI PI
add mapped point data_in[0] data_in[0] -type PI PI

//output ports
add mapped point data_out[3] data_out[3] -type PO PO
add mapped point data_out[2] data_out[2] -type PO PO
add mapped point data_out[1] data_out[1] -type PO PO
add mapped point data_out[0] data_out[0] -type PO PO
add mapped point encoded_data[6] encoded_data[6] -type PO PO
add mapped point encoded_data[5] encoded_data[5] -type PO PO
add mapped point encoded_data[4] encoded_data[4] -type PO PO
add mapped point encoded_data[3] encoded_data[3] -type PO PO
add mapped point encoded_data[2] encoded_data[2] -type PO PO
add mapped point encoded_data[1] encoded_data[1] -type PO PO
add mapped point encoded_data[0] encoded_data[0] -type PO PO
add mapped point syndrome[2] syndrome[2] -type PO PO
add mapped point syndrome[1] syndrome[1] -type PO PO
add mapped point syndrome[0] syndrome[0] -type PO PO
add mapped point error_flag error_flag -type PO PO

//inout ports




//Sequential Pins
add mapped point encoded_reg[5]/q encoded_reg_reg[5]/Q  -type DFF DFF
add mapped point encoded_reg[3]/q encoded_reg_reg[3]/Q  -type DFF DFF
add mapped point encoded_reg[6]/q encoded_reg_reg[6]/Q  -type DFF DFF
add mapped point decoded_reg[3]/q decoded_reg_reg[3]/Q  -type DFF DFF
add mapped point decoded_reg[2]/q decoded_reg_reg[2]/Q  -type DFF DFF
add mapped point decoded_reg[0]/q decoded_reg_reg[0]/Q  -type DFF DFF
add mapped point decoded_reg[1]/q decoded_reg_reg[1]/Q  -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
