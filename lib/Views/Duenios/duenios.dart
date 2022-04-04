import 'package:flutter/material.dart';

class Duenios extends StatelessWidget{
  String nombre = "Mar";
  int telefono = 777;
  String direccion = "Tuxtla";
  String email = "Mar@mar.com";
  Duenios(this.nombre, this.telefono,this.direccion, this.email, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top:30, right: 10, left: 10),
          height: 150,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 0.5),
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 80,
                height: 80,
                child: Image(image: AssetImage("assets/images/citas.png")),
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Nombre: "),
                      Text("Teléfono: "),
                      Text("Dirección: "),
                      Text("Email: "),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(nombre),
                      Text(telefono.toString()),
                      Text(direccion),
                      Text(email),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: 100,
              margin: const EdgeInsets.only(top: 20, left: 50, right: 20),
              child:ElevatedButton(
                onPressed: () async {
                  Navigator.pushReplacementNamed(context, 'duenios/editar');
                },
                child: const Text("Editar", style: TextStyle(
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
              width: 100,
              margin: const EdgeInsets.only(top: 20, left: 50, right: 20),
              child:ElevatedButton(
                onPressed: () async {
                  Navigator.pushReplacementNamed(context, 'duenios/eliminar');
                },
                child: const Text("Eliminar", style: TextStyle(
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
        )
      ],
    );
  }
}