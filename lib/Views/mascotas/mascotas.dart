import 'package:flutter/material.dart';

class Mascotas extends StatelessWidget{
  int id= 1;
  String nombre= "Drago";
  String tipo = "Perro";
  int idDuenio=1;
  int idCitas=1;
  int idMedicamento=1;
  String fecha="dd/mm/yyyy";
  String razon="enfermito";
  Mascotas(this.id, this.nombre,this.tipo, this.idDuenio,this.idCitas, this.idMedicamento,this.fecha, this.razon, {Key? key}) : super(key: key);
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
                child: Image(image: AssetImage("assets/images/mascota.png")),
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("ID: "),
                      Text("Nombre: "),
                      Text("Tipo: "),
                      Text("ID Dueño: "),
                      Text("ID Citas: "),
                      Text("ID Medicamentos: "),
                      Text("Fecha: "),
                      Text("Razón"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(id.toString()),
                      Text(nombre),
                      Text(tipo),
                      Text(idDuenio.toString()),
                      Text(idCitas.toString()),
                      Text(idMedicamento.toString()),
                      Text(fecha),
                      Text(razon),
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
                  Navigator.pushReplacementNamed(context, 'mascota/editar');
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
                  Navigator.pushReplacementNamed(context, 'mascotas/eliminar');
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
