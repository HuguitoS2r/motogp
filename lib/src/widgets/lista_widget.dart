import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onepiece_list_2/src/pages/detail_page.dart';

class Listapersonajes extends StatefulWidget {
  const Listapersonajes({super.key});

  @override
  State<Listapersonajes> createState() => _ListapersonajesState();
}

class _ListapersonajesState extends State<Listapersonajes> {
  double widthScreen = 0;
  final titulStyleText = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    widthScreen = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text(
            "Principales Ligas",
            style: titulStyleText,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              bloquesPortada("motogp.png", "#MotoGP75: ", "2024"),
              SizedBox(
                width: widthScreen * 0.03,
              ),
              bloquesPortada("moto3.png", "#Moto3: ", "2024"),
              SizedBox(
                width: widthScreen * 0.03,
              ),
              bloquesPortada("moto2.png", "#Moto2: ", "2024")
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(255, 62, 62, 62),
          ),
          const SizedBox(
            height: 20,
          ),
          bloquePersonajes("Marc Márquez", 0xff4913C4, "marc",
              "Gresini Racing Team", 93, "España"),
          bloquePersonajes("Alex Márquez", 0xff4913C4, "alexmarquez",
              "Gresini Racing Team", 73, "España"),
          bloquePersonajes("Aleix Espargaró", 0xffF3131, "aleix",
              "Aprilia Racing Factory Team", 41, "España"),
          bloquePersonajes("Maverick Viñales", 0xffF3131, "maverick",
              "Aprilia Racing Factory Team", 12, "España"),
          bloquePersonajes("Enea Bastianini", 0xffDB0100, "enea", "Ducati Team",
              23, "Italia"),
          bloquePersonajes(
              "Pecco Bagnaia", 0xffDB0100, "pecco", "Ducati Team", 1, "Italia"),
          bloquePersonajes("Jorge Martin", 0xff21E295, "jorge",
              "Pramac Racing Ducati", 89, "España"),
          bloquePersonajes("Franco Morbidelli", 0xff21E295, "franco",
              "Pramac Racing Ducati", 21, "Italia"),
          bloquePersonajes("Brad Binder", 0xff21E295, "brad",
              "Red Bull KTM Factory Racing", 33, "Sudáfrica"),
          bloquePersonajes("Jack Miller", 0xff21E295, "jack",
              "Red Bull KTM Factory Racing", 43, "Australia"),
          bloquePersonajes("Joan Mir", 0xffFB9C00, "joan",
              "MotoGP Repsol Honda Team Pilotos", 36, "España"),
          bloquePersonajes("Luca Marini", 0xffFB9C00, "luca",
              "MotoGP Repsol Honda Team Pilotos", 10, "Italia"),
          bloquePersonajes(
              "Johann Zarco ", 0xff63A987, "zarco", "Team LCR", 5, "Francia"),
          bloquePersonajes("Takaaki Nakagami", 0xff63A987, "nakagami",
              "Team LCR", 30, "Japón"),
          bloquePersonajes("Fabio Quartararo", 0xff0041BB, "quarta",
              "Yamaha Factory Racing", 20, "Francia"),
          bloquePersonajes("Alex Rins", 0xff0041BB, "rins",
              "Yamaha Factory Racing", 42, "España"),
          bloquePersonajes("Raúl Fernandez", 0xff21E295, "raul",
              "Trackhouse Racing Team", 25, "España"),
          bloquePersonajes("Miguel Oliveira", 0xff21E295, "miguel",
              "Trackhouse Racing Team", 88, "Portugal"),
          bloquePersonajes("Pedro Acosta", 0xff640100, "pedro",
              "Tech3 GasGas Factory Racing", 31, "España"),
          bloquePersonajes("Augusto Fernandez", 0xff640100, "augusto",
              "Tech3 GasGas Factory Racing", 37, "España"),
          bloquePersonajes("Fabio Di Giannantonio", 0xffF4F13E, "fabio",
              "Team VR46", 49, "Italia"),
          bloquePersonajes(
              "Marco Bezzechi", 0xffF4F13E, "marco", "Team VR46", 72, "Italia"),
        ],
      ),
    );
  }

  Widget bloquePersonajes(String nombre, int color, String imagen,
      String escuderia, int numeropiloto, String pais) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute(
            builder: ((context) => DetailPage(
                color: color,
                image: "assets/$imagen.png",
                nombre: nombre,
                escuderia: escuderia,
                numeropiloto: numeropiloto,
                pais: pais))));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(66, 67, 63, 63),
        ),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      blurStyle: BlurStyle.normal,
                      offset: const Offset(0, 5),
                      color: Color(color),
                    )
                  ], borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset("assets/$imagen.png"),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  nombre,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded, color: Colors.grey))
          ],
        ),
      ),
    );
  }

  Widget bloquesPortada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: widthScreen * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        RichText(
            text: TextSpan(
                text: titulo,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
                children: [
              TextSpan(
                  text: subtitulo,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300))
            ]))
      ],
    );
  }
}
