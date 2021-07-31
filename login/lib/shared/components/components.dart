import 'package:flutter/material.dart';
import 'package:login/login/loginscreen.dart';
Widget default_button ({

 required Color color ,
 required double width ,
  required Function function,
  required String text ,


}) => Container(
  color: color,
  width: width,
  child: MaterialButton(
    onPressed: (){
      if(function != null)
        {
          function();
        }
    },
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 23,
      ),
    ),
  ),
);


Widget default_textfield({

  required TextEditingController Controller,
  required TextInputType type,
  bool ispassword = false,
  Function? onsumitted,
  Function? onchange,
  required String validator,
  required String labeltext,
  required IconData prefix,
  IconData? suffix,
  Function? suffixpressed,


} ) => TextFormField(
  controller: Controller,
  keyboardType: type,
  obscureText: ispassword,
  onFieldSubmitted: (value){
    if(onsumitted != null)
      {
        onsumitted(value);
      }
  },
  onChanged: (value){
      if(onchange != null)
        {
          onchange(value);
        }
      },
  validator: (String?  value){
      if(value == null || value.trim().length == 0)
      {
        return validator;
      }
      return null;
  },
  decoration: InputDecoration(
      labelText: labeltext,
      border: OutlineInputBorder(),
      prefixIcon: Icon(prefix),
      suffixIcon: IconButton(
          onPressed: (){
              if(suffixpressed != null)
                {
                  suffixpressed();
                }
          },
          icon: Icon(suffix))
  ),

);