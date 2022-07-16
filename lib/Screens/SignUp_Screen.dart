import 'dart:ffi';

import 'package:coffe_project/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formkey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _formkey3 = GlobalKey<FormState>();
  final _formkey4 = GlobalKey<FormState>();
  bool Obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset('Assets/Images/SignIn.jpg',
                  color: Colors.black38,
                  colorBlendMode: BlendMode.darken,
                  filterQuality: FilterQuality.high,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Sign Up',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 26,
                              color: Colors.orangeAccent,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Form(
                              key: _formkey1,
                              child: TextFormField(
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Plzz Enter User Name';
                                  }
                                  return null;
                                },
                                decoration:  InputDecoration(
                                   fillColor: Colors.white38,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Colors.white38,width: 1.5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Colors.white38,width: 1.5),
                                  ),
                                  hintText: 'User Name',
                                  hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20),

                                  suffixIcon : const Icon(Icons.person,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 18,right: 18,bottom: 18),
                            child: Form(
                              key: _formKey2,
                              child: TextFormField(
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Plzz Enter Emial';
                                  }
                                  return null;
                                },
                                decoration:  InputDecoration(
                                   fillColor: Colors.white38,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  hintText: 'Email',
                                  hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                  suffixIcon : const Icon(Icons.email_outlined,
                                  color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 18,right: 18,bottom: 18),
                            child: Form(
                              key: _formkey3,
                              child: TextFormField(
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Plzz Enter Password';
                                  }
                                  return null;
                                },
                                obscureText: Obscure,
                                decoration:  InputDecoration(
                                   fillColor: Colors.white38,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Colors.white38,width: 1.5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Colors.white38,width: 1.5),
                                  ),
                                  hintText: 'Password',
                                  hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                  suffixIcon : IconButton(
                                    icon: Icon(Obscure ? Icons.visibility_sharp
                                        : Icons.visibility_off_sharp,color: Colors.white,),
                                    onPressed: (){
                                      setState((){
                                        Obscure = ! Obscure;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 18,right: 18,bottom: 18),
                            child: Form(
                              key: _formkey4,
                              child: TextFormField(
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Plzz Enter Number ';
                                  }
                                  return null;
                                },
                                decoration:  InputDecoration(
                                   fillColor: Colors.white38,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Colors.white38,width: 1.5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Colors.white38,width: 1.5),
                                  ),
                                  hintText: 'Phone Number',
                                  hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),
                                  suffixIcon : Icon(Icons.phone,color: Colors.white,),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    if(_formkey1.currentState!.validate()){
                                      Fluttertoast.showToast(msg: 'Successfully',
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: Colors.orangeAccent,
                                      fontSize: 15);
                                    }else{
                                      return null;
                                    }
                                    if(_formKey2.currentState!.validate()){
                                      return null;
                                    }
                                    if(_formkey3.currentState!.validate()){

                                      return null;
                                    }
                                    if(_formkey4.currentState!.validate()){
                                      return null;
                                    }
                                    Navigator.push(
                                      context, MaterialPageRoute(
                                      builder: (ctx)=>HomeScreen(),
                                    ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 80.0,top: 40),
                                    child: Container(
                                      height: 50,
                                      width: 130,
                                      // color: Colors.white,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(300),
                                      ),
                                      child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 25.0,top: 11),
                                              child: Row(
                                                children: const [
                                                  Text('SignUp',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Icon(Icons.arrow_forward,color: Colors.white,),
                                                ],
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ],
        )
      ),
    );
  }
}
