HoyApruebo


Respuestas teorico

Ejercicio 1: dados los siguientes términos, explicar con qué parte del modelo MVC lo relacionan. Justificar en todos los casos.
SQLi, CSS, localStorage, JSON, session_start()

  SQLi: Lo relaciono con el Modelo ya que es el encargado de la manipulacion de datos y SQLi es un motor de bases de datos.
  CSS: Se usa para modificar la vista de los elmentos de documentos HTML, por lo tanto lo relaciono con la Vista.
  localStorage: Lo relaciono con el Modelo
  session_start(): Contorlador, ya que es el encargado de la logica del programa. Las sessiones se usan para guardar informacion de un usuario a travez de varios documentos php.
  JSON: Es un formato de representacion de datos, por lo que lo relaciono con View.

Ejercicio 2:  tomando el ejercicio realizado en la parte práctica de esta evaluación, explicar detalladamente de qué forma accedió a las variables del formulario y cómo impacta dicho uso en la vulnerabilidad de la aplicación respecto de otras formas de acceso.
  Accedi a las variables del formulario mediante las variables globales POST. En general el envio de informacion se hace mediante este tipo de envio de formularios ya que es mas seguro que GET. Los parametros que se envian mediante GET se envian a travez de la URL de la siguiente forma:
    index.php?usuario=admin&contraseña=admin
  Mientras que los parametros que se envian por POST viajan en el cuerpo del mensaje.

Ejercicio 3: explicar por qué es necesario contar con formatos estándares para intercambio de información. Describir dos de los formatos vistos en la cursada.
  Los formatos mas vistos en la cursada fueron XLS y JSON.
  XLS es muy parecido a HTML, define tags que representan entidades y cada entidad puede tener a su vez atributos.
  JSON (JavaScript Object Notation) es el formato usado por Javascript para representar sus objetos. Tiene el siguiente formato:
    Persona: {
      Nombre: "Sebastian",
      Apellido: "Raimondi",
      Carreras: [
        Carrera: {
          Nombre: "Licenciatura en Sistemas"
        }
        Carrera: {
          Nombre: "APU"
        }
      ]
    }
  XLS permite definir la estructura de los elementos que va a representar mediante DTD, indicando cuantos atributos tendra cada elemento, que tipo de valor tendra, cuantos valores podra tener un mismo atributo, etc.
