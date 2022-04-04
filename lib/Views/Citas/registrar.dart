import 'package:flutter/material.dart';

class RegistrarCitas extends StatefulWidget{
  const RegistrarCitas({Key? key}) : super(key: key);

  @override
  State<RegistrarCitas> createState() => _RegistrarCitas();

}

class _RegistrarCitas extends State<RegistrarCitas> {
  final fecha=TextEditingController();
  final hora=TextEditingController();
  final tipoServicio= TextEditingController();
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
                  "REGISTRAR CITA",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "Fecha",
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
                    hintText: "Fecha de la cita",
                  ), // decoration: ,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "Hora",
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
                  controller: hora,
                  decoration: InputDecoration(
                    hintText: "Hora de la cita",
                  ), // decoration: ,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30,left:10),
                child: const Text(
                  "Tipo de Servicio",
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
                  controller: tipoServicio,
                  decoration: const InputDecoration(
                    hintText: "Tipo de Servicio",
                  ), // decoration: ,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 60, right: 60),
                child:ElevatedButton(
                  onPressed: () async {
                    //addPet();
                  },
                  child: const Text("Registrar Cita", style: TextStyle(
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
                    Navigator.pushReplacementNamed(context, 'home/citas');
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