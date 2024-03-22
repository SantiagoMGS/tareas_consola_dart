import 'dart:io';

import 'controladores/agregar_tarea.dart';
import 'controladores/eliminar_tarea.dart';
import 'controladores/ver_tarea.dart';

void main() {
  print("----------- BIENVENIDO A LA APP DE TAREAS -----------");
  print("------------------ MENU PRINCIPAL -------------------");

  bool salir = false;
  final entrada = stdin;

  while (!salir) {
    print("");
    print("1. Crear tarea");
    print("2. Ver una tarea");
    print("3. Eliminar tarea");
    print("4. Salir.");
    print("Selecciona una opcion y presiona ENTER:");

    final seleccion = entrada.readLineSync();
    switch (seleccion) {
      case '1':
        print("Seleccionaste la opcion Agregar tarea");
        agregarTarea();
        break;
      case '2':
        print("Seleccionaste la opcion Ver tarea");
        print("Nombre de la tarea que deseas ver:");
        final nombre = entrada.readLineSync();
        verTarea(nombre ?? '');
        break;
      case '3':
        print("Seleccionaste la opcion Eliminar tarea");
        print("Nombre de la tarea que deseas eliminar:");
        final nombre = entrada.readLineSync();
        eliminarTarea(nombre ?? '');
        break;
      case '4':
        salir = true;
      default:
        print("Seleccionaste una opcion invalida");
        break;
    }
  }

  if (Platform.isWindows) {
    print("Presione enter para salir.");
    entrada.readLineSync();
  }
}
