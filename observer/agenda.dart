// Agenda con Observer

import 'observador.dart';

// sujeto observado

class Agenda {
  final List<Observador> _observadores = [];

  void suscribir(Observador observador) {
    _observadores.add(observador);
  }

  void desuscribir(Observador observador) {
    _observadores.remove(observador);
  }

  void publicarTarea(String tarea){
    print('Publicando tarea: $tarea');
    
    for ( final observador in _observadores){
      observador.actualizar(tarea);
    }
  }

  // Con observer, la agenda solo conoce el contrato Observador
  // Las clases destinatarias se suscribren o se desuscriben de la agenda
  // Agrega a otra clase destnataria solo implica crear suscribirse a otro observer
}