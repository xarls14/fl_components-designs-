import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal gear','Super Smash','Final Fantasy'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
        //elevation: 0,
        //backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.indigo,),
          onTap: () => {},
        ),
        separatorBuilder: ( _ , __) => const Divider(),
        itemCount: options.length,
      )
    );
  }
}