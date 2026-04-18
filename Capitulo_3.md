# Capitulo III: Requirements Specification

## 3.1 User Stories
<table border="1" style="border-collapse:collapse; width:100%; table-layout:fixed;">
  <tr>
    <th style="width:15%;">Epic /<br> Story/<br>ID</th>
    <th style="width:15%;">Título</th>
    <th style="width:35%;">Descripción</th>
    <th style="width:25%;">Criterios de Aceptación</th>
    <th style="width:10%;">Relacionado con<br>(Epic ID)</th>
  </tr>
  <tr>
  <!--USER STORIE 1 -->
    <td>US01</td>
    <td>Registro de pasajero</td>
    <td>
      <p><b>Como visitante</b>, quiero registrarme como pasajero para poder solicitar viajes.</p>
    </td>
    <td>
      <b>Scenario : Registro exitoso</b><br>
      <b>Given</b> el usuario está en la página de registro<br>  
      <b>When</b> ingresa datos válidos como pasajero<br>  
      <b>Then</b> la cuenta es creada correctamente<br>  
      <b>And</b> puede acceder a la plataforma <br><br>
      <b>Scenario 2 : Registro fallido</b><br>
      <b>Given</b> el usuario está en la página de registro  
      <b>When</b> ingresa datos incompletos o inválidos  
      <b>Then</b> visualiza mensajes de error en los campos
    </td>
    <td>EP01</td>
  </tr>
  <tr>
  <!--USER STORIE 2 -->
<td>US02</td>
<td>Registro de conductor</td>
<td>
<b>Como visitante</b>, quiero registrarme como conductor para ofrecer mis servicios de transporte.
</td>
<td>
<b>Scenario: Registro exitoso</b><br>
<b>Given</b> el usuario está en la página de registro<br>  
<b>When</b> ingresa datos válidos como conductor<br>  
<b>Then</b> la cuenta es creada correctamente<br>  
<b>And</b> queda habilitado para operar en la plataforma<br><br>
<b>Scenario: Validación de datos</b><br>
<b>Given</b> el usuario completa el registro<br>  
<b>When</b> envía su información<br>  
<b>Then</b> el sistema valida los datos ingresados
</td>
<td>EP01</td>
</tr>
<tr>
<!--USER STORIE 3 -->
<td>US03</td>
<td>Inicio de sesión</td>
<td>
  <b>Como usuario registrado</b>, quiero iniciar sesión para acceder a mi cuenta
</td>
<td>
<b>Scenario: Inicio de sesión exitoso</b><br>
<b>Given</b> el usuario tiene una cuenta registrada<br>  
<b>When</b> ingresa credenciales válidas<br>  
<b>Then</b> accede a la plataforma<br><br> 
<b>Scenario: Credenciales incorrectas</b><br>
<b>Given</b> el usuario intenta iniciar sesión<br>
<b>When</b> ingresa credenciales inválidas<br>
<b>Then</b> visualiza un mensaje de error<br>
</td>
<td>EP01</td>
</tr>
<tr>
<!--USER STORIE 4 -->
<td>US04</td>
<td>Gestión de perfil</td>
<td>
<b>Como usuario</b>, quiero visualizar y editar mi perfil para mantener mis datos actualizados.
</td>
<td>
<b>Scenario: Visualización de perfil</b><br>
<b>Given</b> el usuario ha iniciado sesión<br>  
<b>When</b> accede a su perfil<br>  
<b>Then</b> visualiza su información personal<br><br>
<b>Scenario: Edición de perfil</b><br>
<b>Given</b> el usuario está en su perfil<br>
<b>When</b> modifica sus datos,<br>
<b>Then</b> la información se actualiza correctamente
</td>
<td>EP01</td>
</tr>
<tr>
<!--USER STORIE 5 -->
<td>US05</td>
<td>Cierre de sesión</td>
<td>
<b>Como usuario</b>, quiero cerrar sesión para proteger mi cuenta<br>
<td>
<b>Scenario: Cierre de sesión</b><br>
<b>Given</b> el usuario ha iniciado sesión<br>
<b>When</b> selecciona cerrar sesión,<br>
<b>Then</b> su sesión finaliza correctamente<br>
<b>And</b> es redirigido a la página principal<br><br>
</td>
<td>EP01</td>
</tr>
<tr>
<!--USER STORIE 6 -->
<td>US06</td>
<td>Recuperación de cuenta</td>
<td>
<b>Como usuario</b>, quiero recuperar mi cuenta en caso de olvidar mi contraseña para volver a acceder<br>
</td>
<td>
<b>Scenario: Solicitud de recuperación</b><br>
<b>Given</b> el usuario está en la página de login<br>
<b>When</b> selecciona recuperar contraseña<br>
<b>Then</b> puede ingresar su correo<br><br>
<b>Scenario: Restablecimiento exitoso</b><br>
<b>Given</b> el usuario solicita recuperación<br>
<b>When</b> sigue el proceso de cambio de contraseña<br>
<b>Then</b> puede acceder nuevamente con la nueva contraseña
</td>
<td>EP01</td>
</tr>

