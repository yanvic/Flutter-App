import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';



class DashboardPage extends StatelessWidget {
  // void abrirWhatsApp() async {
  //   var whatsappUrl = "whatsapp://send?phone=558589060540&text=Olá,tudo bem ?";
  //
  //   if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
  //     await launchUrl(Uri.parse(whatsappUrl));
  //   } else {
  //     throw 'Could not launch $whatsappUrl';
  //   }
  // }


  // void abrirGoogleMaps() async {
  //   const urlMap = "https://www.google.com/maps/search/?api=1&query=-22.9732303,-43.2032649";
  //   if (await canLaunchUrl(Uri.parse(urlMap))) {
  //     await launchUrl(Uri.parse(urlMap));
  //   } else {
  //     throw 'erro';
  //   }
  // }
  //
  // final String lat = '25.3653';
  // final String long = '74.3653';

  // _launchMap()async {
  //   final Uri url =  Uri.parse("https://www.google.com/maps/search/?api=1&query=$lat,$long");
  //   //"https://www.google.com/maps/search/?api=1&query=$lat,$long";
  //   //final String gogleMapsUrl = "comgooglemaps://?center$lat, $long";
  //
  //   // if (await canLaunch(Uri)) {
  //   //   await launch(googleMapsUrl);
  //   // } else {
  //   //   throw 'Erro ao lançar o mapa';
  //   // }
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: SafeArea(

          child: Column(
            children: [
              Container (
                height: 70,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
              child: Row(
                children: const [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  child: Text(
                    'Olá, Motorista!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ],
              ),
        ),

              Padding(padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),

                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28.0),
                      topRight: Radius.circular(28.0)
                    ),
                    color: Colors.white
                  ),
                  height: MediaQuery.of(context).size.height - 228,

                  child: Container(
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                        children: [
                           Padding(
                            padding: EdgeInsets.all(8),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.lightGreen,
                              backgroundImage: NetworkImage("https://loremflickr.com/1234/2345/people?lock=56789$index"),
                            ),
                          ),
                          Container(
                            width: 270,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Nome',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Rua: Manoel arruda',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 5, bottom: 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  '17:00'
                                )
                              ],
                            ),
                          )
                        ],
                        );

                      },
                    ),
                  ),

                ),
              ),
              // ElevatedButton(
              //   onPressed: _launchMap,
              //   child: Text('Abrir WhatsApp'),
              // ),

              //const Urllauncher(),

              ElevatedButton.icon(
                  onPressed: () async {
                    String latitude = '-3.8292721814946127';
                    String longitude = '-38.50190787546938';
                    // String geourl = 'geo:$latitude,$longitude';
                    String geourl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
                    if (await canLaunchUrlString(geourl)) {
                      launchUrlString(geourl);
                    } else {
                      print("can't launch $geourl");
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  icon: const Icon(Icons.near_me),
                  label: const Text('LOCATION')),


            ],

          ),

        ),

      ),
      backgroundColor: Colors.blueAccent,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.blueAccent,
        animationDuration: const Duration(microseconds: 500000),
        items: const <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.emoji_people, size: 30),
          Icon(Icons.add_chart_sharp, size: 30),
          Icon(Icons.account_circle_outlined, size: 30),
        ],
        onTap: (index) {

        },
      ),
    );

  }
}

class Urllauncher extends StatefulWidget {
  const Urllauncher({Key? key}) : super(key: key);

  @override
  _UrllauncherState createState() => _UrllauncherState();
}

class _UrllauncherState extends State<Urllauncher> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
       //var url = Uri.https('gogle.com');
       final Uri _url = Uri.parse('https://flutter.dev');
        if (await canLaunchUrl(_url)) {
          await launchUrl(_url);
        } else {
          throw 'Erro ao lançar a URL';
        }
      },
      child: Text('Abrir URL'),
    );
  }
}
