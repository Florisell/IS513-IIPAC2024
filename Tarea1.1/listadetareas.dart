class Tarea {
  final String titulo;
  final String descripcion;
  bool completada;

  static List<Tarea> tareas = [];

  Tarea({
    required this.titulo,
    required this.descripcion,
    this.completada = false,
  });

   static agregarTarea(Tarea tarea) {
    tareas.add(tarea);
  }

   static eliminarTarea(String titulo) {
    tareas.removeWhere((tarea) => tarea.titulo == titulo);
  }

   static marcarTareaCompleta(String titulo) {
    for (var tarea in tareas) {
      if (tarea.titulo == titulo) {
        tarea.completada = true;
        break;
      }
    }
  }

   static mostrarTareas() {
    for (var tarea in tareas) {
      print(tarea);
    }
  }

  @override
  String toString() {
    return 'Tarea: $titulo, Descripción: $descripcion, Estado: ${completada ? "Completada" : "Incompleta"}';
  }
}
void main() {
  Tarea.agregarTarea(Tarea(titulo: 'Tarea 1', descripcion: 'Estudiar un nuevo lenguaje'));
  Tarea.agregarTarea(Tarea(titulo: 'Tarea 2', descripcion: 'Resolver problemas de circuitos'));

  print('Tareas:');
  Tarea.mostrarTareas();

  Tarea.marcarTareaCompleta('Tarea 1');
  Tarea.marcarTareaCompleta('Tarea 2');
  print("");
  Tarea.mostrarTareas();
    print("");

  Tarea.eliminarTarea('Tarea 2');
  Tarea.mostrarTareas();}

