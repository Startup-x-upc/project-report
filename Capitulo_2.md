# Capítulo II: Introducción

## 2.1 Competidores

### 2.1.1. Análisis competitivo

### 2.1.2. Estrategias y tácticas frente a competidores

## 2.2 Entrevistas

### 2.2.1. Diseño de entrevistas

#### Objetivo

- Comprender las necesidades, comportamientos, problemas y expectativas
  que todo ciudadano fuera de Lima tiene respecto al uso de servicios
  de transporte en mototaxis y moto lineal

#### Publico Objetivo

##### Se entrevistarán dos tipos de usuarios:

- Pasajeros frecuentes de mototaxis en provincias
- Conductores de motos lineales y mototaxis

##### Características:

- Edad: 18 a 60 años
- Uso frecuente de transporte informal
- Acceso a un smarthphone

#### Tipo de entrevistas:

- Se utilizarán entrevistas previamente estructuradas por el equipo de este proyecto
  permitiendo obtener la información necesaria y detallada según cada respuesta del
  entrevistado

#### Metodología:

- Modalidad: Virtual
- Duración: 10 a 15 min por entrevista
- Registro: habrá un registro de entrevistas con notas escritas en nuestro proyecto

#### Preguntas para pasajeros:

1. ¿Con qué frecuencia utilizas mototaxis o motos lineales?
2. ¿Qué problemas has experimentado al usar estos servicios?
3. ¿Cómo sueles acordar el precio de un viaje?
4. ¿Qué factores consideras importantes al elegir un conductor?
5. ¿Te has sentido inseguro en algún viaje? ¿Por qué?
6. ¿Qué te haría confiar en una aplicación de transporte?
7. ¿Has utilizado aplicaciones como InDrive? ¿Cómo fue tu experiencia?
8. ¿Qué funcionalidades te gustaría que tenga una app de transporte?

#### Preguntas para conductores:

1. ¿Cuánto tiempo llevas trabajando como conductor?
2. ¿Cuáles son las principales dificultades que enfrentas en tu trabajo?
3. ¿Cómo consigues pasajeros actualmente?
4. ¿Qué opinas sobre el uso de aplicaciones para conseguir clientes?
5. ¿Te gustaría negociar precios desde una app? ¿Por qué?
6. ¿Qué funcionalidades te ayudarían a mejorar tus ingresos?
7. ¿Qué te motivaría a usar una aplicación como InMoto?

#### Consideraciones éticas:

- Se le solicitará al entrevistado el consentimiento de la grabación
  de las entrevistas asi como el trato de su información
- Se garantizará confidencialidad de información proporcionada
- Los datos solo serán utilizados con fines académicos

### 2.2.2. Registro de entrevistas

### 2.2.3. Análisis de entrevistas

## 2.3 Need finding

### 2.3.1. User Personas

### 2.3.2. User Task Matrix

La User Task Matrix nos permite descomponer las actividades y tareas que nuestros usuarios realizan al utilizar la solución propuesta. Estas tareas, al clasificarse por su frecuencia e importancia, nos ayudan a priorizar qué funcionalidades de ChapaTuRuta deben desarrollarse con mayor énfasis para optimizar la experiencia de cada segmento.

Los segmentos considerados para este análisis son:

- **Pasajero (Ana Flores)**
- **Mototaxista (Luis Gutiérrez)**

---

### Task Matrix

| **Tarea**                                               | **Ana Flores (Pasajero)** |                 | **Luis Gutiérrez (Mototaxista)** |                 |
| ------------------------------------------------------- | ------------------------- | --------------- | -------------------------------- | --------------- |
|                                                         | **Frecuencia**            | **Importancia** | **Frecuencia**                   | **Importancia** |
| Solicitar un viaje                                      | Always                    | High            | Never                            | —               |
| Aceptar o rechazar solicitudes de viaje                 | Never                     | —               | Always                           | High            |
| Consultar disponibilidad de mototaxistas cercanos       | Always                    | High            | Rarely                           | Low             |
| Activar/desactivar disponibilidad para recibir carreras | Never                     | —               | Always                           | High            |
| Revisar el perfil y calificación del conductor          | Often                     | High            | Rarely                           | Low             |
| Calificar al conductor al finalizar el viaje            | Often                     | High            | Often                            | High            |
| Calificar al pasajero al finalizar el viaje             | Never                     | —               | Often                            | Medium          |
| Consultar historial de viajes realizados                | Sometimes                 | Medium          | Sometimes                        | Medium          |
| Verificar el precio referencial del viaje               | Always                    | High            | Sometimes                        | Medium          |
| Gestionar datos del perfil personal                     | Sometimes                 | Medium          | Sometimes                        | Medium          |
| Verificar documentos del conductor (brevete, SOAT)      | Sometimes                 | High            | Rarely                           | Low             |
| Reportar incidencias o problemas en el viaje            | Rarely                    | High            | Rarely                           | High            |

---

### Análisis

El **pasajero** concentra sus acciones en encontrar transporte de forma rápida y confiable. Sus tareas de mayor frecuencia e importancia giran en torno a solicitar el viaje, verificar el precio referencial y revisar el perfil del conductor antes de aceptar. La calificación post-viaje también es relevante porque alimenta el sistema de confianza de la plataforma, que es precisamente el diferenciador de ChapaTuRuta frente al contacto informal por WhatsApp.

El **mototaxista** orienta su actividad a la gestión de su disponibilidad y la atención de carreras. Activarse en la plataforma y aceptar solicitudes son sus tareas más frecuentes e importantes, siendo estas el núcleo de su experiencia. La calificación que recibe de los pasajeros impacta directamente en su visibilidad dentro de la app, por lo que también tiene un peso significativo en su rutina.

Ambos perfiles coinciden en la importancia de **calificar al finalizar el viaje** y **reportar incidencias**, ya que estas acciones sostienen la confianza y seguridad del ecosistema. Cualquier problema no reportado deteriora la experiencia de ambos lados de la plataforma.

### 2.3.3. User Journey Mapping

### 2.3.4. Empathy Mapping

**Ana Flores**
![empathy map ana flores](Resources/empathymapping/Ana%20Flores.png)

**Luis Gutiérrez**
![empathy map luis gutierrez](Resources/empathymapping/Luis%20Gutiérrez.png)

## 2.4 Big Picture Even Storming

### Registro

En esta fase se modela el proceso de incorporación de nuevos usuarios a la plataforma. El pasajero y el conductor se registran proporcionando sus datos básicos.

![Registro](Resources/eventStorming/registro.jpg)

### Descubrimiento

Una vez registrado, el pasajero abre la aplicación y su ubicación es detectada automáticamente. El sistema muestra en un mapa los conductores disponibles cercanos.

![Descubrimiento](Resources/eventStorming/descubrimiento.jpg)

### Pre-viaje

Una vez aceptada la solicitud, el sistema calcula automáticamente la tarifa estimada basándose en la distancia. El pasajero confirma la tarifa antes de iniciar el viaje.

![Pre-viaje](Resources/eventStorming/pre-trip.jpg)

### Ejecucion del viaje

El conductor llega al punto de recojo y confirma el inicio del viaje. Durante esta fase el trayecto queda registrado en el sistema. El viaje puede ser cancelado por cualquiera de las dos partes.

![Ejecución del viaje](Resources/eventStorming/trip-execution.jpg)

### Post-viaje

Al completarse el viaje, el sistema registra el cobro de la tarifa y solicita la calificacion del conductor.

![Post-viaje](Resources/eventStorming/post-trip.jpg)

## 2.5 Ubiquitous Language
