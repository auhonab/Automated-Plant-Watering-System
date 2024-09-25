# Automated-Plant-Watering-System - Simulation using Arduino Uno and MATLAB

This project simulates the automated watering of a plant using an **Arduino Uno** board, a **soil moisture sensor**, a **MOSFET switch**, and a **water pump**. The MATLAB code monitors the soil moisture level by reading the voltage output of the sensor and triggers watering when the soil is dry, based on a pre-defined threshold.

## Project Overview

This project demonstrates how to simulate the process of watering a plant using MATLAB in combination with an Arduino Uno board and basic electronic components. It reads sensor data to check the soil moisture and controls a water pump to water the plant as needed.

## Components

- **Arduino Uno**
- **MATLAB software** (installed on your PC)
- **Soil moisture sensor**
- **MOSFET switch** with wires
- **Water pump**
- **Potted plant** (optional for testing)
- **Micro USB to USB-A cable**
- **9V battery**
- **Two 4-pin connectors**
- **Cup of water**

## How It Works

1. **Sensor Reading**: The soil moisture sensor connected to the Arduino Uno reads the soil's moisture level, which is converted into voltage.
2. **MATLAB Interface**: MATLAB reads the voltage values from the sensor and compares them to a threshold (set at 3.4V).
3. **Watering Mechanism**: 
   - If the sensor voltage is **above** the threshold (indicating dry soil), MATLAB signals the MOSFET switch to turn on the water pump and water the plant.
   - If the voltage is **below** the threshold (indicating sufficient moisture), the pump remains off.
4. **Automation**: This cycle repeats automatically until the code is manually stopped in MATLAB.

## Procedure

1. **Setup**:
   - Connect the moisture sensor, water pump, and MOSFET switch to the Arduino board as per the wiring diagram.
   - Plug the Arduino into your PC via the Micro USB cable.
2. **MATLAB Interface**:
   - Use MATLAB to read the sensor voltage and control the water pump.
   - The MATLAB script monitors the sensor’s output and triggers the pump when needed, simulating plant watering.

## Results

- When the sensor reading drops **below 3.4V**, the water pump remains off.
- When the sensor voltage rises **above 3.4V**, indicating the plant is dry, the MOSFET switch activates the pump to water the plant until the voltage falls below the threshold.

## Challenges and Recommendations

- **Cable Connection Issue**: During testing, it was observed that the **yellow and white wire switch** for the 4-pin cable connected to the sensor is prone to breaking. 
  - **Recommendation**: A safer alternative is to remove the **A0 Rotary Potentiometer** and directly plug the sensor into **A0**, minimizing the need for frequent wire changes.

## Conclusion

This project successfully simulates the process of watering a plant based on soil moisture levels using MATLAB and Arduino. With further refinement, this setup can be adapted for real-world plant watering automation systems.




