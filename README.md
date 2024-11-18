# Dynamics-of-Glucose-Insulin-Regulation

## Objective:
The objective of this experiment is to model the regulation of glucose and insulin in the human body and observe how the system behaves under different conditions, such as normal, Type-1 diabetes, and Type-2 diabetes.

## Experimental Setup:
The Simulink model is based on the equations governing glucose and insulin dynamics in the blood. These include equations for the mass balance of glucose and insulin, incorporating feedback mechanisms that regulate their concentrations.

### Key components:
- **Glucose Dynamics**: The rate of glucose entering and leaving the bloodstream is modeled, with the input rate defined as `QL` and outflows depending on the blood glucose level (`x`).
- **Insulin Dynamics**: The insulin concentration is controlled by glucose levels and is produced by the pancreas based on glucose concentration.

### Changes for Diabetes Conditions:
1. **Type-1 Diabetes**: Reduced sensitivity of the insulin response to glucose, modeled by lowering the insulin sensitivity parameter `β` to 20% of its normal value.
2. **Type-2 Diabetes**: Reduced effectiveness of insulin in promoting glucose uptake by tissues, modeled by reducing the parameter `ν` to 20% of its original value.

## Results:
- The simulation results for normal, Type-1, and Type-2 diabetes conditions are displayed as plots showing the dynamic behavior of glucose and insulin over time.

## MATLAB Code:
The MATLAB code used to predict the steady-state levels of glucose and insulin in the blood under different conditions is included. The graphical technique discussed in Expt-05 is used to solve the system of equations and find the steady-state values.

## Files:
- `Glucose_Insulin_Model.slx`: Simulink model of glucose-insulin regulation.
- `glucose_insulin_simulation.m`: MATLAB code for solving the system of equations and predicting steady-state values.
- Plots: Graphs of glucose and insulin dynamics under various conditions.

## Instructions:
1. Open the Simulink model file (`Glucose_Insulin_Model.slx`) in MATLAB.
2. Run the simulation for normal, Type-1, and Type-2 diabetes conditions.
3. Use the MATLAB code to predict the steady-state values for glucose and insulin levels.
4. Observe the results and plot the glucose-insulin dynamics for analysis.
