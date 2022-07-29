import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding : const EdgeInsets.symmetric(horizontal:25.0),
      child: Container(
                decoration : BoxDecoration(
                  color : Colors.white,
                  border : Border.all(color : Colors.white),
                  borderRadius : BorderRadius.circular(12), 
                ),
                child: Padding(
                  padding : const EdgeInsets.only(left: 20),
                  child : TextFormField(
                    decoration : InputDecoration(
                      border: InputBorder.none,
                      hintText : 'Email',
                    ),
                  ), 
                ),
              ),
    );
  }
}