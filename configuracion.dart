// Constructor con Singleton
class Configuracion{
  // Constructor privado
  // No recibe parametros, y no puede ser llamado desde fuera de la clase
  Configuracion._();

  // Instancia unica de la clase
  static final Configuracion _instancia = Configuracion._();
  
  // Metodo factory que devuekve la instancia unica
  // Un constructor no tinen que crear una nueva instancia
  factory Configuracion() => _instancia;

    String idioma = 'es'; // Valor por defecto
    
}
