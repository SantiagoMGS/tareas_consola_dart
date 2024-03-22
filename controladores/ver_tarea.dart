import 'dart:io';

import '../modelos/tarea.dart';
import '../utilidades/convertir.dart';

void verTarea(String nombre) {
  final entrada = stdin;
  try {
    final archivo = File('./tareas.txt');
    if (archivo.existsSync()) {
      final contenido = archivo.readAsLinesSync();
      contenido.forEach((tareaLocal) {
        if (tareaLocal.contains(nombre)) {
          final tarea = convertirTarea(tareaLocal);
          print("Este es el objeto tarea ----->");
          print("Nombre: ${tarea.nombre}");
          print("Descripcion: ${tarea.descripcion}");
          print("Estado: ${tarea.estado}");
        }
      });
    } else {
      print("El archivo no existe");
    }
  } catch (e) {
    print('Ocurrio un error: ${e.toString()}');
  }
}
