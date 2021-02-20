# Constraint files

* **de10nano:** DE10Nano (Terasic)
* **ecp5evn:** ECP5 Evaluation Board
* **edu-ciaa-fpga:** EDU-CIAA-FPGA
* **makerboard:** Digi-Key SmartFusion2 Maker Board (Digi-Key)
* **orangecrab:** OrangeCrab-r0.2
* **s6micro:** Spartan-6 FPGA LX9 MicroBoard (Avnet)
* **zybo:** Zybo (Digilent)

* **ISE:**
  * `.xcf`: (*Xilinx Constraint File*) Used during the synthesis (XST) to specify timing and synthesis constraints
  * `.ucf`: (*User Constraints File*) Used during the implementation to specify placement and pinout constraints
* **Libero:**
  * `.sdc`: (*Synopsys Design Constraint*) Is a Tcl-based format used by Synopsys tools to specify the design intent and timing constraints
  * `.pdc`: (*Physical Design Constraints) Used during the implementation to specify placement and pinout constraints
* **Quartus:**
  * `.sdc`: (*Synopsys Design Constraint*) Is a Tcl-based format used by Synopsys tools to specify the design intent and timing constraints
* **Vivado:**
  * `.xdc`: (*Xilinx Design Constraints*) Are based on the standard Synopsys Design Constraints (SDC) format

> **NOTE:** for more useful/complete constraint files, you can check the [hdl/constraints](https://github.com/hdl/constraints) project.
