import 'package:flutter/material.dart';
import 'package:vetapp_movil/Controllers/pets_controller.dart';


class EliminarCitas extends StatefulWidget{
  const EliminarCitas({Key? key}) : super(key: key);

  @override
  State<EliminarCitas> createState() => _EliminarCitas();

}

class _EliminarCitas extends State<EliminarCitas>{
  final id=TextEditingController();
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
                  "ELIMINAR CITA",
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
                  "ID",
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
                  controller: id,
                  decoration: const InputDecoration(
                    hintText: "ID de la Cita",
                  ), // decoration: ,
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 40, left: 60, right: 60),
                child:ElevatedButton(
                  onPressed: () async {
                    //addPet();
                  },
                  child: const Text("Eliminar Cita", style: TextStyle(
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
                    Navigator.pushReplacementNamed(context, 'citas/ver');
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