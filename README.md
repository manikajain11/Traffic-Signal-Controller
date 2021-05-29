## Project Abstract 🙋
All modern roadways have to deal with high traffic densities which lead to congestion and road blocks for hours. Conventional traffic control systems have a major drawback: Due to lack of adjustments in timing of traffic signals, the traffic has to wait for a long duration on the lane with few vehicles, while on the same lane the traffic cannot pass through in a short time due to rush on lane. So, there is a need to develop a secure, fast and reliable traffic control system capable of controlling vehicular traffic in rush hours without a need for a traffic sergeant.
Such a problem can be easily solved with the use of automatic traffic signal controllers.

## Project Background💡
Traffic control is a challenging problem in many cities. This is due to the large number of vehicles and the high dynamics of the traffic system which leads to accidents and potential time wastage. For such scenarios, a Traffic Light Controller (TLC) based on FPGA not only leads to a reduction in the waiting time, but gives higher priority to the junction where emergency vehicles are sensed using FPGA traffic sensors.  

The project draws inspiration from the traffic congestion in front of the Main Gate of our university, Delhi Technological University. The said place constitutes a 3-way road junction. I have first developed a novel sensor based TLC and compared the same with traditional timer based TLCs. Further, I have extrapolated the models to the 4-way traffic junctions.

<div align="center">
<img src="https://user-images.githubusercontent.com/72864182/120063360-72d96d00-c084-11eb-8217-fd09306ea7e9.png" >
<p>4-Way Junction of Roads</p>
</div>

Through this project I will design an FPGA based intelligent traffic light controller for a 4-road junction, as shown in the figure. 
There are numerous advantages of working with FPGAs instead of ASIC or microcontrollers for such an application, some being reduced cost, real time programmability and higher processing speeds. Therefore, I will base our traffic controller on FPGA. 
Finite state machines are computational models used to simulate sequential logic circuits. Since a traffic light will be based on sequential logic, it will be modeled as a finite state machine.

## Technology Stack 🛠️
- **Coding Languages**: Verilog HDL

- **Tools & Technologies**: Xilinx Vivado

- **Project Management Tools**: Trello, Git/Github, Markdown (Documentation)

## Learning Resources 🧰

-   [Introduction to Verilog HDL](https://www.tutorialspoint.com/vlsi_design/vlsi_design_verilog_introduction.htm)
    
-   [Introduction to FPGA Design with Vivado High-Level Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/ug998-vivado-intro-fpga-design-hls.pdf)
    
-   [Introduction to Traffic Signal Controller using Verilog](https://vlsicoding.blogspot.com/2013/11/verilog-code-for-traffic-light-control.html)

## License📜

[MIT License](https://github.com/HarshCasper/AllNotes/blob/main/LICENSE)
