import 'proyecto.dart';
import 'tarea.dart';

class SubTarea extends Tarea implements Proyecto {
  SubTarea(String nombre,
      {String descripcion = '', EstadoTarea estado = EstadoTarea.noRealizada})
      : super(nombre, descripcion: descripcion, estado: estado);
}
