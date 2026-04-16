## Capítulo IV: Product Design

### 4.1. Style Guidelines

En esta sección el equipo establece un repositorio central de decisiones
visuales y de comunicación, con el fin de mantener una presentación
consistente en todos los productos de _Chapa Tu Ruta_. Se incluyen
lineamientos generales de marca, tipografía, colores y espaciado, así
como los estándares visuales aplicados a la interfaz web.

#### 4.1.1. General Style Guidelines

En la siguiente sección detallaremos las diferentes decisiones de diseño
tomadas para establecer la identidad visual de _Chapa Tu Ruta_.

**Branding**

_Chapa Tu Ruta_ es una plataforma diseñada para conectar pasajeros con
conductores de mototaxi en zonas periféricas de Lima. El nombre de la aplicación apela directamente al lenguaje
coloquial limeño: "chapar" en el habla popular significa encontrar o tomar
algo en el momento preciso, lo que comunica inmediatez y familiaridad con
el usuario objetivo. La segunda parte, "Tu Ruta", refuerza la propuesta de
valor: el servicio es personalizado, cercano y pensado para el trayecto
específico de cada persona.

El logotipo combina dos elementos visuales principales. El primero es un
pin de ubicación de color verde con una carretera interna, que representa
la geolocalización como función central de la aplicación. El segundo es
una mototaxi estilizada en amarillo y azul que hace referencia directa al
vehículo característico del servicio. Debajo de ambos elementos aparece el
nombre "ChapaTuRuta" en tipografía sans-serif, donde la palabra "Tu"
resalta en amarillo para generar énfasis en la personalización del servicio.
El conjunto transmite dinamismo, proximidad y funcionalidad.

**Typography**

La tipografía elegida para _Chapa Tu Ruta_ es **Poppins**, disponible a
través de Google Fonts, en sus variantes Bold, SemiBold y Regular.

Esta tipografía fue seleccionada por su alta legibilidad en pantallas de
distintos tamaños, especialmente en condiciones de uso móvil como la luz
solar directa o el movimiento. Sus formas geométricas y sus terminaciones
redondeadas le otorgan un carácter moderno y accesible, coherente con el
perfil del usuario objetivo.

La variante Bold se utiliza en los títulos de pantalla y en el logotipo,
para atraer la atención del usuario en los puntos de mayor jerarquía
visual. La variante SemiBold se aplica en subtítulos, encabezados de
sección y etiquetas de acción, generando contraste con el cuerpo de texto
sin resultar agresiva. La variante Regular se reserva para párrafos,
descripciones y texto de apoyo.

El tamaño de las fuentes varía según el nivel jerárquico del contenido.
Para títulos principales se utilizan tamaños mayores con el fin de captar
la atención del usuario desde el primer vistazo. Para subtítulos se emplean
tamaños intermedios que permiten distinguir las secciones sin interrumpir
la lectura. Para el cuerpo de texto se elige un tamaño que equilibre
comodidad visual y densidad de información, considerando que la mayoría
de usuarios accederán desde dispositivos móviles de gama media.

**Colors**

La paleta de colores de _Chapa Tu Ruta_ está compuesta por cuatro colores
principales extraídos directamente de la identidad visual del logotipo,
complementados por colores de apoyo para los estados del sistema.

El color primario es el amarillo mototaxi (`#F9C12E`), presente en el
techo de la mototaxi y en el texto destacado del logotipo. Este color
comunica energía, visibilidad y optimismo, y se utiliza en los llamados
a la acción principales de la interfaz. El azul ruta (`#2B7CC1`), tomado
de la carrocería de la mototaxi, representa confianza, tecnología y
movimiento, y se aplica en estados activos, secciones informativas y
elementos secundarios. El verde pin (`#3DAA4E`), proveniente del ícono
de ubicación del logotipo, está asociado a la geolocalización, la
disponibilidad y la confirmación de acciones positivas. El azul marino
(`#1A2A4A`), que corresponde a la estructura del vehículo y el
parabrisas, actúa como color de fondo profundo y neutro, utilizado en
la barra de navegación, el footer y los fondos de secciones oscuras.

Para textos sobre fondos claros se utiliza el gris carbón (`#1C1C1E`),
garantizando legibilidad sin el contraste agresivo del negro puro. Los
fondos generales de pantalla emplean el blanco suave (`#F5F5F5`) para
reducir la fatiga visual en sesiones prolongadas.

**Spacing**

El espaciado utilizado en los productos de _Chapa Tu Ruta_ sigue una
escala basada en múltiplos de 8 puntos. Este sistema permite mantener
proporciones consistentes entre componentes y facilita la implementación
tanto en interfaces móviles como web.

En general, es fundamental que el espaciado permita al usuario distinguir
con claridad los bloques de contenido sin generar una sensación de
saturación. Los márgenes laterales de pantalla, la separación entre
tarjetas y la distancia entre etiquetas e inputs respetan esta escala
para lograr una composición ordenada y legible.

**Tono de comunicación y lenguaje**

