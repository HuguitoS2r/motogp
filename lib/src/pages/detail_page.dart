import 'package:flutter/material.dart';
import 'package:onepiece_list_2/src/widgets/blur_container.dart';
import 'package:onepiece_list_2/src/widgets/infotittle_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {super.key,
      required this.color,
      required this.image,
      required this.nombre,
      required this.escuderia,
      required this.numeropiloto,
      required this.pais});
  final int color;
  final String image;
  final String nombre;
  final String escuderia;
  final int numeropiloto;
  final String pais;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(color), Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 12.0),
                child: SizedBox(
                  height: 500.0,
                  child: Image.asset(image),
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 20,
                  child: BlurContainer(
                    child: Container(
                      width: 160,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1)),
                      child: Text(
                        nombre,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "$nombre #$numeropiloto",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Moto GP",
                style: const TextStyle(color: Colors.white70),
              )),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Infotittle(title: "Tútulo", subtittle: "Creador"),
                Infotittle(title: "País", subtittle: pais)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
