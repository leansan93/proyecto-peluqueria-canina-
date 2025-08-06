la aplicacion tiene una interfaz grafica que permite registrar los dueños con sus mascotas para la peluqueria 
interfaz principal :
- cargar datos : aqui es donde se guarda a los usuarios con su mascota y limpiar para registrar a otro usuario 
- ver datos: donde se ven los usuarios con sus mascotas registradas, tambien se puede editar al usuario o eliminarlo  

tiene una relacion 1 a 1 , entre mascota y el dueño 

tecnologias usadas: 
-netbeans Ide 17 
-xammp v3.3.0
-interfaz grafica (jframe)
-mysql para la coneccion de base de datos con jpa 

Instalar y configurar xammp:
-descargar eh instalar xammp v3.3.0 
- inicia mysql activando Apache y Mysql 
-luego ingresar en internet en http://localhost/phpmyadmin/index.php 
-cargar peluqueria_canina.sql desde la seccion import  

 
Explicacion de la Coneccion del proyecto con netbeans y los drivers para que se conecte con la base de datos:
la aplicacion del proyecto esta hecho con neatbens con jpa + mysql para la base de datos y conección utilice la aplicación xammp control panel
v3.3.0, en el que dejo el archivo exportado de peluqueria_canina para la conección con el jpa para importarlo :
-la coneccion con peluqueria_canina el root para la persistencia.xml es username: root no tiene contraseña ya que es la coneccion default de la base de datos desde jpa.
-el tipo de driver que usa la dependencia del proyecto es mysql-connector-java-8.0.17.jar
 