El tono de comunicación de _Chapa Tu Ruta_ ha sido definido considerando
el perfil del usuario objetivo: personas jóvenes y adultas de zonas
periféricas de Lima, familiarizadas con el uso de aplicaciones móviles
pero con distintos niveles de experiencia digital.

En cuanto a las dimensiones del tono, la plataforma adopta un lenguaje
más cercano que formal, evitando tecnicismos innecesarios y privilegiando
frases cortas y directas que no requieran interpretación. Es más casual
que serio, sin perder la claridad y la confiabilidad que el servicio de
transporte exige. Se mantiene respetuoso en todo momento, sin caer en un
registro corporativo distante que pueda generar frialdad con el usuario.
Finalmente, adopta un tono entusiasta pero sereno, que transmita seguridad
en cada interacción sin generar ansiedad.

Los mensajes de la interfaz privilegian verbos de acción en imperativo
amigable como "Solicita tu viaje", "Confirma tu ruta" o "Califica tu
experiencia", y evitan frases técnicas o en tercera persona que distancien
al usuario de la aplicación.

---

#### 4.1.2. Web Style Guidelines

En esta sección se explican e ilustran las decisiones sobre los estándares
visuales y de interacción para las interfaces web responsivas de
_Chapa Tu Ruta_. La versión web está orientada principalmente al panel
de administración del sistema y a la landing page informativa de la
plataforma. Como referencia base se adopta el sistema de diseño
**Material Design 3** de Google, sobre el cual se realizan adaptaciones
para alinearlo con la identidad visual propia de la marca.

**Paleta de colores**

La paleta de colores web replica los colores definidos en el General Style
Guidelines, organizados según su rol funcional dentro de la interfaz. El
amarillo `#F9C12E` se reserva para botones primarios y destacados de
conversión. El azul marino `#1A2A4A` se utiliza en la barra de navegación
superior, el sidebar del panel de administración y el footer. El azul ruta
`#2B7CC1` aparece en elementos informativos, estados activos y secciones
de datos. El verde pin `#3DAA4E` señaliza confirmaciones, disponibilidad
y acciones exitosas. Los fondos generales utilizan `#F5F5F5` para las
páginas y `#FFFFFF` para las tarjetas y modales.

**Tipografía web**

La tipografía web mantiene el uso de Poppins en sus tres variantes. Para
títulos de página se utiliza la variante Bold en tamaño 28px, para
encabezados de sección SemiBold en 22px, y para el cuerpo de texto
Regular en 14 a 16px. Esta escala garantiza la jerarquía visual necesaria
para guiar al usuario a través de las distintas secciones sin necesidad
de elementos decorativos adicionales.

**Botones**

Dependiendo del contexto se utilizan distintos tipos de botones. Para las
acciones principales de conversión como "Registrarse", "Solicitar viaje"
o "Confirmar", se utiliza el botón primario con fondo amarillo `#F9C12E`,
texto en azul marino `#1A2A4A` y bordes redondeados de 8px. Este botón
es el de mayor jerarquía visual en la pantalla y no debe compartir
protagonismo con otros elementos del mismo peso.

Para acciones secundarias como "Cancelar" o "Volver", se utiliza un botón
con borde en el color primario y fondo transparente, que comunica una
opción disponible sin competir visualmente con la acción principal. Para
acciones destructivas como "Eliminar cuenta" o "Bloquear conductor", se
utiliza el botón de peligro con fondo rojo `#E74C3C` y texto blanco,
reservado exclusivamente para operaciones irreversibles en el panel de
administración.

**Formularios**

Los campos de texto utilizan un borde de 1px en gris claro en su estado
neutro, que cambia al azul ruta `#2B7CC1` al recibir el foco, indicando
al usuario que el campo está activo. En caso de error de validación, el
borde cambia a rojo `#E74C3C` y se muestra un mensaje descriptivo debajo
del campo afectado. Todos los campos incluyen una etiqueta visible por
encima del input, evitando depender del placeholder como único indicador
del contenido esperado.

**Navegación y diseño responsivo**

La interfaz web adopta un enfoque mobile-first, escalando hacia
resoluciones mayores mediante una grilla de 12 columnas con ancho máximo
de contenido de 1200px centrado horizontalmente. En el panel de
administración, la navegación utiliza un sidebar fijo en pantallas de
escritorio que colapsa a un menú tipo drawer en tablets y dispositivos
móviles. La barra superior muestra el logo reducido, el nombre del usuario
autenticado y la opción de cierre de sesión.

**Accesibilidad**

Todos los elementos interactivos de la interfaz web cumplen con un
contraste mínimo de 4.5:1 entre texto y fondo, de acuerdo con el estándar
WCAG AA. Los componentes son navegables por teclado y los formularios
incluyen atributos ARIA para garantizar compatibilidad con lectores de
pantalla. El tamaño mínimo de fuente en web es de 14px para asegurar la
legibilidad en distintas condiciones de uso.

## 4.2 Information Architecture

### 4.2.1 Organization Systems

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
