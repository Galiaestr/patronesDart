import 'observador.dart';

//observador

class Notificador implements Observador {
  @override
  void actualizar(String tarea) {
    print("Notificador: se publico $tarea");
  }
}