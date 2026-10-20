import 'agenda.dart';
import 'notificador.dart';
import 'panel-alunmo.dart';

void main(){
  final agenda = Agenda();
  final PanelAlumno panel = PanelAlumno();
  final notificador = Notificador();

  agenda.suscribir(panel);
  agenda.suscribir(notificador);

  agenda.publicarTarea("Estudiar patrones de diseño");

  // En un punto, el ususario desactiva las notificaciones
  agenda.desuscribir(notificador);

  // Solo el panel recibe este aviso
  agenda.publicarTarea('Plantear ejercicio de Facade');
}