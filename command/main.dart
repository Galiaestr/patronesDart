import 'agenda.dart';

void main(){
  final agenda = Agenda();

  print ('Las tareas pendientes son: ${agenda.tareas}');

  // eliminar una tarea
  agenda.eliminar(2);
  print('Lista de tareas actual: ${agenda.tareas}');

  //deshacer la eliminacion
  agenda.deshacer();
  print('Lista de tareas actual: ${agenda.tareas}');
}