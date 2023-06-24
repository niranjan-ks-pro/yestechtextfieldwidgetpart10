import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          //text
          title: const Text("TEXT FIELD"),
          centerTitle: true,
          //BG colour
          backgroundColor: const Color.fromARGB(255, 8, 153, 27),

          //leading
          leading: const Icon(Icons.home),
          //Actions
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          //shape
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          //elevation
          elevation: 30,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                      labelText: "USER NAME",
                      hintText: "ENTER YOUER USER NAME",
                      prefixIcon: Icon(Icons.account_box_sharp),
                      suffixIcon: Icon(Icons.verified_user_outlined)),
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "email",
                      hintText: "ENTER YOUER email adress",
                      prefixIcon: Icon(Icons.phone_android),
                      suffixIcon: Icon(Icons.verified_user_outlined)),
                ),
                const TextField(
                  maxLength: 10,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "PH NO",
                      hintText: "enter your phone number",
                      helperText:
                          "helpertext to give information in the down side of the ine",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 114, 23, 23)),
                      labelStyle: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 27, 21, 2))),
                ),
                const TextField(
                  maxLength: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 228, 24, 92),
                              width: 5)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 241, 6, 6), width: 5)),
                      label: const Text("user name")),
                ),
                const TextField(
                  textAlign: TextAlign.center,
                  decoration:
                      InputDecoration(filled: true, fillColor: Colors.blue),
                )
              ],
            ),
          ),
        ));
  }
}
