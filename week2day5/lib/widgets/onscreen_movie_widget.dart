import 'package:flutter/material.dart';

class OnScreenMovie extends StatelessWidget {

  final String image, title, id;

  OnScreenMovie({
    super.key,
    required this.image,
    required this.title,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow:[
                BoxShadow(
                    blurRadius:5,
                    offset: Offset(2,2),
                    color: Colors.black.withOpacity(0.8)
                )
              ]
          ),
          child: Image.network(image),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 170,
          child: Center(
            child: Text(title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),),
          ),),
      ],
    );
  }
}
