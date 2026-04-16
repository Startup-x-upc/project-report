# Capítulo IV: Product Design

## 4.1 Style Guidelines

  ### 4.1.1 General Style Guidelines

  ### 4.1.2 Web Style Guidelines

## 4.2 Information Architecture

  ### 4.2.1 Organization Systems
  <p align="justify">
    La arquitectura de información de ChapaTuRuta utiliza tres tipos de organización según el contexto de cada pantalla y flujo.<br><br>
    La organización jerárquica se aplica en las pantallas principales de ambos perfiles. Para el pasajero, el mapa con conductores disponibles ocupa el mayor peso visual, seguido del campo de destino y el botón de solicitud; el historial, el perfil y las calificaciones quedan en un nivel inferior porque no forman parte del flujo urgente. Para el conductor, la jerarquía coloca en primer plano su estado de disponibilidad y las solicitudes entrantes, relegando los ingresos del día y la gestión de documentos a secciones de consulta secundaria.<br><br>
    La organización secuencial rige todos los procesos que deben completarse sin omisiones. La solicitud de viaje avanza en el orden destino->tarifa estimada->confirmación, lo cual impide que el pasajero confirme sin conocer el costo. El registro del conductor sigue la secuencia datos personales->información del vehículo->carga de documentos (brevete y SOAT)->verificación. En ambos casos el usuario ve en todo momento en qué paso se encuentra y cuántos le restan.<br><br>
    La organización matricial se aplica en la pantalla de historial de viajes, donde el usuario puede cruzar dos variables simultáneamente: período de tiempo (semana, mes) y tipo de registro (viajes realizados, cancelados). Esto permite que tanto el pasajeros como conductores analicen su actividad desde más de una dimensión sin necesidad de navegar entre vistas separadas.<br><br>
    En cuanto a los esquemas de categorización, el historial se ordena cronológicamente del viaje más reciente al más antiguo, lo cual responde al patrón de consulta más habitual. Las solicitudes entrantes para el conductor se categorizan por tópico, agrupando primero las activas, luego las pendientes de respuesta y finalmente las activas, luego las pendientes de respuesta y finalmente las expiradas. El contenido general de la plataforma se segmenta según audiencia, diferenciando en todo momento las funcionalidades del pasajero con el conductor, ya que ambos perfiles acceden a secciones distintas con lógicas de uso completamente diferentes.
  </p>

  ### 4.2.2 Labeling Systems

  ### 4.2.3 SEO Tags and Meta Tags

  ### 4.2.4 Searching Systems

  ### 4.2.5 Navigation Systems

## 4.3 Landing Page UI Design

  ### 4.3.1 Landing Page Wireframe

  ### 4.3.2 Landing Page Mock-up

## 4.4 Web Applications UX/UI Design

  ### 4.4.1 Web Applications Wireframes

  ### 4.4.2 Web Applications Wireflow Diagrams

  ### 4.4.3 Web Applications Mock-ups

  ### 4.4.4 Web Applications User Flow Diagrams

## 4.5 Web Applications Prototyping

## 4.6 Domain-Driven Software Architecture

  ### 4.6.1 Design-Level EventStorming

  ### 4.6.2 Software Architecture Context Diagram

  ### 4.6.3 Software Architecture Container Diagrams

  ### 4.6.4 Software Architecture Components Diagrams

## 4.7 Software Object-Oriented Design

  ### 4.7.1 Class Diagrams

  ### 4.7.2 Class Dictionary

## 4.8 Database Design

  ### 4.8.1 Database Diagrams