</tr>
<!-- USER STORIE 7 - Registro de solicitud de viaje -->
<tr>
<td>US07</td>
<td>Registro de solicitud de viaje</td>
<td><b>Como</b> pasajero autenticado, <b>quiero</b> registrar una nueva solicitud de viaje en el sistema, <b>para</b> que quede formalmente creada y los conductores puedan visualizarla.</td>
<td>
    <b>Scenario: Registro exitoso</b><br>
    <b>Given</b> el pasajero ha iniciado sesión<br>
    <b>And</b> el pasajero tiene origen y destino definidos<br>
    <b>When</b> el pasajero confirma la creación del viaje<br>
    <b>Then</b> el sistema:<br>
    &nbsp;&nbsp;- Genera un ID único para la solicitud<br>
    &nbsp;&nbsp;- Asigna estado "Pendiente"<br>
    &nbsp;&nbsp;- Guarda ID del pasajero, origen, destino, timestamp<br>
    <b>And</b> la solicitud queda disponible para conductores<br><br>
    <b>Scenario: Registro sin origen</b><br>
    <b>Given</b> el pasajero no tiene origen definido<br>
    <b>When</b> intenta registrar un viaje<br>
    <b>Then</b> el sistema rechaza con mensaje "Defina su ubicación primero"
</td>
<td>EP02</td>
</tr>
<!-- USER STORIE 08 - Aceptación de solicitud por conductor -->
<tr>
<td>US08</td>
<td>Aceptación de solicitud por conductor</td>
<td><b>Como</b> conductor autenticado, <b>quiero</b> aceptar formalmente una solicitud pendiente, <b>para</b> que el sistema me asigne como responsable del viaje y evite que otros conductores la tomen.</td>
<td>
    <b>Scenario 1: Aceptación exitosa</b><br>
    <b>Given</b> existe una solicitud en estado "Pendiente"<br>
    <b>And</b> el conductor está disponible<br>
    <b>When</b> el conductor selecciona "Aceptar" en una solicitud<br>
    <b>Then</b> el sistema:<br>
    &nbsp;&nbsp;- Cambia estado a "Asignado"<br>
    &nbsp;&nbsp;- Guarda ID del conductor asignado<br>
    &nbsp;&nbsp;- Guarda timestamp de aceptación<br>
    <b>And</b> la solicitud deja de aparecer a otros conductores<br><br>
    <b>Scenario 2: Aceptación de solicitud ya asignada</b><br>
    <b>Given</b> una solicitud en estado "Asignado"<br>
    <b>When</b> otro conductor intenta aceptarla<br>
    <b>Then</b> el sistema rechaza con mensaje "Esta solicitud ya fue tomada"
