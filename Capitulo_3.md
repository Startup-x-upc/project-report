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

</table>

## 3.2 Impact Mapping

## 3.3 Product Backlog

