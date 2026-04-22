# ECC_2024-2025

Prácticas realizadas en Estructura de Computadores durante el curso 2024-2025.

## Práctica 1: ALU de 4 bits en Verilog

En esta práctica se diseña una ALU modular de 4 bits y se comprueba su funcionamiento mediante simulación.

Incluye:
- Diseño por bloques de la ALU (`alu.v`) a partir de submódulos combinacionales.
- Implementación de componentes base como sumadores, multiplexores, preprocesador y unidad lógica.
- Generación de banderas de estado (`zero`, `carry`, `sign`) en función del resultado.
- Banco de pruebas (`alu_tb.v`) con comprobación automática de resultados para múltiples combinaciones de entradas y operaciones.
- Fichero de traza (`alu.vcd`) para inspección temporal de señales.

## Práctica 2: Simulación de CPU y análisis de trazas

En esta práctica se utiliza un entorno de simulación para observar el comportamiento de una CPU durante la ejecución de un programa de ejemplo.

Incluye:
- Carpeta `CpuDemo` con ejecutables de simulación (`.vvp`) preparados para distintas versiones de Icarus Verilog.
- Traza de simulación (`cpu_tb.vcd`) y configuración de visualización (`cpu_tb.gtkw`) para GTKWave.
- Ficheros de inicialización de memoria de programa y banco de registros para reproducir el ejemplo.
- Instrucciones de uso en `CpuDemo/README.txt` para lanzar simulación y visualización desde línea de comandos.
