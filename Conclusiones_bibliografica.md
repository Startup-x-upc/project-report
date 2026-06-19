# Conclusiones

## Conclusiones y recomendaciones

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

9. Integración y despliegue del Frontend con la API Backend:
   El desarrollo técnico culminó en la transición exitosa de una arquitectura inicial basada en Fake API hacia un sistema completamente conectado y funcional. Se integró la aplicación web frontend en Angular con los servicios del backend desarrollados en Spring Boot, logrando una comunicación fluida a través de peticiones HTTP REST y el mapeo estructurado de datos. El despliegue final en producción (tanto de la interfaz web como de la API documentada con Swagger) demuestra la interoperabilidad del sistema y la viabilidad técnica para soportar flujos en tiempo real y persistencia real en base de datos.

10. Validación y optimización de la experiencia de usuario (UX):
    Las entrevistas de validación con los usuarios finales (conductores y pasajeros) y la evaluación heurística detallada permitieron contrastar la usabilidad de la plataforma frente a necesidades reales y estándares de diseño. Se identificaron oportunidades clave de mejora en la visibilidad del estado del sistema, consistencia de la navegación y prevención de errores en los flujos de registro y solicitud de viajes. La retroalimentación cualitativa obtenida valida la propuesta de valor del producto, demostrando que Chapa Tu Ruta es percibida como una solución segura e intuitiva, a la vez que orienta el roadmap de optimización continua del software.

## Video About-the-Team


Esta sección contiene el video de presentación del equipo ("About-the-Team"), el cual resume nuestro proceso de trabajo colaborativo, la metodología aplicada y las contribuciones individuales durante el desarrollo del proyecto "Chapa Tu Ruta".

### Introducción al proceso y logros del equipo

A lo largo de los Sprints del proyecto, el equipo de CTR Technologies ha trabajado de manera altamente coordinada utilizando metodologías ágiles. Partiendo de la fase de descubrimiento con Lean UX y _Needfinding_, logramos validar de primera mano las problemáticas de transporte informal y la inseguridad percibida en zonas periféricas mediante entrevistas estructuradas a pasajeros y conductores.
En la fase de diseño y arquitectura, el equipo aplicó de manera rigurosa la metodología **Domain-Driven Design (DDD)**, estructurando la plataforma en dos segmentos (conductores y pasajeros) y cinco contextos delimitados (_Bounded Contexts_) que garantizan la modularidad y escalabilidad del sistema.
Durante los entregables finales (AV2), nos enfocamos en el desarrollo técnico, implementando el frontend interactivo en Angular con geolocalización, Leaflet para mapas en tiempo real, un sistema dinámico de negociación de tarifas y la integración de notificaciones. Los logros alcanzados demuestran un alto nivel de madurez técnica, trabajo colaborativo y la consecución del **Student Outcome 3 (ABET)** de comunicación efectiva a través de reportes técnicos claros y sustentaciones profesionales.

### Enlaces del Video

- **Video en YouTube:** [Enlace al Video en YouTube](https://www.youtube.com/) _(Colocar aquí la URL del video subido a YouTube)_
- **Video en Microsoft Stream:** [Enlace al Video en Microsoft Stream](https://stream.microsoft.com/) _(Colocar aquí la URL del video subido a Microsoft Stream)_

### Código de Inserción para el Landing Page

Para integrar el video en la sección "Nosotros" o "About Us" del Landing Page del producto, se puede utilizar el siguiente fragmento de código HTML estándar:

```html
<section
  class="about-team-video"
  id="about-team-video"
  style="padding: 50px 0; text-align: center; background-color: #f9f9f9;"
>
  <div class="container" style="max-width: 800px; margin: 0 auto;">
    <h2 style="font-size: 2.5rem; margin-bottom: 20px; color: #333;">
      About our Team
    </h2>
    <p style="font-size: 1.1rem; color: #666; margin-bottom: 30px;">
      Conoce a los integrantes de CTR Technologies y descubre cómo diseñamos y
      desarrollamos <strong>Chapa Tu Ruta</strong>, nuestra plataforma
      inteligente para el transporte en mototaxi.
    </p>
    <div
      class="video-wrapper"
      style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; border-radius: 8px; box-shadow: 0 4px 15px rgba(0,0,0,0.1);"
    >
      <iframe
        style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0;"
        src="https://www.youtube.com/embed/VIDEO_ID"
        title="Chapa Tu Ruta - About the Team"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
      >
      </iframe>
    </div>
  </div>
</section>
```

# Bibliografía

1. Dato de 1.6 millones de mototaxis registrados (MTC, 2021) y 3 millones de conductores (Federación Nacional de Mototaxistas):
   https://www.infobae.com/peru/2024/09/22/nueva-ley-del-mototaxista-creara-un-registro-universal-de-los-transportistas-que-brindan-este-servicio/
2. Dato de población INEI 2024 (34 millones / 60% en ciudades +100k hab.):
   https://www.infobae.com/peru/2024/07/12/peru-aumento-el-numero-de-habitantes-en-el-2024-estudio-de-inei-revela-la-nueva-cifra/
3. Ley N.° 31917 y requisitos del MTC (licencia B-IIc, SOAT, inspección técnica):
   https://larepublica.pe/sociedad/2024/09/21/el-nuevo-reglamento-del-mtc-que-regira-para-el-servicio-de-mototaxi-en-peru-conoce-requisitos-y-sanciones-1765596
4. Reglamento MTC 2024 y contexto regulatorio:
   https://eltiempo.pe/nacional/nuevo-reglamento-mototaxi-2024-cuales-son-los-nuevos-cambios-que-implemento-el-mtc-en-peru/

# Anexos

En esta sección se presentan los enlaces a los recursos de diseño, presentaciones de equipo y entornos desplegados para el proyecto "Chapa Tu Ruta":

- **Diseño del Prototipo en Figma:** [Figma Link](https://www.figma.com/design/XB9QCFVfSKHug7qbvAIjFw/Open-Source?node-id=151-2853&t=ji2FxuuNBFc7GAFY-1)
- **Presentación "About the Team":** [About the Team](https://youtu.be/akpD8VS5-1w)
- **Presentación "About the product":** [About the product](https://www.youtube.com/watch?v=VIuDAmngaiI)
- **Presentación de la Exposición:** [Exposición](https://canva.link/8784xk57e4h00eh)
- **Despliegue de la Aplicación Frontend:** [Web App Link - Frontend](https://chapaturuta-e7d2e--pr4-develop-qoacrgnd.web.app/login)
- **Despliegue de la API Backend (Swagger UI):** [Swagger API Link - Backend](https://backend-webapplication-production.up.railway.app/swagger-ui/index.html)
