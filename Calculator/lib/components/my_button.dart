import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
// remove both      // final String title;
//  const MyButton({super.key, required this.title}); // if do not want to required then use this.title = "xyz";
final String title;
final Color color;
final VoidCallback onPress;
const MyButton({super.key, 
required this.title, 
this.color = const Color(0xffa5a5a5),
required this.onPress,
}); // if do not want to required then use this.title = "xyz";
 
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(title,style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
      ),
    );
          
  }
}