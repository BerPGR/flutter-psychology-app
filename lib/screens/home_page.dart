import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:psicology/colors/palette.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
        AppBar with Title and a button that will direct the user to the profile page
      */
      appBar: AppBar(
        backgroundColor: Palette.midnight_green,
        title: Text(
          "PsichoApp",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_outline,
                size: 28,
              ))
        ],
      ),
      /*
        Body of our app that will be scrollable
      */
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /* 
                    Text saying hello with the user name
                  */
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      "Olá, Bernardo!",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  /*
                    This is a container that shows the amount of sessions
                    the user will have for the month 
                  */
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        border: Border.all(
                            width: 2, color: Palette.midnight_green)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sessões para este mês:",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
