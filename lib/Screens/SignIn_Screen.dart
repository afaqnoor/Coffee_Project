import 'dart:ffi';

import 'package:coffe_project/Screens/HomeScreen.dart';
import 'package:coffe_project/Screens/SignUp_Screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}
class _Sign_InState extends State<Sign_In> {
  bool isObscure = true;
  final _formKey = GlobalKey<FormState>();
  final _FormKey  =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          child: Stack(children: [
            Image.asset(
              'Assets/Images/SignIn.jpg',
              color: Colors.black26,
              colorBlendMode: BlendMode.darken,
              filterQuality: FilterQuality.high,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
             Padding(
              padding: EdgeInsets.only(left: 30.0,top: 350,right: 30),
              child: SingleChildScrollView(
                child: Column(
                  children:  [
                    const Text('Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      color: Colors.orangeAccent,
                    ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Form(
                      key: _formKey,
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Please Enter Your UserName';
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white38,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white38,width: 1.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'User Name',
                          hintStyle: const TextStyle(
                            color: Colors.white38,
                            fontSize: 20,
                          ),
                          suffixIcon: const Icon(Icons.person,
                          color: Colors.white,),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _FormKey,
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Please Enter Passwrod';
                          }
                          else{
                            return null;
                          }
                        },
                        obscureText: isObscure,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white38,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white38,width: 1.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            color: Colors.white38,
                            fontSize: 20,
                          ),
                          suffixIcon:IconButton( icon: Icon(isObscure ? Icons.visibility_sharp
                          : Icons.visibility_off_sharp,color: Colors.white,),
                          onPressed: (){
                            setState(() {
                              isObscure = ! isObscure;
                            });
                           },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                       InkWell(
                         onTap : (){
                           if(_formKey.currentState !.validate()){
                             Fluttertoast.showToast(msg: 'Successfully',
                             toastLength: Toast.LENGTH_SHORT,
                             gravity: ToastGravity.BOTTOM,
                             backgroundColor: Colors.orangeAccent,
                             textColor: Colors.white,
                             fontSize: 15);
                           }else{
                             return null;
                           }
                           if(_FormKey.currentState!.validate()){
                           }else{
                             return null;
                           }
                          Navigator.push(context, MaterialPageRoute(
                            builder: (ctx)=> const HomeScreen(),
                          ),
                          );
                         },
                         child: Container(
                           height: 70,
                           width: 130,
                           decoration: BoxDecoration(
                             color: Colors.orangeAccent,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child:const Center(
                             child: Text('Sign In',
                             style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.w800,
                               color: Colors.white,
                               fontStyle: FontStyle.italic,
                             ),),
                           ),
                         ),
                       ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (ctx)=>SignUp(),
                            ),
                            );
                          },
                          child: Container(
                            height: 70,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text('Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              ),),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]),
      ),
    );
  }
}
