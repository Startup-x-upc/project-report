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
Para la gestión del código fuente del proyecto, el equipo utiliza la plataforma GitHub como sistema de control de versiones. A continuación, se detallan los repositorios correspondientes a cada componente del sistema:

Landing Page: [Link Landing Page](https://github.com/tu-org/landing-page)
Web Services: [Link Web Services](https://github.com/tu-org/backend-services)
Frontend Web Application: [Link Frontend Web](https://github.com/tu-org/frontend-app)

En el repositorio de Web Services se incluyen tanto el código fuente como las pruebas unitarias y de aprobación y aceptación.

#### GitFlow Workflow
Nuestro equipo adopta el modelo de ramificación GitFlow, propuesto por Vincent Driessen, para organizar nuestro desarrollo del proyecto.

Las ramas principales son:

**main**: Contiene el código estable listo para producción y establecer como la version final de nuestro informe .
**develop**: Rama principal de desarrollo donde se integran las funcionalidades antes de su liberación.

Ramas de soporte:

- **feature/**: Para el desarrollo de nuevas funcionalidades.
Convención: `feature/<nombre-descriptivo>`
Ejemplo: `feature/Chapter5-SourceCode`
- **release/**: Para preparar nuevas versiones del sistema.
Convención: `release/<versión>`
Ejemplo: `release/1.0.0`
- **hotfix/**: Para correcciones urgentes en producción.
Convención: `hotfix/<descripción>`
Ejemplo: `hotfix/fix-login-error`

Flujo de trabajo:

- Las features se crean desde `develop` y se integran nuevamente en esta rama  mediante Pull Requests.
- Las ramas `release` se crean desde `develop` y luego se fusionan en `main` y `develop`.
- Los `hotfix` se crean desde `main` y se integran tanto en `main` como en `develop`.

#### Versionado Semántico

El proyecto utiliza el estándar Semantic Versioning 2.0.0 para el control de versiones:

- **MAJOR**: Cambios incompatibles
- **MINOR**: Nuevas funcionalidades compatibles
- **PATCH**: Correcciones menores

Formato: vX.Y.Z
Ejemplo: v1.2.3

#### Conventional Commits

Se emplea el estándar Conventional Commits para los mensajes de commit, con el fin de mantener un historial claro y facilitar la integración continua.

**Formato**:

`[type]: [description]`

Tipos más utilizados:

- **feat**: Nueva funcionalidad
- **fix**: Corrección de errores
- **chore**: Tareas de mantenimiento
- **docs**: Cambios en documentación

Ejemplos:

- feat: add user authentication
- fix: resolve API timeout issue
- chore: update dependencies


### 5.1.3 Source Code Style Guide & Conventions
#### Landing Page Style Guide & Conventions

##### Project Structure

```
/public        (images, favicon, manifest.json)
/src
    /css         (styles.css + partials/modules)
    /js            (main.js + modules)
    /components    (HTML fragments if needed)
    /index.html
```
##### General Conventions

- All identifiers (variables, functions, classes, files) must be written in **English**.
- File naming uses **kebab-case** (e.g., `user-profile.js`).
- Conventions are based on:
  - Google HTML/CSS Style Guide
  - Google JavaScript Style Guide
- These conventions ensure maintainability, scalability, and team consistency.

###### HTML

- **Semantics first**: use `header`, `nav`, `main`, `section`, `article`, `footer`.
- **Accessibility (a11y)**:
  - Add `alt` text to images.
  - Use `aria-*` attributes for dynamic components.
  - Maintain logical tab order in the DOM.
  - Always show a visible focus state.
- **SEO**:
  - Include `<title>` and `<meta name="description">`.
  - Add Open Graph / Twitter meta tags.
  - Set `lang="en"` (or appropriate language) on `<html>`.
- **Performance**:
  - Use `loading="lazy"` on `<img>`.
  - Minimize inline CSS/JS.
- **Conventions**:
  - Use **kebab-case** for class names.
  - Use `id` only for JS hooks or anchors, not for styling.

###### CSS

- **Naming**: Follow **BEM methodology** → `.block__element--modifier`.
- **Variables**: Define tokens in `:root`:
  ```css
  :root {
    --color-primary: #0ea5e9;
    --color-secondary: #64748b;
    --font-base: 1rem;
  }
  ```
- **Architecture**:
  - Separate utilities (spacing, grid) and components (buttons, cards).
- **Responsive**:
  - Mobile-first approach with `min-width` breakpoints.
  - Common breakpoints: 480px, 768px, 1024px, 1280px.
- **Typography & spacing**:
  - Use `rem` for scalability.
  - Avoid hard-coded magic numbers.
- **States**:
  - Define consistent `:hover`, `:focus-visible`, and `:disabled`.
- **Property order**:
  - Group logically: Layout → Box Model → Typography → Visual → Misc.

###### JavaScript

- **Structure**:
  - Modular design; keep one `main.js` entry point.
  - Use ES Modules (`import/export`) when possible.
  - Split reusable logic into separate modules.
- **Conventions**:
  - Use **camelCase** for variables/functions.
  - Use **PascalCase** for classes/constructors.
  - Constants in `UPPER_CASE`.
- **Best Practices**:
  - Prefer `const` and `let` over `var`.
  - Add comments for non-trivial logic.
  - Keep DOM selectors cached.
  - Use `addEventListener` (avoid inline `onclick`).
  - Wrap code in IIFEs or modules to avoid global leaks.
  - Handle errors using try/catch when necessary.
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


## 5.2. Landing Page, Services & Applications Implementation

### 5.2.1. Sprint 1

#### 5.2.1.1. Sprint Planning 1



<table>
  <tbody>
    <tr>
      <td><b>Sprint #</b></td>
      <td>Sprint 1</td>
    </tr>
    <tr>
      <td colspan="2"><b>Sprint Planning Background</b></td>
    </tr>
    <tr>
      <td><b>Date</b></td>
      <td>2026-06-04</td>
    </tr>
    <tr>
      <td><b>Time</b></td>
      <td>18:50 PM (GMT-5)</td>
    </tr>
    <tr>
      <td><b>Location</b></td>
      <td>Modalidad remota mediante la plataforma Discord</td>
    </tr>
    <tr>
      <td><b>Prepared By</b></td>
      <td>Aguirre Ramos, Eduardo Manuel</td>
    </tr>
    <tr>
      <td><b>Attendees (to planning meeting)</b></td>
      <td>Castillo Vidal, Jesus Ivan / Torres Sanchez, Dalila Victoria / Aguirre Ramos, Eduardo Manuel / Pillaca Gonzales, Andy Saúl / Delgado Perez, James Caleb / Aiquipa Poma, Sebastian Andres</td>
    </tr>
    <tr>
      <td><b>Sprint 0 Review Summary</b></td>
      <td>Dado que este es el sprint inicial, no se presenta un resumen del sprint anterior.</td>
    </tr>
    <tr>
      <td><b>Sprint 0 Retrospective Summary</b></td>
      <td>Dado que este es el sprint inicial, no se presenta una retroalimentación del sprint anterior.</td>
    </tr>
    <tr>
      <td colspan="2"><b>Sprint Goal & User Stories</b></td>
    </tr>
    <tr>
      <td><b>Sprint 1 Goal</b></td>
      <td><b>Nuestro propósito es</b> diseñar y entregar una primera versión de la landing page para nuestra plataforma de gestión de rutas, basada en entrevistas con administradores y transportistas de una empresa distribuidora. <b>Creemos que esto aportará</b> claridad y valor inicial a los usuarios potenciales, comunicando el propósito del producto y la visión del equipo. <b>Esto se confirmará cuando</b> los visitantes puedan comprender fácilmente los beneficios de la plataforma y muestren interés en conocer más o contactarnos a través de la landing page.</td>
    </tr>
    <tr>
      <td><b>Sprint 1 Velocity</b></td>
      <td>15 puntos</td>
    </tr>
    <tr>
      <td><b>Sum of Story Points</b></td>
      <td>15 puntos</td>
    </tr>
  </tbody>
</table>

#### 5.2.1.2. Aspect Leaders and Collaborators

En esta sección se presenta la **Leadership-and-Collaboration Matrix (LACX)** correspondiente al Sprint 1. Cada aspecto se relaciona con tareas clave del sprint, asignando un **líder (L)** responsable principal y **colaboradores (C)** que apoyan en su ejecución.

<table>
  <tbody>
    <tr>
      <th>Team Member (Last Name, First Name)</th>
      <th>GitHub Username</th>
      <th>Mockup (L/C)</th>
      <th>Entrevistas (L/C)</th>
      <th>Wireframes (L/C)</th>
      <th>Landing Page (L/C)</th>
    </tr>
    <tr>
      <td>Castillo Vidal, Jesus Ivan</td>
      <td>Jcdev04</td>
      <td>L</td>
      <td>C</td>
      <td>C</td>
      <td>C</td>
    </tr>
    <tr>
      <td>Torres Sanchez, Dalila Victoria</td>
      <td>DalilaTorres</td>
      <td>C</td>
      <td>L</td>
      <td>C</td>
      <td>C</td>
    </tr>
    <tr>
      <td>Aguirre Ramos, Eduardo Manuel</td>
      <td>TheEngineEdu</td>
      <td>C</td>
      <td>C</td>
      <td>L</td>
      <td>C</td>
    </tr>
    <tr>
      <td>Pillaca Gonzales, Andy Saúl</td>
      <td>apillacag</td>
      <td>C</td>
      <td>C</td>
      <td>C</td>
      <td>L</td>
    </tr>
    <tr>
      <td>Aiquipa Poma, Sebastian Andres</td>
      <td>S-aiquipa</td>
      <td>C</td>
      <td>L</td>
      <td>C</td>
      <td>C</td>
    </tr>
  </tbody>
</table>

#### 5.2.1.3. Sprint Backlog 1

<img src="./Resources/trello/sprint1_trello.png">

<a href="https://trello.com/b/uGr6OQCE/sprint-1">Sprint 1 Trello</a>

<table>
  <thead>
    <tr>
      <th>Sprint #</th>
      <th colspan="7">Sprint 1</th>
    </tr>
    <tr>
      <th colspan="2">User Story</th>
      <th colspan="6">Work-Item / Task</th>
    </tr>
    <tr>
      <th>Id</th>
      <th>Title</th>
      <th>Id</th>
      <th>Title</th>
      <th>Description</th>
      <th>Estimation (Hours)</th>
      <th>Assigned To</th>
      <th>Status (To-do / In-Process / To-Review / Done)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-31</td>
      <td>Sección Hero con CTA diferenciado</td>
      <td>US31-T001</td>
      <td>Maquetación HTML/CSS Sección Hero</td>
      <td>Implementar la sección Hero utilizando HTML y CSS siguiendo fielmente los mockups de Figma.</td>
      <td>0.7</td>
      <td>Castillo Vidal, Jesus Ivan</td>
      <td>Done</td>
    </tr>
    <tr>
      <td>US-32</td>
      <td>Sección ¿Cómo funciona?</td>
      <td>US32-T001</td>
      <td>Maquetación HTML/CSS Sección ¿Cómo funciona?</td>
      <td>Implementar el flujo del servicio en HTML y CSS basado en los diseños de Figma.</td>
      <td>0.4</td>
      <td>Torres Sanchez, Dalila Victoria</td>
      <td>Done</td>
    </tr>
    <tr>
      <td>US-33</td>
      <td>Sección de beneficios por segmento</td>
      <td>US33-T001</td>
      <td>Maquetación HTML/CSS Beneficios</td>
      <td>Maquetar la sección de beneficios por perfil utilizando HTML y CSS.</td>
      <td>0.9</td>
      <td>Aguirre Ramos, Eduardo Manuel</td>
      <td>Done</td>
    </tr>
    <tr>
      <td>US-34</td>
      <td>Sección de tarifas</td>
      <td>US34-T001</td>
      <td>Maquetación HTML/CSS Tarifas</td>
      <td>Desarrollar la sección informativa de tarifas en HTML y CSS.</td>
      <td>0.3</td>
      <td>Pillaca Gonzales, Andy Saúl</td>
      <td>Done</td>
    </tr>
    <tr>
      <td>US-36</td>
      <td>Sección About the Product</td>
      <td>US36-T001</td>
      <td>Maquetación HTML/CSS About the Product</td>
      <td>Integrar video publicitario y estructurar la sección en HTML/CSS.</td>
      <td>0.5</td>
      <td>Aiquipa Poma, Sebastian Andres</td>
      <td>To-do</td>
    </tr>
    <tr>
      <td>US-37</td>
      <td>Sección About the Team</td>
      <td>US37-T001</td>
      <td>Maquetación HTML/CSS About the Team</td>
      <td>Maquetar la presentación de los miembros del equipo en HTML y CSS según Figma.</td>
      <td>0.5</td>
      <td>Castillo Vidal, Jesus Ivan</td>
      <td>Done</td>
    </tr>
    <tr>
      <td>US-35</td>
      <td>Sección de testimonios</td>
      <td>US35-T001</td>
      <td>Maquetación HTML/CSS Testimonios</td>
      <td>Estructurar la sección de opiniones de usuarios en HTML y CSS.</td>
      <td>0.5</td>
      <td>Torres Sanchez, Dalila Victoria</td>
      <td>Done</td>
    </tr>
    <tr>
      <td>US-38</td>
      <td>Sección CTA final</td>
      <td>US38-T001</td>
      <td>Maquetación HTML/CSS CTA final</td>
      <td>Crear el llamado a la acción al final de la landing page en HTML y CSS.</td>
      <td>0.5</td>
      <td>Aguirre Ramos, Eduardo Manuel</td>
      <td>Done</td>
    </tr>
  </tbody>
</table>

#### 5.2.1.4. Development Evidence for Sprint Review

#### 5.2.1.5. Execution Evidence for Sprint Review

#### 5.2.1.6. Services Documentation Evidence for Sprint Review

#### 5.2.1.7. Software Deployment Evidence for Sprint Review

#### 5.2.1.8. Team Collaboration Insights during Sprint
