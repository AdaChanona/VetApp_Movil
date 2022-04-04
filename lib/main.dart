import 'package:flutter/material.dart';
import 'package:vetapp_movil/Views/Citas/editar.dart';
import 'package:vetapp_movil/Views/Citas/list_view.dart';
import 'package:vetapp_movil/Views/Citas/registrar.dart';
import 'package:vetapp_movil/Views/Citas/eliminar.dart';
import 'package:vetapp_movil/Views/Duenios/registrar.dart';
import 'package:vetapp_movil/Views/Duenios/editar.dart';
import 'package:vetapp_movil/Views/Duenios/eliminar.dart';
import 'package:vetapp_movil/Views/Home/home_citas.dart';
import 'package:vetapp_movil/Views/Home/home_mascotas.dart';
import 'package:vetapp_movil/Views/Home/propietarios/home_propietarios.dart';
import 'package:vetapp_movil/Views/Login/login.dart';
import 'package:vetapp_movil/Views/Home/home_empleado.dart';
import 'package:vetapp_movil/Views/Home/home_duenios.dart';
import 'package:vetapp_movil/Views/mascotas/editar.dart';
import 'package:vetapp_movil/Views/mascotas/eliminar.dart';
import 'package:vetapp_movil/Views/mascotas/list_view.dart';
import 'package:vetapp_movil/Views/mascotas/registrar.dart';
import 'package:vetapp_movil/Views/Duenios/list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veterinaria el pulgas',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => const Login(),
        'home/empleado':(BuildContext context) => const HomeEmpleado(),
        'home/mascotas' :(BuildContext context) => const HomeMascotas(),
        'home/citas':(BuildContext context) => const HomeCitas(),
        'home/duenios': (BuildContext context) => const HomeDuenios(),
        'mascotas/ver' :(BuildContext context) => const MascotasList(),
        'mascota/registrar':(BuildContext context) => const RegistrarMascotas(),
        'mascota/editar':(BuildContext context) => const EditarMascotas(),
        'mascotas/eliminar':(BuildContext context) => const EliminarMascotas(),
        'citas/registrar':(BuildContext context) => const RegistrarCitas(),
        'citas/editar':(BuildContext context) => const EditarCitas(),
        'citas/eliminar':(BuildContext context) => const EliminarCitas(),
        'duenios/registrar':(BuildContext context) => const RegistrarDuenios(),
        'duenios/editar':(BuildContext context) => const EditarDuenios(),
        'duenios/eliminar':(BuildContext context) => const EliminarDuenios(),
        'citas/ver' :(BuildContext context) => const CitasList(),
        'duenios/ver' :(BuildContext context) => const DueniosList(),
        'home/propietarios':(BuildContext context) => const HomePropetarios(),



      },
    );
  }
}