</td>
<td>EP02</td>
</tr>
<!-- USER STORIE 09 - Rechazo de solicitud -->
<tr>
<td>US09</td>
<td>Rechazo de solicitud</td>
<td><b>Como</b> conductor autenticado, <b>quiero</b> rechazar explícitamente una solicitud que no deseo atender, <b>para</b> que el sistema registre mi decisión y mantenga la solicitud activa para otros conductores.</td>
<td>
    <b>Scenario 1: Rechazo individual</b><br>
    <b>Given</b> existe una solicitud en estado "Pendiente"<br>
    <b>When</b> el conductor selecciona "Rechazar"<br>
    <b>Then</b> el sistema:<br>
    &nbsp;&nbsp;- Registra el rechazo (ID conductor, timestamp)<br>
    &nbsp;&nbsp;- La solicitud PERMANECE en "Pendiente"<br>
    <b>And</b> esa solicitud ya no se muestra a este conductor<br><br>
    <b>Scenario 2: Límite de rechazos</b><br>
    <b>Given</b> una solicitud ha sido rechazada por 3 conductores distintos<br>
    <b>When</b> se intenta mostrar a un cuarto conductor<br>
    <b>Then</b> el sistema cambia estado a "Expirada"<br>
    <b>And</b> ya no se muestra a nadie
</td>
<td>EP02</td>
</tr>
<!-- USER STORIE 10 - Registro de inicio de viaje -->
<tr>
<td>US10</td>
<td>Registro de inicio de viaje</td>
<td><b>Como</b> conductor asignado a un viaje, <b>quiero</b> registrar el momento exacto en que el pasajero aborda, <b>para</b> que el sistema cambie el estado y comience a contabilizar el tiempo del servicio.</td>
<td>
    <b>Scenario 1: Inicio exitoso</b><br>
    <b>Given</b> un viaje en estado "Asignado"<br>
    <b>And</b> el conductor autenticado es el asignado<br>
    <b>When</b> el conductor presiona "Iniciar viaje"<br>
    <b>Then</b> el sistema:<br>
    &nbsp;&nbsp;- Cambia estado a "En curso"<br>
    &nbsp;&nbsp;- Guarda timestamp de inicio<br><br>
    <b>Scenario 2: Inicio desde estado incorrecto</b><br>
    <b>Given</b> un viaje en estado "Completado" o "Cancelado"<br>
    <b>When</b> el conductor intenta iniciarlo<br>
    <b>Then</b> el sistema rechaza con mensaje "No se puede iniciar un viaje finalizado"
</td>
<td>EP02</td>
</tr>
<!-- USER STORIE 11 - Registro de finalización de viaje -->
<tr>
<td>US11</td>
<td>Registro de finalización de viaje</td>
<td><b>Como</b> conductor al llegar al destino, <b>quiero</b> registrar la finalización del viaje, <b>para</b> que el sistema actualice el estado, calcule la duración total y me libere para nuevas solicitudes.</td>
<td>
    <b>Scenario 1: Finalización exitosa</b><br>
    <b>Given</b> un viaje en estado "En curso"<br>
    <b>And</b> el conductor autenticado es el asignado<br>
    <b>When</b> el conductor presiona "Finalizar viaje"<br>
    <b>Then</b> el sistema:<br>
    &nbsp;&nbsp;- Cambia estado a "Completado"<br>
    &nbsp;&nbsp;- Guarda timestamp de finalización<br>
    &nbsp;&nbsp;- Calcula duración (inicio - final)<br>
    &nbsp;&nbsp;- Cambia conductor a estado "Disponible"<br><br>
    <b>Scenario 2: Finalización por pasajero</b><br>
    <b>Given</b> un viaje en "En curso"<br>
    <b>When</b> el pasajero presiona "Finalizar viaje"<br>
    <b>Then</b> el sistema solicita confirmación al conductor<br>
    <b>And</b> solo si el conductor confirma, se finaliza
