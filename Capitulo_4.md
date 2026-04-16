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
  <p align="justify">
    El sistema de etiquetado de ChapaTuRuta se fundamenta en el principio de mínima carga cognitiva: cada etiqueta debe comunicar con precisión qué encontrará el usuario al interactuar con ese elemento, al emplear el menor número de palabras posible y un vocubalario coherente con el contexto del transporte informal en ciudades intermedias del Perú. Se evita deliberadamente el uso de anglicismos, tecnicismos propios de plataformas urbanas o términos abstractos que puedan generar confusión en usuarios con baja experiencia digital.
    Las etiquetas cumplen además una función asociativa: orientan al usuario hacia dónde encontrará información relacionada sin necesidad de que todo el contenido esté concentrado en un mismo lugar. Por ejemplo, la etiqueta "Mis documentos" en el perfil del conductor no solo indice que allí se visualizan el brevete y el SOAT registrados, sino que también asocia en el usuario que en esa sección encontrará alertas de vencimiento y opciones de actualización, lo que consolida toda la gestión documental en un únicio punto de acceso.
    A continuación se detallan las etiquetas definidas para cada sección de la plataforma:<br>
  </p>
    <span style="font-weight: bold;">Landing Page</span>
    <table>
      <thead>
        <tr>
          <th>Etiqueta</td>
          <th>Contenido asociado</td>
        </tr>
      <thead>
      <tbody>
        <tr>
          <td>Inicio</td>
          <td>Presentación del servicio, propuesta de valor y acceso a la plataforma</td>
        </tr>
        <tr>
          <td>¿Cómo funciona?</td>
          <td>Proceso paso a paso para pasajeros y conductores, desde el registro hasta la finalización del viaje</td>
        </tr>
        <tr>
          <td>Seguridad</td>
          <td>Mecanismos de verificación de documentos del conductor y sistema de calificaciones mutuas</td>  
        </tr>
        <tr>
          <td>Soy conductor</td>
          <td>Beneficios para mototaxistas, requisitos de registro y llamado a la acción</td>  
        </tr>
        <tr>
          <td>Testimonios</td>
          <td>Comentarios reales de pasajeros y conductores sobre cómo la plataforma ha transformado su experiencia en el servicio de mototaxis</td>  
        </tr>
        <tr>
          <td>Contáctanos</td>
          <td>Formulario de contacto, canal de soporte y redes sociales de la plataforma</td>  
        </tr>
      </tbody>
    </table><br>
    <span style="font-weight: bold;">Aplicación Web - Perfil Pasajero</span>
        <table>
      <thead>
        <tr>
          <th>Etiqueta</td>
          <th>Contenido asociado</td>
        </tr>
      <thead>
      <tbody>
        <tr>
          <td>Pedir moto</td>
          <td>Mapa principal con conductores disponibles y flujo de solicitud de viaje</td>
        </tr>
        <tr>
          <td>Mis viajes</td>
          <td>Historial cronológico de trayectos con detalle de ruta, tarifa y calificación otorgada</td>
        </tr>
        <tr>
          <td>Calificaciones</td>
          <td>Valoraciones recibidas de conductores tras cada viaje completado</td>  
        </tr>
        <tr>
          <td>Mi Perfil</td>
          <td>Gestión de datos personales, foto y contraseña de acceso</td>  
        </tr>
      </tbody>
    </table><br>
    <span style="font-weight: bold;">Aplicación Web - Perfil Conductor</span>
        <table>
      <thead>
        <tr>
          <th>Etiqueta</td>
          <th>Contenido asociado</td>
        </tr>
      <thead>
      <tbody>
        <tr>
          <td>Solicitudes</td>
          <td>Carreras disponibles geolocalizadas cercanas en tiempo real</td>
        </tr>
        <tr>
          <td>Mis carreras</td>
          <td>Registro de viajes completados, cancelados e ingresos estimados por jornada</td>
        </tr>
        <tr>
          <td>Mis documentos</td>
          <td>Brevete y SOAT registrados con estado de vigencia y alertas de vencimiento próximo</td>  
        </tr>
        <tr>
          <td>Calificaciones</td>
          <td>Valoraciones reibidas de pasajeros y promedio acumulado visible en el perfil público</td>  
        </tr>
        <tr>
          <td>Mi perfil</td>
          <td>Datos personales, foto de perfil y vehículo registrado en la plataforma</td>  
        </tr>
      </tbody>
    </table>

  ### 4.2.3 SEO Tags and Meta Tags
  La definición de SEO Tags y Meta Tags para ChapaTuRuta responde a dos objetivos simultáneos: mejorar el posicionamiento orgánico en motores de búsqueda para consultas relacionadas con el transporte en mototaxi en provincias del Perú, y garantizar que la información que se muestra al compartir los enlaces de la plataforma represente con precisión la propuesta de valor del servicio. A continuación se detallan las etiquetas definidad para el Landing Page y la Aplicación Web.

  **1. Landing Page**

  ```HTML
  <meta charset = "utf-8">
  ```
  Define la codificación de caracteres como UTF-8, lo cual garantiza la correcta visualización de tildes, la letra ñ y caracteres especiales propios del español en cualquier navegador o dispositivo.

  ```HTML
  <meta name="viewport" content="width=device-width, initial-scale=1">
  ```
  Establece que la landing page debe adaptarse de forma responsiva al ancho del dispositivo desde el que se accede. Resulta especialmente relevante para ChapaTuRuta dado que la mayoría de sus usuarios accede desde smartphones de gama media con pantallas de tamaño variable.

  ```HTML
  <title>ChapaTuRuta | Mototaxi Seguro y Verificado en provincias del Perú</title>
  ```

  Define el título que aparece en la pestaña del navegador y en los resultados de búsqueda. Incorpora las palabras clave de mayor relevancia para el mercado objetivo:mototaci, seguro, verificado y provincias del Perú, orientando el posicionamiento hacia búsquedas locales.
 
  ```HTML
  <meta name="description" content="ChapaTuRuta conecta con pasajeros con mototaxistas verificados en ciudades intermedias del Perú. Solicita tu viaje, conoce la tarifa antes de salir y viaja con seguridad desde cualquier dispositivo con internet.">
  ```
  Proporciona el texto descriptivo que aparece como fragmento en los resultados de Google. Está redactado para comunicar los tres diferenciadores principales del servicio: verificación del conductor, tarifa previa y accesibilidad desde cualquier dispositivo.

  ```HTML
  <meta name="keywords" content="mototaxi provincias Peru, transporte mototaxi ciudades intermedias, app mototaxi verificado, mototaxi Casma, mototaxi Huarmey, mototaxi Talara, transporte seguro provincias">
  ```  
  Especifíca las palabras clave asociadas al contenido de la página, que incluye nombres de ciudades objetivo para reforzar el posicionamiento de búsquedas geográficamente específicas.

  ```HTML
  <meta name="author" content="CTR Technologies">
  ```  
  Identifica a CTR Technologies como la organización responsable del contenido de la plataforma.

  ```HTML
  <meta name="language" content="es">
  ```  
  Declara el español como idioma principal del contenido, orientando correctamente a los motores de búsqueda sobre el público al que se dirige la plataforma.

  <meta name="copyright" content="CTR Technologies 2026">
  Establece la titularidad de los derechos de autor del contenido publicado en la landing page.

  <br>**2. Aplicación Web**
  ```HTML
  <meta charset="utf-8">
  ```
  Garantiza la correcta reprentación de caracteres especiales del espa{ol en toda la interfaz de la aplicación.
  ``` HTML
  <meta name="viewport" content="width=device-width, initial-scale=1">
  ```
  Asegura que la interfaz de la aplicación web se adapte correctamente a dispositivos móviles, tabletas y computadoras de escritorio, lo cual mantiene la usabilidad en todos los tamaños de pantalla.

  ```HTML
  <title>ChapaTuRuta | Solicita tu mototaxi en provincias</title>
  ```
  Define el titulo de la aplicación web orientado a la acción principal que el usuario realiza dentro de la plataforma.

  ```HTML
  <meta name="description" content="ChapaTuRuta conecta con pasajeros con mototaxistas verificados en ciudades intermedias del Perú. Solicita tu viaje, conoce la tarifa antes de salir y viaja con seguridad desde cualquier dispositivo con internet.">
  ```
  Describe el contenido de la aplicación enfocándose en las funcionalidades principales disponibles para ambos perfiles de usuario, optimizado para aparecer cuando se comparte el enlace de la app

  ```HTML
  <meta name="keywords" content="solicitar mototaxi app, historial viajes mototaxi, conductor mototaxi verificado, panel conductor, ChapaTuRuta aplicacion web">
  ```

  Palabras clave orientadas a las funcionalidades específicas de la aplicación y al perfil de usuario que la utiliza activamente.

  ```HTML
  <meta name="author" content="CTR Technologies">
  <meta name="language" content="es">
  <meta name="copyright" content="CTR Technologies 2026">
  ```

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