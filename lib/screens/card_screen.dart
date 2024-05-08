import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg', name: 'Un hermoso paisaje',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg', name: null,),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg', name: null,),
          SizedBox(height: 100)

        ],
      ),
    );
  }
}