import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffaa076b),
              Color(0xff61045f),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: InkWell(
            onTap: () async {
              var whatsAppNumber = "+201117349584";
              var whatsAppUrl =
                  "whatsapp://send?phone=$whatsAppNumber&text=Hello Shalaby 💜";
              await launchUrl(Uri.parse(whatsAppUrl));
            },
            child: Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Open WhatsApp",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
