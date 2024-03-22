import '../modelos/tarea.dart';

Tarea convertirTarea(String cadena) {
  final atributos = cadena.split('|');
  EstadoTarea estado = EstadoTarea.noRealizada;
  if (atributos[2].isNotEmpty) {
    switch (atributos[2]) {
      case 'EstadoTarea.noRealizada':
        estado = EstadoTarea.noRealizada;
        break;
      case 'EstadoTarea.postergada':
        estado = EstadoTarea.postergada;
        break;
      case 'EstadoTarea.realizada':
        estado = EstadoTarea.realizada;
        break;
      default:
        break;
    }
  }
  return Tarea(atributos[0], descripcion: atributos[1], estado: estado);
}
