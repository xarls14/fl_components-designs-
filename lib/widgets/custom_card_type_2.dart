import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;
  //'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'
   
  const CustomCardType2({Key? key, required this.imageUrl, required this.name}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(image: NetworkImage(imageUrl), 
          placeholder: const AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300) ,
          ),

          if(name != null)
            Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name! ?? 'No title'),
          )
          

          
        ],
      ),
    );
  }
}