import 'package:flutter/material.dart';

class HomeEmpleado extends StatefulWidget{
  const HomeEmpleado({Key? key}) : super(key: key);

  @override
  State<HomeEmpleado> createState() => _HomeEmpleado();
}

class _HomeEmpleado extends State<HomeEmpleado>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100,left:145),
                child: const Text(
                  "HOME",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30,left: 20),
                    width: 150,
                    height: 150,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 80,
                          height: 80,
                          child: Image(image: AssetImage("assets/images/citas.png")),
                        ),
                        Container(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, 'home/citas');
                            },
                            child: const Text("Citas", style: TextStyle(
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
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 30),
                    width: 150,
                    height: 150,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 80,
                          height: 80,
                          child: Image(image: AssetImage("assets/images/usuario.png")),
                        ),
                        Container(
                          width: 120,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, 'home/duenios');
                              },
                              child: const Text("Propietarios", style: TextStyle(
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
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30,left: 20),
                    width: 150,
                    height: 150,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 80,
                          height: 80,
                          child: Image(image: AssetImage("assets/images/mascota.png")),
                        ),
                        Container(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, 'home/mascotas');
                            },
                            child: const Text("Mascotas", style: TextStyle(
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
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 30),
                    width: 150,
                    height: 150,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 80,
                          height: 80,
                          child: Image(image: AssetImage("assets/images/salir.png")),
                        ),
                        Container(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, 'login');
                            },
                            child: const Text("Salir", style: TextStyle(
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}