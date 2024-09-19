import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
bool isObscureText = true;

   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child:  Column(
                children: [

                  SizedBox(height: 10,),
                  Text("Sign In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        TextFormField(



                          keyboardType:  TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              const BorderSide(color: Color(0xffDDDDDD), width: 1),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),

                            hintStyle:TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                              hintText: "Email Address",

                            fillColor: Colors.white,
                            filled: true,
                          ),

                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your email address';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18),

                        TextFormField(



                          keyboardType:  TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              const BorderSide(color: Color(0xffDDDDDD), width: 1),
                            ),
                            contentPadding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),

                            hintStyle:TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                            hintText: "Password",
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          obscureText: isObscureText ,

                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your password';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Navigator.pushNamed(context, '/home');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        )
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: Text(
                      "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                  ),
                ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {

                    },
                    child: Text("Forget Password?",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      )
                    ),
                  ),
                  SizedBox(height: 21),


                ],
              ),
            ),
          ),
        )
    );
  }
}