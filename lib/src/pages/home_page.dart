import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrreader/src/pages/direcciones_page.dart';
import 'package:qrreader/src/pages/mapas_page.dart';
import 'package:qrreader/src/providers/ui_provider.dart';
import 'package:qrreader/src/widgets/custom_navigatorbar.dart';
import 'package:qrreader/src/widgets/scan_button.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        
        elevation: 0,
        
        title: Text('Historial'),
        actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.delete_forever_rounded))
      ],),
      body:_HomePageBody(),

      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }


}
class _HomePageBody extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    //Obtenemos el select
    final uiProvider=Provider.of<UiProvider>(context);

    
    final currenindex=uiProvider.selectdMenuOpt;
    print ( 'asdas $currenindex');
    switch(currenindex){
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();
      default:
        return  MapasPage();
    }
  }
}
