import 'package:flutter/material.dart';
import 'package:vetapp_movil/Controllers/pets_controller.dart';


class RegistrarMascotas extends StatefulWidget{
  const RegistrarMascotas({Key? key}) : super(key: key);

  @override
  State<RegistrarMascotas> createState() => _RegistrarMascota();

}

class _RegistrarMascota extends State<RegistrarMascotas>{
  final nombre=TextEditingController();
  final tipo =TextEditingController();
  final idDuenio= TextEditingController();
  final idCita =TextEditingController();
  final idMedicamento = TextEditingController();
  final fecha =TextEditingController();
  final razon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30,left:30),
                child: const Text(
                  "REGISTRAR MASCOTA",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //NOMBRE
              Container(
                margin: EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "Nombre",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,left: 10, right: 25),
                child: TextField(
                  controller: nombre,
                  decoration: const InputDecoration(
                    hintText: "Nombre de la mascota",
                  ), // decoration: ,
                ),
              ),
              //TIPO
              Container(
                margin: const EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "Tipo",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,left: 10, right: 25),
                child: TextField(
                  controller: tipo,
                  decoration: InputDecoration(
                    hintText: "Tipo: Perro, gato, etc",
                  ), // decoration: ,
                ),
              ),
              //IDDUEÑO
              Container(
                margin: EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "ID Dueño",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,left: 10, right: 25),
                child: TextField(
                  controller: idDuenio,
                  decoration: InputDecoration(
                    hintText: "ID del dueño",
                  ), // decoration: ,
                ),
              ),
              //IDCITAS
              Container(
                margin: EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "ID Cita",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,left: 10, right: 25),
                child: TextField(
                  controller: idCita,
                  decoration: InputDecoration(
                    hintText: "ID Cita",
                  ), // decoration: ,
                ),
              ),
              //IDMEDICAMENTOS
              Container(
                margin: EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "ID Medicamentos",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,left: 10, right: 25),
                child: TextField(
                  controller: idMedicamento,
                  decoration: InputDecoration(
                    hintText: "ID Medicamento",
                  ), // decoration: ,
                ),
              ),
              //FECHA
              Container(
                margin: EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "Fecha de Ingreso",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,left: 10, right: 25),
                child: TextField(
                  controller: fecha,
                  decoration: const InputDecoration(
                    hintText: "Fecha de Ingreso",
                  ), // decoration: ,
                ),
              ),
              //RAZON
              Container(
                margin: EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "Razon",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,left: 10, right: 25),
                child: TextField(
                  controller: razon,
                  decoration: InputDecoration(
                    hintText: "Vacuna, enfermedad, revisión, etc",
                  ), // decoration: ,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 60, right: 60),
                child:ElevatedButton(
                  onPressed: () async {
                    //addPet();
                  },
                  child: const Text("Registrar Mascota", style: TextStyle(
                      fontSize: 16
                  ),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 60, right: 60),
                child:ElevatedButton(
                  onPressed: () async {
                    Navigator.pushReplacementNamed(context, 'home/mascotas');
                  },
                  child: const Text("Menú", style: TextStyle(
                      fontSize: 16
                  ),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}