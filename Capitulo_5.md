# Capítulo V: Product Implementation, Validation & Deployment
## 5.1. Software Configuration Management
### 5.1.1 Software Development Environment Configuration
<table>
  <thead>
    <tr>
      <th>Actividad</th>
      <th>Herramienta/Guía</th>
      <th>Propósito</th>
      <th>Tipo de acceso/Ruta (links)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Gestión de proyecto</td>
      <td>Trello</td>
      <td>Organizar y dar seguimiento a tareas</td>
      <td><a href="https://trello.com" target="_blank">Trello</a></td>
    </tr>
    <tr>
      <td>Gestión de requerimientos</td>
      <td>Gherkin Conventions</td>
      <td>Definir criterios de aceptación claros</td>
      <td><a href="https://cucumber.io/docs/gherkin/" target="_blank">Guía Gherkin</a></td>
    </tr>
    <tr>
      <td>Producto UI/UX</td>
      <td>Figma</td>
      <td>Diseño de interfaces y prototipos</td>
      <td><a href="https://figma.com" target="_blank">Figma</a></td>
    </tr>
    <tr>
      <td>Landing Page desarrollo</td>
      <td>Visual Studio Code</td>
      <td>Edición y desarrollo de código</td>
      <td><a href="https://code.visualstudio.com/" target="_blank">VS Code</a></td>
    </tr>
    <tr>
      <td>Control de versiones</td>
      <td>Git</td>
      <td>Gestión de versiones del código</td>
      <td><a href="https://git-scm.com/" target="_blank">Git</a></td>
    </tr>
    <tr>
      <td>Despliegue</td>
      <td>GitHub Pages</td>
      <td>Publicar la aplicación web</td>
      <td><a href="https://pages.github.com/" target="_blank">GitHub Pages</a></td>
    </tr>
    <tr>
      <td>Event Storming</td>
      <td>Miro</td>
      <td>Colaboración y modelado de procesos</td>
      <td><a href="https://miro.com/" target="_blank">Miro</a></td>
    </tr>
    <tr>
      <td>Diagramas</td>
      <td>PlantUML</td>
      <td>Generación de diagramas UML</td>
      <td><a href="https://plantuml.com/" target="_blank">PlantUML</a></td>
    </tr>
  </tbody>
</table>

### 5.1.2 Source Code Management
### 5.1.3 Source Code Style Guide & Conventions
### 5.1.4 Software Deployment Configuration
#### 1. Landing Page – HTML, CSS y JavaScript

**Repositorio de Código Fuente**
La Landing Page se implementa empleando HTML, CSS y JavaScript. El proyecto se almacena en GitHub, colocando el archivo `index.html` en la raíz del repositorio (/), lo cual permite su reconocimiento automático por GitHub Pages.

**Activación de GitHub Pages**
1. Acceder al repositorio en GitHub.
2. Ir a Settings.
3. Seleccionar Pages.
4. Configurar:
   - Rama: main
   - Carpeta: / (root)
5. Guardar cambios.

**Publicación**
GitHub genera automáticamente una URL pública:

`https://<usuario>.github.io/<repositorio>/`

**Actualizaciones**  
Cada commit en la rama `main` se despliega automáticamente.

---

#### 2. Frontend Web Application – Angular

**Production Build**
El frontend se construye usando Angular CLI:

`ng build --configuration production`

Esto genera archivos optimizados en la carpeta `/dist`.

**Despliegue**
- Se utiliza una plataforma como **Netlify** o **Vercel**.
- Se sube la carpeta /dist.
- Se configura soporte para SPA (Single Page Application).

---

#### 3. Backend – REST API (Spring Boot)

**Build Process**  
El backend se empaqueta en un archivo .jar:

`./mvnw clean package`

**Deployment Process**
- Se utiliza una plataforma cloud (Render, Railway, etc.).
- Se ejecuta con:

`java -jar app.jar`

- Se configuran variables de entorno (puerto, base de datos, API keys).

---

#### 4. Consideraciones Generales

- Se utilizan variables de entorno para datos sensibles.
- Cada componente se despliega de forma independiente.
- El sistema permite actualizaciones continuas mediante commits.