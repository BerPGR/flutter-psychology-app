import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:psicology/colors/palette.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

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
              icon: const Icon(
                CupertinoIcons.bell,
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
                        color: Palette.flash_white,
                        border:
                            Border.all(width: 2, color: Palette.midnight_green),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(1),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ]),
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
                  SizedBox(
                    height: 30,
                  ),
                  /*
                    This is a Row that contain some buttons
                    to see what the user wants, like checking the chats,
                    the psychologists and the configurations 
                  */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Palette.caribbean_current,
                                borderRadius: BorderRadius.circular(35)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.chat_bubble,
                                  size: 35,
                                  color: Palette.flash_white,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text("Chats",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Palette.caribbean_current,
                                borderRadius: BorderRadius.circular(35)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.people_outline_outlined,
                                  size: 35,
                                  color: Palette.flash_white,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text("Psicólogos",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Palette.caribbean_current,
                                borderRadius: BorderRadius.circular(35)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.settings_solid,
                                  size: 35,
                                  color: Palette.flash_white,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Config",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
