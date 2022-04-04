import 'package:flutter/material.dart';
import 'mascotas.dart';

class MascotasList extends StatefulWidget{
  const MascotasList({Key? key}) : super(key: key);

  @override
  _MascotasList createState() => _MascotasList();
}

class _MascotasList extends State<MascotasList>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    IconButton(onPressed:() async{
                      Navigator.pushReplacementNamed(context, 'home/mascotas');
                    },
                        icon: Icon(Icons.home, size: 30, color: Colors.green,)
                    ),
                    const Text("Lista de Mascotas",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ),
              Mascotas(1, "drago", "perro", 1, 1, 1, "03/04/2022", "vacuna"),
              Mascotas(2, "solovino", "perro", 1, 2, 2, "03/04/2022", "vacuna"),
              Mascotas(3, "kira", "gato", 1, 3, 3, "03/04/2022", "vacuna"),
              Mascotas(4, "micha", "gato", 1, 4,4, "03/04/2022", "vacuna"),
              Mascotas(5, "nube", "gato", 1, 5, 5, "03/04/2022", "vacuna"),
            ],
          ),
        ),
      ),
    );
  }
}

