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

  ``` HTML
  <meta name="copyright" content="CTR Technologies 2026">
  ```  
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
  **Perfil Pasajero**<br>
  <p align="justify">
    La búsqueda principal del pasajero ocurre sobre el mapa: escribe su destino en la barra superior y el sistema ofrece autocompletado con referencias locales reconocibles como mercados, colegios, parques y avenidas principales de la ciudad. Si no recuerda el nombre exacto, puede arrastrar el pin directamente sobre el mapa para indicar el punto. No se busca entre listas de conductores; el sistema localiza automáticamente los disponibles en el radio cercano al confirmar el destino.
    Los filtros disponibles para el pasajero son: distancia máxima al conductor y calificación mínima del conductor (por ejemplo, solo conductores con 4 estrellas o más).
    Tras la búsqueda, los resultados se muestran como íconos sobre el mapa indicando la posición de cada conductor disponible. Al seleccionar uno, aparece una tarjeta con foto, nombre, calificación promedio, tipo de vehículo y tarifa estimada para el trayecto indicado. Si no hay conductores disponibles, el sistema muestra un mensaje que indica la situación y sugiere reintentar en unos minutos o ampliar el radio de búsqueda.
  </p>

  **Conductor**
  <p align="justify">
    El conductor no realiza búsquedas activas: las solicitudes llegan a él ordenadas por proximidad. Sin embargo, en su historial de carreras puede buscar registros específicos mediante los siguientes filtros: rango de fechas, estado del viaje (completado o cancelado) e ingresos por rango de monto.<br>
    Los resultados del historial se presentan como tarjetas individuales que muestran fecha, hora, punto de origen, destino, monto cobrado y calificación recibida del pasajero. Cuando la búsqueda no arroja resultados, el sistema indica que no existen registros para los filtros aplicados y ofrece la opción de limpiarlos con un solo toque.
  </p>

  ### 4.2.5 Navigation Systems
  El diseño del sistema de navegación de ChapaTuRuta tiene como objetivo que tanto pasajeros como conductores puedan cumplir sus metas dentro de la plataforma de forma fluida, sin necesidad de explorar ni memorizar rutas de acceso. Las decisiones de navegación están condicionadas por el perfil del usuario objetivo: personas con experiencia digital limitada que necesitan encontrar lo que buscan de forma inmediata o ser guiadas paso a paso cuando el proceso lo requiere.<br><br>
  **Landing Page**<br>
  La navegación de la landing page está diseñada para construir confianza de manera progresiva antes de solicitar el registro. La barra de navegación superior permanece fija durante todo el desplazamiento vertical, ofreciendo acceso directo a las secciones principales en todo momento. Los elementos de esta barra siguen una lógica argumentativa deliberada: primero se presenta la solución ("¿Cómo funciona?"), luego los mecanismos que generan confianza ("Seguridad"), y finalmente el llamado a la acción diferenciado para cada perfil ("Soy conductor"). Esta secuencia responde al recorrido mental típico de un visitante escéptico que llega por primera vez a la plataforma.<br>
  El desplazamiento vertical funciona como mecanismo narrativo principal: el contenido está estructurado para responder de forma anticipada las preguntas y objeciones más comunes antes de que el visitante las formule. Los botones de registro aparecen estratégicamente al final de cada sección relevante, de modo que el usuario pueda actuar en el momento en que la información lo convenció, sin necesidad de volver al inicio o buscar el formulario.<br><br>
  **Aplicación Web**<br>
  Dentro de la aplicación, la navegación principal se resuelve mediante una barra inferior persistente en dispositivos móviles, con acceso directo a las secciones clave del perfil correspondiente. La posición inferior responde a criterios ergonómicos: facilita el uso con una sola mano, patrón frecuente en usuarios que consultan la app mientras caminan o esperan en la calle.<br>
  Los flujos de acción crítica, como solicitar un viaje o aceptar una carrera, son lineales e interrumpibles únicamente mediante una cancelación explícita. Durante estos flujos no se muestra la barra de navegación principal para evitar que el usuario abandone el proceso por un toque accidental. Cada etapa del flujo ocupa la pantalla completa con un mensaje de estado claro y un color distintivo por fase: búsqueda de conductor, conductor en camino, viaje en curso y viaje completado. Esta técnica elimina la ambigüedad sobre el estado del sistema en todo momento.<br>
  Para usuarios que acceden desde computadora de escritorio, la navegación migra a una barra lateral izquierda con las mismas etiquetas y jerarquía que la versión móvil, que garantiza coherencia en la experiencia independientemente del dispositivo utilizado. Las transiciones entre secciones emplean animaciones de duración mínima para no penalizar el rendimiento en dispositivos de gama media, priorizando la velocidad de respuesta sobre los efectos visuales elaborados.

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