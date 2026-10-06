import 'documento.dart';

abstract class GeneradorReportes{
  // Este es el facoty method
  Documento crearDocumento();

  void generarReporte (List<int> calificaciones) {
   if (calificaciones.isEmpty) {
    throw ArgumentError('No hay calificaciones para generarel reporte');
   }

   final documento = crearDocumento();

   print(documento.generar(calificaciones));
  }
}