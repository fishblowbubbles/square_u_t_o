set projDir "C:/Users/tingyu/Documents/mojo/legit/work/planAhead"
set projName "legit"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/tingyu/Documents/mojo/legit/work/verilog/mojo_top_0.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/button_conditioner_1.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/edge_detector_2.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/button_conditioner_1.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/edge_detector_2.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/button_conditioner_1.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/edge_detector_2.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/button_conditioner_1.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/edge_detector_2.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/button_conditioner_1.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/edge_detector_2.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/reset_conditioner_11.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/led_matrix_12.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/register_13.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/slider_14.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/colour_mux4_15.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/display_mux8_16.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/lvl_mux4_17.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/alu_18.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/pipeline_19.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/pipeline_19.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/pipeline_19.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/pipeline_19.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/pipeline_19.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/adder_24.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/boolean_25.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/shifter_26.v" "C:/Users/tingyu/Documents/mojo/legit/work/verilog/compare_27.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/tingyu/Documents/mojo/legit/constraint/adafruit.ucf" "C:/Users/tingyu/Documents/mojo/legit/constraint/io_shield.ucf" "D:/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
