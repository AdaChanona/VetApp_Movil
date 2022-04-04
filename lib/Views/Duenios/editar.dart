import 'package:flutter/material.dart';
import 'package:vetapp_movil/Controllers/pets_controller.dart';


class EditarDuenios extends StatefulWidget{
  const EditarDuenios({Key? key}) : super(key: key);

  @override
  State<EditarDuenios> createState() => _EditarDuenios();

}

class _EditarDuenios extends State<EditarDuenios>{
  final nombre=TextEditingController();
  final telefono =TextEditingController();
  final direccion= TextEditingController();
  final email =TextEditingController();
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
                  "EDITAR DUEÑOS",
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
                    hintText: "Nombre",
                  ), // decoration: ,
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "Teléfono",
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
                  controller: telefono,
                  decoration: InputDecoration(
                    hintText: "Telefono",
                  ), // decoration: ,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "Dirección",
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
                  controller: direccion,
                  decoration: InputDecoration(
                    hintText: "Dirección",
                  ), // decoration: ,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "Email",
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
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Email",
                  ), // decoration: ,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 60, right: 60),
                child:ElevatedButton(
                  onPressed: () async {
                    //addPet();
                  },
                  child: const Text("Actualizar Datos", style: TextStyle(
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
                    Navigator.pushReplacementNamed(context, 'duenios/ver');
                  },
                  child: const Text("Regresar", style: TextStyle(
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