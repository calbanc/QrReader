import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrreader/src/pages/home_page.dart';
import 'package:qrreader/src/pages/mapa_page.dart';
import 'package:qrreader/src/providers/ui_provider.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>new UiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home':(_,)=>HomePage(),
          'mapa':(_,)=>MapaPage()
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.deepPurple)
    
        ),
      ),
    );
  }
}