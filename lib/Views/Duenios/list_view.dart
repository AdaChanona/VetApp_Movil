import 'package:flutter/material.dart';
import 'duenios.dart';

class DueniosList extends StatefulWidget{
  const DueniosList({Key? key}) : super(key: key);

  @override
  _DueniosList createState() => _DueniosList();
}

class _DueniosList extends State<DueniosList>{
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
                      Navigator.pushReplacementNamed(context, 'home/duenios');
                    },
                        icon: Icon(Icons.home, size: 30, color: Colors.green,)
                    ),
                    const Text("Administrar Dueños",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ),
              Duenios("Ada", 9651240990, "2DA SUR PONIENTE", "ada@gmail.com"),
              Duenios("Ada", 9651240990, "2DA SUR PONIENTE", "ada@gmail.com"),
              Duenios("Ada", 9651240990, "2DA SUR PONIENTE", "ada@gmail.com"),
              Duenios("Ada", 9651240990, "2DA SUR PONIENTE", "ada@gmail.com"),
              Duenios("Ada", 9651240990, "2DA SUR PONIENTE", "ada@gmail.com"),
              Duenios("Ada", 9651240990, "2DA SUR PONIENTE", "ada@gmail.com"),
            ],
          ),
        ),
      ),
    );
  }
}