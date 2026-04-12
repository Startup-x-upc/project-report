# Capítulo I: Introducción
## 1.1 Startup Profile
### 1.1.1 Descripción de la Startup
descripcion de la startup
### 1.1.2 Perfiles de integrantes del equipo
## James Caleb Delgado Pérez - U2021125277
<img src="./assets/foto.jpeg" width="160">

Soy estudiante de Ingeniería de Software con interés en el desarrollo de aplicaciones web y soluciones digitales que generen impacto real. Me encuentro en constante aprendizaje de tecnologías como C#, Java, JavaScript, HTML y CSS, 
además de contar con conocimientos en C++ y fundamentos de diseño y patrones de software.
Me interesa especialmente el desarrollo frontend, así como el manejo de bases de datos y la construcción de aplicaciones web completas. 
Disfruto crear interfaces funcionales y accesibles que mejoren la experiencia del usuario. Actualmente participo en el desarrollo de un proyecto
orientado al transporte en provincias, el cual representa una oportunidad clave para fortalecer mis habilidades y prepararme para el entorno laboral, 
aportando soluciones prácticas a problemas reales. Me considero una persona organizada, con alta capacidad de aprendizaje y 
comprometida con el trabajo en equipo. Además, disfruto de los deportes, lo que me ha permitido desarrollar disciplina, constancia y
enfoque en mis objetivos.

Estoy enfocado en seguir creciendo profesionalmente y aplicar mis conocimientos en proyectos innovadores dentro del desarrollo de software.
## 1.2 Solution Profile
### 1.2.1 Antecedentes y problemática
### 1.2.2 Lean UX Process
#### 1.2.2.1 Lean UX Problem Statements
Creemos que los pasajeros en zonas rurales de la sierra y selva del Perú tienen el problema de dificultad para acceder a transporte organizado y confiable cuando necesitan movilizarse dentro o fuera de sus comunidades.

Esto ocurre porque los servicios de transporte disponibles, como motos y mototaxis, operan de manera informal y sin coordinación, lo que genera incertidumbre, tiempos de espera altos y baja disponibilidad en ciertas zonas.
#### 1.2.2.2 Lean UX Assumptions
#### A. Business Assumptions
- Creemos que pasajeros en zonas periféricas y rurales requieren una forma accesible y confiable de solicitar mototaxis sin depender de la disponibilidad física en la calle.
- Esta necesidad puede atenderse mediante una PWA ligera que conecte en tiempo real a pasajeros y conductores, lo cual permita negociar tarifas antes de confirmar el viaje.
- Nuestros primeros usuarios serán residentes de zonas periféricas con smartphones básicos y mototaxistas independientes que operan sin afiliación a ninguna empresa.
- El valor principal que entregamos es la capacidad de acordar una tarifa justa antes del viaje, lo que elimina la arbitrariedad del precio en el momento.
- Beneficios adicionales: reducción del tiempo en vacío para conductores, visibilidad de la demanda cercana, historial de viajes con detalle de precios y rutas, y calificaciones mutuas para generar confianza.
- Estrategia de adquisión: difusión boca a boca a comunidades, acuerdos con asociaciones de mototaxistas locales y campañas en redes sociales regionales.
- Modelo de ingresos: comisión porcentual por viaje completado; en etapa incial se operará sin cobro para incentivar la adopción masiva.
- Competencia indirecta: apps de taxi como InDrive y colectivos.
- Ventaja competitiva: especialización en mototaxistas y motos lineales en provincias, funcionamiento como PWA sin descarga, negociación de tarifas y operatividad con conectividad básica.
- Mayor riesgo: desconfianza inicial de conductores hacia plataformas digitales y resistencia al cambio de hábitos de operación informal.
- Mitigación: Incorporar líderes de confianza dentro de las asociaciones de mototaxistas como primeros adoptantes, ofrecer onboarding sencillo y demostrar beneficios tangibles desde el primer uso.
- Supuestos críticos: acceso a datos móviles básicos en las zonas objetivo, disposición de conductores a portar smartphone durante su jornada e interés real del pasajero en negociar tarifas desde casa.

#### B. User Assumptions
- **¿Quiénes son los usuarios?** Pasajeros locales de zonas periféricas y mototaxistas independientes que operan sin plataforma ni empresa que los gestione. Rango de edad: 18 a 60 años, con uso frecuente de transporte informal y acceso a smartphone.
- **¿Dónde encaja el producto?** En el momento previo al viaje: el pasajero solicita desde casa o cualquier punto, propone una tarifa y el conductor más cercano la acepta, rechaza o contraoferta antes de moverse.
- **Problema a resolver**<br>
    a. Pasajero: incertidumbre sobre disponibilidad de transporte, precios abusivos en ausencia de competencia y tiempos de espera impredecibles.<br>
    b. Conductor: recorridos en vacío sin saber hay demanda real, tarifas impuestas sin posibilidad de negoción y jornadas poco rentables.
- **Uso Típico**<br>
    a. El pasajero ingresa a la PWA, indica origen y destino, propone una tarifa y aguarda respuesta del conductor disponible más cercano. <br>
    b. El conductor recibe la notificación en tiempo real, visualiza foto, nombre y calificación del pasajero, evalúa la tarifa y acepta, rechaza o contraoferta.
