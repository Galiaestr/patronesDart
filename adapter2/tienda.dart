import 'servicio pago.dart';
import 'terminal-externa.dart';

class Tienda{
  final ServicioPago servicioPago;
  final TerminalExterna terminalExterna;

  Tienda(this.servicioPago, this.terminalExterna);

  void finalizarCompra(double total, String medio){
    if (medio == 'servicioPago') {
      servicioPago.pagar(total);
    } else if (medio == 'terminalExterna'){
      //La tienda debe convertir peso a dolares antes de llamara al servicio
      final totalDolares = total / 18.25;
      terminalExterna.cobrar(totalDolares);
    } else{
      throw ArgumentError('Medio de pago no soportado: $medio');
    }
  }
}