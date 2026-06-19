# Conclusiones

1. Validación del Problem Statement principal:
El equipo identificó que en zonas rurales y periurbanas del Perú, la ausencia de una herramienta digital accesible genera una desconexión estructural entre la oferta y demanda de mototaxis, afectando tanto la economía de los conductores como la calidad de vida de los pasajeros. Las entrevistas realizadas a usuarios en Chincha, Huaraz, Carhuaz y Villa El Salvador confirmaron esta problemática de forma consistente: los tres pasajeros entrevistados reportaron inseguridad, regateo de tarifas e incertidumbre sobre la disponibilidad del servicio, mientras que los tres conductores señalaron recorridos en vacío, alta competencia en paraderos y jornadas de baja 
rentabilidad. Estos hallazgos validan que el problema identificado en el Lean UX Process 
corresponde a una necesidad real y no a una suposición del equipo.

2. Contraste de Assumptions de negocio con la realidad del segmento:
El equipo asumió que los pasajeros en zonas periféricas requerirían una forma accesible de solicitar mototaxis sin depender de disponibilidad física en la calle, y que los conductores estarían dispuestos a adoptar una plataforma digital si esta era sencilla, tenía comisiones bajas 
y garantizaba mayor seguridad. Ambos supuestos fueron respaldados por las entrevistas: los pasajeros priorizaron la visibilidad del perfil del conductor como mecanismo de reducción del riesgo percibido, y los conductores manifestaron interés en funciones de negociación de tarifas, 
visualización de zonas de demanda y sistemas de calificación. Sin embargo, también se identificó como assumption crítica la resistencia al cambio por parte de conductores informales, lo cual deberá abordarse en fases posteriores mediante onboarding simplificado y alianzas con 
asociaciones locales.

3. Validación parcial de los Hypothesis Statements:
El equipo formuló cuatro hipótesis principales en el Lean UX Canvas. La hipótesis sobre la negociación de tarifas (60% de viajes concretados mediante negociación) y la hipótesis sobre la reducción del abandono (30% al ofrecer interfaz ligera) no pudieron validarse cuantitativamente 
en esta etapa dado que el producto aún no cuenta con usuarios reales. No obstante, el desarrollo del Sprint 2 implementó los flujos de solicitud, aceptación y negociación de viajes en el frontend, sentando las bases técnicas para medir estas hipótesis en iteraciones futuras con usuarios piloto en las ciudades objetivo.

4. Avance en los criterios de éxito del Lean UX:
Los criterios de éxito definidos incluían alcanzar 500 usuarios activos en tres meses, superar el 80% de valoraciones positivas, reducir el tiempo de aceptación de viajes a menos de 30 segundos y lograr que al menos el 50% de usuarios revisaran su historial. Aunque estos indicadores aún no son medibles en producción, el diseño del sistema los tuvo como eje central: el flujo de calificaciones, el historial de viajes, las notificaciones en tiempo real vía Ably y la visualización del perfil del conductor fueron implementados directamente en respuesta a estos criterios, lo que demuestra coherencia entre el proceso de Lean UX y las decisiones de desarrollo.

5. Definición clara de segmentos objetivo y su impacto en el diseño:
Se identificaron dos segmentos diferenciados: pasajeros de 15 a 60 años que valoran la verificación de conductores, la disponibilidad constante y la trazabilidad del viaje; y mototaxistas formales de 20 a 50 años que buscan optimizar su tiempo activo, aumentar ingresos y reducir la 
incertidumbre de la demanda. Esta segmentación tuvo impacto directo en la arquitectura de información, el sistema de etiquetado, los wireflows y los User Stories priorizados en el Product Backlog, garantizando que cada funcionalidad desarrollada respondiera a una necesidad concreta 
de alguno de los dos perfiles.

6. Solidez de la arquitectura bajo Domain-Driven Design:
La aplicación de DDD permitió estructurar el sistema en cinco Bounded Contexts bien delimitados: Identidad y Acceso, Gestión de Viajes, Geolocalización y Notificaciones, Tarifas y Calificaciones, e Historial y Administración. Esta decisión arquitectónica, respaldada por el Design-Level Event Storming y los diagramas C4, garantiza que ChapaTuRuta pueda escalar a nuevas ciudades y funcionalidades sin comprometer la integridad del sistema existente, lo cual es coherente con la visión de convertirse en la plataforma de referencia para el transporte en mototaxi en ciudades intermedias de Latinoamérica.

7. Implementación funcional del frontend en el Sprint 2:
Durante el Sprint 2 se desarrolló la aplicación web en Angular con una fake API (json-server), implementando los flujos principales de ambos perfiles: solicitud de viaje con geolocalización mediante la Geolocation API, mapa interactivo con Leaflet, sistema de candidatos al estilo 
inDrive, gestión de disponibilidad del conductor con validación de saldo en wallet, visualización de estados del viaje y notificaciones. Este avance representa la transición del proyecto desde la documentación hacia un producto tangible y demostrable, lo que constituye una base sólida para el desarrollo del backend en iteraciones siguientes.

8. Aplicación consistente de metodologías ágiles y buenas prácticas de ingeniería:
El equipo adoptó GitFlow con Conventional Commits, Pull Requests estructurados y versionado semántico a lo largo de ambos sprints, acumulando más de 160 commits en el repositorio del informe y decenas adicionales en el frontend. El uso de Gherkin para los criterios de aceptación 
de las User Stories y Technical Stories mejoró la claridad y trazabilidad de los requerimientos. Estas prácticas no solo evidencian competencia técnica del equipo sino que también reflejan la capacidad de comunicar decisiones de desarrollo de forma escrita, clara y organizada, cumpliendo con el Student Outcome 3 establecido para el curso.


# Bibliografía 
1. Dato de 1.6 millones de mototaxis registrados (MTC, 2021) y 3 millones de conductores (Federación Nacional de Mototaxistas):
https://www.infobae.com/peru/2024/09/22/nueva-ley-del-mototaxista-creara-un-registro-universal-de-los-transportistas-que-brindan-este-servicio/
2. Dato de población INEI 2024 (34 millones / 60% en ciudades +100k hab.):
https://www.infobae.com/peru/2024/07/12/peru-aumento-el-numero-de-habitantes-en-el-2024-estudio-de-inei-revela-la-nueva-cifra/
3. Ley N.° 31917 y requisitos del MTC (licencia B-IIc, SOAT, inspección técnica):
https://larepublica.pe/sociedad/2024/09/21/el-nuevo-reglamento-del-mtc-que-regira-para-el-servicio-de-mototaxi-en-peru-conoce-requisitos-y-sanciones-1765596
4. Reglamento MTC 2024 y contexto regulatorio:
https://eltiempo.pe/nacional/nuevo-reglamento-mototaxi-2024-cuales-son-los-nuevos-cambios-que-implemento-el-mtc-en-peru/
