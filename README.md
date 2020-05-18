# Lab06 

# Diseño de banco de Registro

* Jaider Neira
* Sergio Obando 
* Julian Diaz

# Introducción


Para este paquete de trabajo, deben estar inscrito en un grupo y clonar la información del siguiente link [WP06](https://classroom.github.com/g/XHLhUCe3). Una vez aceptado el repositorio debe descargarlo en su computador, para ello debe clonar el mismo. Si no sabe cómo hacerlo revise la metodología de trabajo, donde se explica el proceso

Las documentación deben estar diligencia en el archivo README.md del repositorio clonado.

Una vez clone el repositorio, realice lo siguiente:


## Descipción 
Se debe diseñar un banco de registro tal que:

* El banco de registro debe tener 10 registros de R/W.
* Permitir la lectura de 2 registros  simultáneamente 
* Permitir la escritura  de 1 registro, acorde a la señal de control regwrite
* Contar con señal de rst, la cual  ponga  todos los registros en un valor conocido.

## **Caja del banco de registro**
![banco de registro](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/bando_de_registro.JPG)


* Visualizar la información, en al menos dos display de 7 segmentos (información de cada registro leído).
* El ingreso de la información se debe hacer por medio de los interruptores.


**Opcional. Da mas puntos:**
* Parametrizar el tamaño de palabra de cada registro  y la cantidad de registro ( Por defecto =4 bits). Se recomienda leer el documento de este [link](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-884-complex-digital-systems-spring-2005/related-resources/parameter_models.pdf) .
* Pre cargar el banco de registro con información.  _Usar $readmenh_  (Investigar: "Initialize Memory in Verilog").

Entregables:

* Documentación
* Archivo `testbench` el cuál debe simular la escritura de 16 registros y 8 lecturas mas el rst, el resultado de la simulación debe visualizarse en diagrama de tiempo.
* Vídeo de la implementación.
* Código HDL de la solución.
.

 ![caja](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab07-BancosRgistro/doc/banco%20registro.png)

# Simulacion en Quartus



# Implementación

## **Caja del banco de registro**

En la siguiente imagen se muestra el nombre que se asigno a cada uno de los componentes de la FPGA que se usara y manipulara para mostrar los datos de entrada o salida de cada una de las señales del banco de registro con su respectivo funcionamiento.

![nombres](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/nombres.JPG)

Inicialmente se muestra el display 0 y el display 1 en 0 debido a que se encuentra un el numero 0b en cada uno de los 4 registros del banco.

![paso1](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/paso1.JPG)

Se ingresa el numero 2b en el datW y se asigna a la posicion 0 del addrW con el pulsador regWrite.

![paso2](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/paso2.JPG)

Se muestra el display 0 y 1 con el numero 2 en decimal debido a que ya se encuentra guardado en la posicion 0 del banco de registro un 2 y los switch de addrA y addrB estan en esa posicion 0; Se ingresa en datW el numero 3b, se asigna a la posicion del banco 1 con addrW y se escribe registro con el pulsador regWrite.

![paso3](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/paso3.JPG)

Se ingresa en datW el numero 7b, se asigna a la posicion del banco 2 con addrW y se escribe registro con el pulsador regWrite.

![paso4](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/paso4.JPG)

Se ingresa en datW el numero 15b, se asigna a la posicion del banco 3 con addrW y se escribe registro con el pulsador regWrite.

![paso5](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/paso5.JPG)

Como ya se guardaron anteriormente los 4 datos en el banco de registro de la siguiente manera: (posicion 0 el #2, posicion 1 el #3, posicion 2 #7 y posicion 3 el #15(F)), se observa que cuando addrA y addrB estan en 0b cada uno, el display 0 y 1 muestran el numero que se guardo en el registro 0.

![paso6](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/paso6.JPG)

Se observa que cuando addrA y addrB estan en 1b cada uno, el display 0 y 1 muestran el numero que se guardo en el registro 1.

![paso6.1](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/paso6.1.JPG)

Se observa que cuando addrA y addrB estan en 2b cada uno, el display 0 y 1 muestran el numero que se guardo en el registro 2.

![paso7](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/paso7.JPG)

Se observa que cuando addrA y addrB estan en 2b cada uno, el display 0 y 1 muestran el numero que se guardo en el registro 3.

![paso8](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/paso8.JPG)

Finalmente se pulsa el boton reset el cual nos muestra un dato que ya se conocia.

![paso9](https://github.com/ELINGAP-7545/lab06-grupo1/blob/master/fig/paso9.JPG)

## Video de la implementación 

https://drive.google.com/file/d/1fjl7Fu7kq7cNU06asmVXPnqPC6wS09cO/view?usp=sharing
