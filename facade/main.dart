import 'cine-facade.dart';
import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

void main() {
  final cine = CineFacade(
    Proyector(),
    SistemaAudio(),
    Reproductor(),
  );

  // Reproducir pelicula
  cine.verPelicula('Un domingo cualquiera', 25);

  // Terminar la funcion
  cine.terminarFuncion();

  // La fachada cordina los pasos
  // El usuario de la fachada (dev) solo conoce los metodos basicos
  // El usuario (dev) no necesita conocer los detalles
  // El procedimiento se concentra en una clase
}