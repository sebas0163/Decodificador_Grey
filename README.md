# decodificador_Grey

## Integrantes
Desarrollado por los estudiantes:
- Sebastián Moya Monge 2019077209
- Ignacio Grané Rojas  2019380056
- Joseph Jiménez Zúñiga 2016133677

## Tareas
- [x] [Creación del repositorio](https://github.com/sebas0163/decodificador_Grey/issues/6)
  - Creación de un repositorio en Github donde almacenar todo el desarrollo del proyecto.
- [X] [Interpretar conmutadores de una tabla](https://github.com/sebas0163/decodificador_Grey/issues/1)
  - Basándose en una tabla, se deberán de interpretar los conmutadores en esta.
  - Se utilizará una entrada de 0011 como caso de prueba, esperando una salida conmutada de 1010.
- [X] [Capturar y sincronizar la entrada con el sistema principal](https://github.com/sebas0163/decodificador_Grey/issues/2)
  - Se tomará la salida de la tabla conmutada, a lo cual se sincronizará con el sistema principal.
- [X] [Traducir entrada de binario para enviar al subsistema](https://github.com/sebas0163/decodificador_Grey/issues/3)
  - Se obtiene una entrada en binario y se envía al subsistema.
- [X] [Desplegar código binario en luces LED, con un refrescado de cada 500 ms](https://github.com/sebas0163/decodificador_Grey/issues/4)
  - Se obtiene un código binario y se despliega en luces LED.
  - Se busca tener un refrescado cada medio segundo, de manera que puedan verse los cambios y códigos en poco tiempo.
  - Se estima una salida que encienda 2 de 4 leds para el caso de prueba brindado.
- [X] [Decodificación y despliegue en dispositivos de 7 segmentos](https://github.com/sebas0163/decodificador_Grey/issues/5)
  - Investigar cómo decodificar el código.
  - Desplegar el código decodificado en dispositivos de 7 segmentos.
  - Se convertirá el número obtenido en binario y se proyectará en el dispositivo, de manera que este indique el número en otra base. La salida deberá de ser dicho número en una base que posteriormente se terminará de definir.
* Para observer la distribución de tareas, dirigirse a la sección de [issues](https://github.com/sebas0163/decodificador_Grey/issues)
* Nota: Las salidas, junto con los casos de prueba, pueden cambiar conforme se siga desarrollando el proyecto.

## Reglas
- La comunicación será por la plataforma WhatsApp, mediante el grupo creado para este fin.
- Las reuniones serán por la plataforma Zoom, cuando se considere pertinente. De preferencia serán en modalidad presencial.
- Se deberá de cumplir con los plazos de entrega establecidos por el profesor.
- Se deberá de completar las tareas correspondientes a cada miembro.

## Codigo Gray
- Es un codigo sin peso y no aritmetico, lo que implica que no existen pesos especificos asignados a las posiciones de los bits. Es caracterizado por solo varia un bit de un codigo al siguiente.

#  Descripción general del funcionamiento  Decodificador Gray
- Se debe de implementar un circuito que pueda obtener de entrada en formato gray, esta debe ser convertida a numeros binarios y ser visualizado por medio de LEDS y el Display que correspondiente a la representacion de los numeros

- El circuito consta de tres subsistemas, los cuales se encargan de convertir el número en código gray a binario (decodificar gray), enviar la señal en binario para ser representada en leds (subsistema de leds) y también toma la señal y la muestra en el display de siete segmentos (subsistema de 7 segmentos).

## Subsistema Gray

### Descripcion del comportamiento Gray corresponde a

![Image text](https://github.com/sebas0163/decodificador_Grey/blob/main/imagenes/tablaVerdadGray.PNG)

### Diagrama de bloques subsistema gray

![Image text](https://github.com/sebas0163/decodificador_Grey/blob/main/imagenes/grayDeco.PNG)

## Subsistema de LEDS

### Descripcion del comportamiento de los LEDS corresponde a 

![Image text](https://github.com/sebas0163/decodificador_Grey/blob/main/imagenes/tablaLED.PNG)

### Diagrama de Bloques subsitema LEDS

![Image text](https://github.com/sebas0163/decodificador_Grey/blob/main/imagenes/Bloques_leds.png)

### Diagrama de funcionamiento LEDS

![Image text](https://github.com/sebas0163/decodificador_Grey/blob/main/imagenes/Diagrama%20leds.png)

## Subsistema Display

### Descripcion del comportamiento del Display corresponde a 

![Image text](https://github.com/sebas0163/decodificador_Grey/blob/main/imagenes/tablaDisplay.PNG)
![Image text](https://github.com/sebas0163/decodificador_Grey/blob/main/imagenes/codificadorBinarioDisplay.PNG)

### Diagrama de bloques del Subsistema del display

![Image text](https://github.com/sebas0163/decodificador_Grey/blob/main/imagenes/diagramaBloqueDisplay.PNG)

## Análisis de consumo de recursos

![Image text](https://github.com/sebas0163/decodificador_Grey/blob/main/imagenes/AnalisisConsumo.PNG)

## Reporte de velocidades máximas y mínimas del reloj

![Image text](https://github.com/sebas0163/decodificador_Grey/blob/main/imagenes/AnalisisVelocidad.PNG)

## Problemas encontrados y soluciones propuestas

### Problemas
- Tiempo de espera erroneo en el subsistema de leds.
- Mala implementación del conversor Gray.
- Tardanza de Vivado en responder.
- Atrasos por no entregar el trabajo establecido en la fecha indicada
### Soluciones
- Para el subsistema de leds se recalculó el sistema de conteo de pulsaciones.
- Se buscó otra manera de implemetar el conversor.
- Se instaló una versión más antigua de Vivado que permitiera utilizar los programas en menor tiempo.
- Ser mas estrictos con las fechas de entregas establecidas



