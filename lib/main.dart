import 'dart:async';
import 'dart:convert';
import 'secondpage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
  MaterialApp( 
  home: Navigate()
  )
);

class Navigate extends StatelessWidget {
  const Navigate({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      home: Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Image'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('FETCH'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
             );
           },
         ),
       ),
     )
   );
  }
}

