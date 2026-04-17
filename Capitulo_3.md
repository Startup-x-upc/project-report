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
<!--USER STORIE 7 -->
<td>US07</td>
<td>Detección automática de ubicación del pasajero</td>
<td>
<b>Como pasajero</b>, quiero que el sistema detecte automáticamente mi ubicación al ingresar a la aplicación, para poder solicitar un viaje sin tener que ingresarla manualmente.<br>
</td>
<td>
<b>Scenario: Detección automática exitosa</b><br>
<b>Given</b> el pasajero accede a la aplicación por primera vez<br>
<b>When</b> acepta los permisos de ubicación en su dispositivo<br>
<b>Then</b> el sistema detecta su ubicación actual y la muestra en el mapa como punto de origen del viaje.<br><br>
<b>Scenario: Permiso de ubicación denegado</b><br>
<b>Given</b> el pasajero no concede permisos de ubicación<br>
<b>When</b> intenta solicitar su viaje<br>
<b>Then</b> el sistema solicita ingresar manualmente el punto de origen antes de continuar.
</td>
<td>EP03</td>
<!--USER STORIE 8 -->
<td>US08</td>
<td>Envío de ubicación en la solicitud de viaje</td>
<td>
<b>Como pasajero</b>, quiero que mi ubicación actual se envíe automáticamente al generar una solicitud de viaje, para que el conductor conozca el punto exacto de recojo.<br>
</td>
<td>
<b>Scenario: Envío correcto de la ubicación del pasajero</b><br>
<b>Given</b> el pasajero ha definido origen y destino<br>
<b>When</b> confirma la solicitud de viaje<br>
<b>Then</b> el sistema envía la ubicación exacta del punto de recojo al conductor disponible.<br><br>
<b>Scenario: Ubicación no válida o no definida correctamente</b><br>
<b>Given</b>la ubicación del pasajero no es precisa o no está definida<br>
<b>When</b>intenta confirmar la solicitud<br>
<b>Then</b>el sistema solicita ajustar manualmente el punto en el mapa antes de enviarla.
</td>
<td>EP03</td>
<!--USER STORIE 9-->
<td>US09</td>
<td>Visualización de conductores cercanos en el mapa</td>
<td>
<b>Como pasajero</b>, quiero visualizar en el mapa los conductores disponibles cerca de mi ubicación, para identificar rápidamente opciones de transporte.<br>
</td>
<td>
<b>Scenario: Visualización de conductores disponibles en el mapa</b><br>
<b>Given</b> el pasajero ha ingresado a la vista principal del mapa<br>
<b>When</b> existen conductores activos en su zona<br>
<b>Then</b> el sistema muestra los íconos de los conductores en el mapa según su ubicación actual.<br><br>
<b>Scenario: Ausencia de conductores disponibles en la zona</b><br>
<b>Given</b>el pasajero se encuentra en una zona sin conductores disponibles<br>
<b>When</b>el mapa carga la información<br>
<b>Then</b>el sistema muestra un mensaje indicando que no hay conductores cercanos y sugiere reintentar más tarde
</td>
<td>EP03</td>
<!--USER STORIE 10 -->
<td>US10</td>
<td>Notificación de aceptación de viaje al pasajero</td>
<td>
<b>Como pasajero</b>, quiero recibir una notificación cuando un conductor acepte mi solicitud, para saber que mi viaje ha sido confirmado.<br>
</td>
<td>
<b>Scenario: Aceptación de viaje exitosa</b><br>
<b>Given</b> un conductor acepta la solicitud de viaje<br>
<b>When</b>la acción se registra en el sistema<br>
<b>Then</b> el pasajero recibe una notificación con los datos del conductor asignado<br><br>
<b>Scenario: Expiración de la solicitud</b><br>
<b>Given</b>que ningún conductor acepta la solicitud dentro del tiempo establecido<br>
<b>When</b>la solicitud expira<br>
<b>Then</b>el sistema notifica al pasajero que debe realizar una nueva solicitud.
</td>
<td>EP03</td>
<!--USER STORIE 11 -->
<td>US11</td>
<td>Notificación de llegada del conductor</td>
<td>
<b>Como pasajero</b>, quiero recibir una notificación cuando el conductor llegue al punto de recojo, para prepararme para iniciar el viaje.<br>
</td>
<td>
<b>Scenario: Notificación de llegada al punto de recojo</b><br>
<b>Given</b>el conductor ha llegado al punto de recojo<br>
<b>When</b>su ubicación coincide con el punto del pasajero<br>
<b>Then</b> el sistema envía una notificación de llegada.<br><br>
<b>Scenario: Conductor fuera del rango de llegada</b><br>
<b>Given</b>el conductor no ha llegado al punto exacto<br>
<b>When</b>su ubicación aún se encuentra fuera del rango permitido<br>
<b>Then</b>no se envía la notificación de llegada.
</td>
<td>EP03</td>
<!--USER STORIE 12 -->
<td>US12</td>
<td>Notificación de rechazo de solicitud</td>
<td>
<b>Como pasajero</b>, quiero ser notificado cuando un conductor rechaza mi solicitud, para tomar acciones alternativas.<br>
</td>
<td>
<b>Scenario: Rechazo de solicitud por conductor</b><br>
<b>Given</b>un conductor rechaza solicitud<br>
<b>When</b>la acción se procesa<br>
<b>Then</b> el pasajero recibe una notificación de rechazo.<br><br>
<b>Scenario: Múliples rechazos acumulados</b><br>
<b>Given</b>múltiples conductores rechazan la solicitud<br>
<b>When</b>se alcanza un límite de rechazo<br>
<b>Then</b>el sistema sugiere al pasajero modificar la tarifa o reintentar.
</td>
<td>EP03</td>





</table>

## 3.2 Impact Mapping

## 3.3 Product Backlog
