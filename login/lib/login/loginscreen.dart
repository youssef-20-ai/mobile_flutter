import 'package:flutter/material.dart';
import 'package:login/shared/components/components.dart';

class loginscreen extends StatefulWidget {
  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  var controller_email = TextEditingController();

  var controller_password = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  default_textfield(
                    Controller: controller_email,
                    type: TextInputType.emailAddress,
                    validator: 'Email must not be empty',
                    labeltext: 'Email address',
                    prefix: Icons.email,
                    onchange: (value){
                      print(value);
                    },
                    onsumitted: (value){
                      print(value);
                    }
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  default_textfield(
                      Controller: controller_password,
                      type: TextInputType.visiblePassword,
                      onchange: (value){
                        print(value);
                      },
                      onsumitted: (value){
                        print(value);
                      },
                      ispassword: visible,
                      validator: 'password must not be empty',
                      labeltext: 'password',
                      prefix: Icons.email,
                      suffix: visible ? Icons.visibility : Icons.visibility_off,
                      suffixpressed: () {
                        setState(() {
                          visible = !visible;
                        });
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  default_button(
                      color: Colors.blue,
                      width: double.infinity,
                      function: () {
                        if (formkey.currentState != null && formkey.currentState!.validate()) {
                          print(controller_email.text);
                          print(controller_password.text);
                        }
                      },
                      text: 'LOGIN'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(fontSize: 17),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Register Now',
                            style: TextStyle(fontSize: 17),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
