class Agenda{
  final tareas = [
    'Estudiar Dart',
    'Hacer mis HUs',
    'Preguntarle a chat como hacer un merge',
    'Decirle a chat que haga mi tarea de ingles',
    'Hacer UI de la app movil'
  ];

// Guardar la informacion de una tarea eliminada
  String? eliminada; // la tarea eliminada
  int? posicionAnterior; //la posicion de la tarea en el arreglo

  void eliminar(int posicion){
    eliminada = tareas.removeAt(posicion);
    posicionAnterior = posicion;
  }

  void deshacer() {
    //undelete
    final tarea = eliminada;
    final posicion = posicionAnterior;

// Si hay datos (tareas eliminada), proceder a recuperarla
    if ( tarea != null && posicion != null){
      tareas.insert(posicion, tarea);
      eliminada = null;
      posicionAnterior = null;
    }
  }
}