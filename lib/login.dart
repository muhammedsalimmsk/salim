import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freshfood/register.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage('assets/LOG.jpg'),fit:BoxFit.cover)),
    child:
      Scaffold(
        backgroundColor:Colors.transparent,
        body:Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding:EdgeInsets.only(top:160,left:15,),
                child:
                Text("FRESH FOOD ENTERPRISE'S",
                  style: TextStyle(color:Colors.redAccent, fontSize:30,fontWeight:FontWeight.bold,fontFamily: 'calistoga'),),
              ),),

            Container(
              child:
              Text('Login',style:
              TextStyle(color:Colors.black,
                  fontSize:45,
                  fontFamily: 'Oswald',
                  fontWeight:FontWeight.bold,
                  ),),
              padding:EdgeInsets.only(left:20,top:240),

            ),
            Container(
              child:
              Text('Please sign in to continue.',style:
              TextStyle(color:Colors.grey,
                fontSize:30,
                fontFamily: 'Oswald',
                fontWeight:FontWeight.bold,
              ),),
              padding:EdgeInsets.only(left:20,top:295),

            ),
            SingleChildScrollView(
              child: Container(
                padding:EdgeInsets.only(
                  top:MediaQuery.of(context).size.height * 0.5,right: 35,left: 35
                ),
                child:Column(
                  children: [
                    TextField(
                      decoration:InputDecoration(
                        fillColor:Colors.grey,
                        filled: true,
                        hintText:'Username or Email',
                        border:OutlineInputBorder(borderRadius:BorderRadius.circular(10))),

                    ),
                    SizedBox(
                    height: 30,),
                    TextField(
                      obscureText:true ,
                        decoration:InputDecoration(
                            fillColor:Colors.grey,
                            filled: true,
                            hintText:'Password',
                            border:OutlineInputBorder(borderRadius:BorderRadius.circular(10)))
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In',style:
                        TextStyle(color:Colors.green,fontSize:27,fontWeight:FontWeight.w700),),
                        SizedBox(
                          width:5,
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.green,

                          child:IconButton(
                            color:Colors.white,
                            onPressed:(){},
                            icon:Icon(Icons.arrow_forward),
                          ),
                        )
                      ],

                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                        onPressed:(){
                          Navigator.pushNamed(context,'register');
                        },
                            child:Text('Sign Up',style:TextStyle(
                                fontSize: 15,color:Colors.black,fontWeight: FontWeight.w700,
                                decoration:TextDecoration.underline
                            ),),),
                        TextButton(onPressed: (){},
                            child:Text('Forgot Password',style:TextStyle(
                                fontSize: 15,color:Colors.black,fontWeight: FontWeight.w700,
                                decoration:TextDecoration.underline
                            ),))

                      ],
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),);
  }
}
