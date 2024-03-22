import 'proyecto.dart';
import 'sub_tarea.dart';

class Tarea implements Proyecto {
  final String nombre;
  final String descripcion;
  EstadoTarea estado;

  List<SubTarea> subTareas = [];

  Tarea(this.nombre,
      {this.descripcion = '', this.estado = EstadoTarea.noRealizada});

  @override
  void culminarTarea() {
    this.estado = EstadoTarea.noRealizada;
  }

  @override
  void postergarTarea() {
    this.estado = EstadoTarea.postergada;
  }

  @override
  void realizarTarea() {
    this.estado = EstadoTarea.realizada;
  }

  void agregarSubTarea(SubTarea subTarea) {
    subTareas.add(subTarea);
  }

  void eliminarSubTarea(int index) {
    subTareas.removeAt(index);
  }

  String convertirCadena() {
    return '$nombre|$descripcion|$estado';
  }
}

enum EstadoTarea {
  realizada,
  postergada,
  noRealizada,
}
