import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(  
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text('Just Us'),
        actions: [
          IconButton(
            onPressed: (){
              
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){
              
            },
            icon: const Icon(Icons.notifications),
          ),],
      ),
      drawer: Drawer(),
      body: Center(
        
      ),
    );
  }
}