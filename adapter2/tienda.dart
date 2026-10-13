
import 'medio-pago.dart';


class Tienda{
  
  final Mediopago medioPago;

  Tienda(this.medioPago);

  void finalizarCompra(double total){
    //Aqui debo procesar la cmpra:
    //cobrar, actuaolizar inventario, generar proceso de envio
    medioPago.pagar(total);
  }
}