- **Características importantes:** solicitud con propuesta de tarifa del pasajero, geolocalización en tiempo real, sistema de negociación directa, historial de viajes y calificación mutua.
- **Look & Feel:** interfaz minimalista, de carga rápida y operativa en pantallas pequeñas, mapa con ubicación del conductor, estado del viaje y chat de negociación accesible desde la pantalla principal.

#### C. User Outcome & Benefit Assumptions
- Los pasajeros acceden a transporte desde cualquier punto sin necesidad de buscar una unidad disponible en la vía pública, lo cual reduce tiempos de espera y elimina la arbitrariedad en la fijación de precios.
- Los conductores disminuyen los desplazamientos en vacío al recibir solicitudes geolocalizadas con tarifa previamente acordada, lo que se traduce en mayor eficiencia y rentabilidad por jornada.
- La visibilidad del perfil del conductor genera en el pasajero una mayor percepción de seguridad, lo cual reduce la desconfianza asociada al transporte informal.
- La notificaciones en tiempo real agilizan la interacción entre ambas partes, lo que acorta el tiempo transcurrido entre la solicitud y la confirmación del viaje.
- El historial de viajes permite a los usuarios consultar precios y rutas anteriores, lo que facilita una toma de decisiones más informada en futuras solicitudes.
- El sistema de calificaciones mutuas incentiva un comportamiento adecuado de ambas partes, lo que contribuye a elevar progresivamente la calidad del servicio.

#### D. Business Outcome Assumptions
- Se espera alcanzar 500 usuarios activos entre pasajeros y conductores durante los primeros tres meses de operación en la zona piloto.
- Al menos el 60% de los viajes solicitados deberá concretarse mediante negociación dentro de la plataforma, lo que validaría la aceptación del modelo de tarifas dinámicas por parte de ambos segmentos.
- Se proyecta una reducción del 30% en la tasa de abandono de la aplicación durante los dos primeros meses, lo cual indica que el diseño ligero responde adecuadamente a las condiciones de conectividad en provincias.
- Las valoraciones positivas deberán superar el 80% y el tiempo promedio de aceptación de viajes ser inferior a 30 segundos, lo cual refleja que el perfil visible del conductor y las notificaciones en tiempo real impactan favorablemente en la confianza y la rapidez de interacción.
- Se considerará exitosa la funcionalidad de historial cuando al menos el 50% de los usuarios activos la consulte de forma recurrente durante el primer mes de uso.
- Se buscará establecer alianzas formales con al menos dos asociaciones de mototaxistas locales durante el primer año, con el objetivo de acelerar la incorporación de conductores a la plataforma.

#### E. Feature Assumptions
- Se asume que permitir al pasajero proponer la tarifa del viaje incrementará la tasa de viajes completados por encima del 60% de las solicitudes iniciadas, al reducir la fricción generada por precios impuestos unilateralmente.
- Una interfaz de carga rápida y bajo consumo de datos contribuirá a reducir la tasa de abandono en un 30%, lo cual elimina las barreras de acceso propios de zonas con conectividad básica.
- Mostrar el perfil del conductor con foto, nombre y calificación, acompañado de notificaciones en tiempo real, permitirá superar el 80% de valoraciones positivas y reducir el tiempo de aceptación de viajes a menos de 30 segundos.
- El historial de viajes con detalle de precios y rutas se considerará una funcionalidad de impacto positivo cuando al menos el 50% de usuarios lo consulte de manera recurrente.
- Un panel de actividad para el conductor con datos de viajes realizados, ingresos estimados y solicitudes cercanas incrementará el tiempo de disponibilidad en línea y reducirá los periodos de inactividad durante la jornada.

#### 1.2.2.3 Lean UX Hypothesis Statements
Las siguientes hipótesis están orientadas a validar una aplicación de transporte tipo InDrive enfocada en mototaxis y motos lineales en provincias.

- Creemos que el permitir a nuestros futuros usuarios negociar el precio
  del viaje directamente con los conductores ayudará a mejorar la percepción
  y la accesibilidad a servicio de taxi en provincias.
  Notaremos que esta funcionalidad está teniendo un óptimo resultado cuando
  por lo menos el 60% de los viajes se concreten mediante esta negociación
  dentro de la aplicación

- Creemos que ofrecer una aplicación ligera y de bajo consumo de datos, además
  de una interfaz simple e intuitiva logrará mejorar el uso de tecnologías
  en provincias con conectividad limitada.
  Sabremos que esto es cierto cuando la tasa de abandono disminuya en un 30%.

- Por otra parte, el mostrar información del conductor (foto, nombre y calificación)
  generará mayor confianza en los usuarios, y no solo eso, sino que el implementar
  notificaciones en tiempo real sobre las diferentes solicitudes y respuestas de viaje
  mejorará la rapidez de interacción entre pasajeros y conductores.
  Sabremos que esto es cierto cuando las valoraciones positivas superen el 80% y
  de viajes se reduzca el tiempo promedio de aceptación de viajes sea menor al 30%.

- Sumando a todo lo anterior el incluir un historial de viajes con detalles de precios
  y rutas ayudará a los usuarios a tomar decisiones más acertadas en futuros viajes.
  Para ello cuando el 50% de los usuarios revisen su historial podremos saber que esta
  funcionalidad tiene un impacto positivo dentro de nuestro aplicativo.


#### 1.2.2.4 Lean UX Canvas
## 1.3 Segmentos Objetivo