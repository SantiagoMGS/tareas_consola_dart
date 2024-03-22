import 'dart:io';

void archivos() {
  try {
    final archivo = File('./tareas.txt');
    if (archivo.existsSync()) {
      final contenido = archivo.readAsStringSync();
      print("El contenido del archivo es: $contenido");

      final nuevoContenido = "Hola mundeishon";
      archivo.writeAsStringSync(contenido + '\n' + nuevoContenido);
    } else {
      print("El archivo no existe");
    }
  } catch (e) {
    print('Ocurrio un rrror: ${e.toString()}');
  }
}
