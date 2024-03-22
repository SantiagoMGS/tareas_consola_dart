import 'dart:io';

void eliminarTarea(String nombre) {
  final entrada = stdin;
  try {
    final archivo = File('./tareas.txt');
    if (archivo.existsSync()) {
      final contenido = archivo.readAsLinesSync();
      for (int i = 0; i < contenido.length; i++) {
        if (contenido[i].contains(nombre)) {
          contenido.removeAt(i);
          break;
        }
      }
      archivo.writeAsStringSync(contenido.join('\n'));
      print("Tarea eliminada");
    } else {
      print("El archivo no existe");
    }
  } catch (e) {
    print('Ocurrio un error: ${e.toString()}');
  }
}
