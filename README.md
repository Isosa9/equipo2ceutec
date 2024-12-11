# flutter_proyectofinal_app

A new Flutter project.

Documentación del proyecto
•	Descripción de la arquitectura de la aplicación (capas, componentes, flujos de datos).
Nuestro proyecto es una alarma que solo contiene el reloj y la alarma. Tiene solo la interfaz de usuario donde se encuentra alarm y clock se puede manejar desde la pantalla para poder entrar al reloj y para poner la alarma en el icono de alamar esta el calendario y la hora que se puede mover a la preferencia del usuario.

La interfaz está diseñada en flutter y la base de datos que se uso es SQflite

Se consumió una API para el para que muestre la información de la alarma y muestre los datos seleccionados usando formato JSON 
La base da datos que se utilizo es SQL para poder guardar la información solicitada por el usuario 
Se implemento una sección de notificación para poder recibirla en el tiempo y hora que el usuario selecciono 

•	Explicación de las decisiones técnicas y de diseño tomadas durante el desarrollo.
Trabajamos con flutter para el desarrollo de multiplataformas que permiten construir aplicaciones nativas para iOS y Android.

Implementamos Provider como solución para la gestión del estado, debido a:
Su integración nativa con Flutter.
La capacidad de manejar estados locales y globales.
Su simplicidad y bajo impacto en el rendimiento.

•	Instrucciones para configurar, instalar y ejecutar la aplicación.

Solo se buscar como Alarma para instalarla, no tiene ninguna configuración, no pide correo, ni contraseña para poder entrar y cuando se ejecuta la app aparece la pantalla principal que es el reloj y se muestran los botones que están funcionando. 

•	Crear una documentación de usuario simple que explique cómo utilizar la app y sus principales características.

El usuario cuando entre a la app lo primero que va visualizar es la pantalla con el reloj, al lado izquierdo de la pantalla se visualiza los botones que están en función al seleccionar el botón alarma se va poder mostrar el calendario y la hora para poder ser manejado por el usuario, al seleccionar la fecha y hora que desee que suene la alarma se va mostrar un recuadro con la descripción del día y la hora seleccionada, para recibir una notificación al momento de que la sea la hora seleccionada por el usuario. 

Los que colaboraron en este proyecto fueron:
Isis Yorleni Martinez Sosa 62111302
Carlos Alejandro Zavala 62311556