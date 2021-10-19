gdb -tui add
# Now we want use gdb command to poke around popcnt
# To setup the assembly syntax to intel: 
set disassembly-flavor intel
# Configure a layout that is more friendly to assembly code:
tui new-layout mylayout src 2 regs 5 status 1 cmd 1
# Switch to the new layout: 
layout mylayout
# Set a breakpoint at the start symbol so exection will stop their: 
break _start
# Start the program running:
run