import 'controlador comandos.dart';
import 'eliminar-tarea.dart';

void main(){
 final tareas = [
    'Estudiar Dart',
    'Hacer mis HUs',
    'Preguntarle a chat como hacer un merge',
    'Decirle a chat que haga mi tarea de ingles',
    'Hacer UI de la app movil'
  ];

  final controlador = ControladorComandos();

  print ('Las tareas pendientes son: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 1));

  print('Lista de tareas de eliminar: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 0));

  print('Lista de tareas despues de eliminar: $tareas');

  //Deshacer la eliminacion
  controlador.deshacer();
  print('Lista de tareas de deshacer: $tareas');

  controlador.deshacer();
  print('Lista de tareas despues del segundo deshacer: $tareas');

  // cada comando conserva su propia eliminacion
  // cada comando conoce como ejecutar y revertir la accion
  // ahora se pueden agregar mas comando a la agenda
  // conveniente cuando se requiere manipular un hsi¿¿istorial de comandos
}