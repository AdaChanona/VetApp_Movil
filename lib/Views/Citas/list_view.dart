import 'package:flutter/material.dart';
import 'citas.dart';

class CitasList extends StatefulWidget{
  const CitasList({Key? key}) : super(key: key);

  @override
  _CitasList createState() => _CitasList();
}

class _CitasList extends State<CitasList>{
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
                      Navigator.pushReplacementNamed(context, 'home/citas');
                    },
                        icon: Icon(Icons.home, size: 30, color: Colors.green,)
                    ),
                    const Text("Citas Programadas",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ),
              Citas(1, "03/04/2022", "09:30", "vacuna"),
              Citas(2, "03/04/2022", "09:30", "vacuna"),
              Citas(3, "03/04/2022", "09:30", "vacuna"),
              Citas(4, "03/04/2022", "09:30", "vacuna"),
              Citas(5, "03/04/2022", "09:30", "vacuna"),
            ],
          ),
        ),
      ),
    );
  }
}