</td>
<td>EP02</td>
</tr>
<!-- USER STORIE 12 - Cancelación de viaje antes del inicio -->
<tr>
<td>US12</td>
<td>Cancelación de viaje antes del inicio</td>
<td><b>Como</b> pasajero local, <b>quiero</b> cancelar un viaje que aún no ha comenzado, <b>para</b> no tener que pagar un servicio que ya no necesito y liberar al conductor para otros pasajeros.</td>
<td>
    <b>Scenario 1: Cancelación exitosa antes del inicio</b><br>
    <b>Given</b> el pasajero tiene un viaje en estado "Asignado" donde el conductor aceptó pero aún no inicia<br>
    <b>When</b> el pasajero presiona "Cancelar viaje" en su aplicación<br>
    <b>Then</b> el sistema:<br>
    &nbsp;&nbsp;- Cambia el estado del viaje a "Cancelado por pasajero"<br>
    &nbsp;&nbsp;- Guarda timestamp de cancelación<br>
    &nbsp;&nbsp;- Libera al conductor cambiando su estado a "Disponible"<br>
    &nbsp;&nbsp;- La solicitud no se reasigna el viaje se cancela definitivamente<br><br>
    <b>Scenario 2: Cancelación no permitida</b><br>
    <b>Given</b> un viaje en estado "En curso" o "Completado"<br>
    <b>When</b> el pasajero intenta cancelar<br>
    <b>Then</b> el sistema muestra mensaje: "No puedes cancelar un viaje que ya está en curso o finalizado"
</td>
<td>EP02</td>
</tr>
<!-- USER STORIE 13 - Visualización de solicitudes pendientes cercanas -->
<tr>
<td>US13</td>
<td>Visualización de solicitudes pendientes cercanas</td>
<td><b>Como</b> conductor, <b>quiero</b> visualizar un listado de todas las solicitudes de viaje pendientes cerca de mi ubicación actual, <b>para</b> decidir cuál aceptar según mi conveniencia.</td>
<td>
    <b>Scenario 1: Listado de solicitudes pendientes</b><br>
    <b>Given</b> el conductor ha iniciado sesión y está disponible<br>
    <b>And</b> existen una o más solicitudes en estado "Pendiente" en su zona<br>
    <b>When</b> el conductor accede a la sección "Solicitudes cercanas"<br>
    <b>Then</b> el sistema muestra un listado con:<br>
    &nbsp;&nbsp;- Origen y destino de cada solicitud<br>
    &nbsp;&nbsp;- Distancia aproximada desde su ubicación actual<br>
    &nbsp;&nbsp;- Tiempo transcurrido desde la creación<br>
    &nbsp;&nbsp;- Botón "Aceptar" para cada solicitud<br><br>
    <b>Scenario 2: Listado vacío</b><br>
    <b>Given</b> el conductor está disponible<br>
    <b>And</b> no existen solicitudes en estado "Pendiente" en su zona<br>
    <b>When</b> el conductor accede a "Solicitudes cercanas"<br>
    <b>Then</b> el sistema muestra mensaje:<br>
    &nbsp;&nbsp;- "No hay solicitudes pendientes cerca de ti"<br>
    &nbsp;&nbsp;- Sugerencia: "Amplía tu radio de búsqueda o espera nuevos viajes"<br><br>
    <b>Scenario 3: Actualización automática del listado</b><br>
    <b>Given</b> el conductor está viendo el listado de solicitudes<br>
    <b>When</b> una nueva solicitud es creada por un pasajero en su zona<br>
    <b>Then</b> el sistema actualiza automáticamente el listado<br>
    <b>And</b> la nueva solicitud aparece sin necesidad de recargar la página<br><br>
    <b>Escenario 4: Ordenamiento por defecto</b><br>
    <b>Given</b> el conductor ve el listado de solicitudes<br>
    <b>When</b> el listado se carga<br>
    <b>Then</b> las solicitudes se muestran ordenadas por:<br>
    &nbsp;&nbsp;- Prioridad 1: Más antigüedad (las que llevan más tiempo esperando)<br>
    &nbsp;&nbsp;- Prioridad 2: Menor distancia desde el conductor
</td>
<td>EP02</td>
</tr>


</table>

## 3.2 Impact Mapping

## 3.3 Product Backlog
