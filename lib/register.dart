import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: Myregister(),
    );
  }
}

class Myregister extends StatefulWidget {
  const Myregister({Key? key}) : super(key: key);

  @override
  State<Myregister> createState() => _MyregisterState();
}




class _MyregisterState extends State<Myregister> {

  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';


  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      debugPrint(_userName);
      debugPrint(_password);
      debugPrint(_confirmPassword);

      @override
      Widget build(BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/LOG.jpg'), fit: BoxFit.cover)),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(top: 160, left: 30, right: 20),
                    child: Text(
                      "FRESH FOOD ENTERPRISE'S",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'calistoga'),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 45,
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 120, top: 180),
                  ),
                ),
                SingleChildScrollView(

                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery
                            .of(context)
                            .size
                            .height * 0.4,
                        right: 35,
                        left: 35),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Email'),
                          validator: (value) {
                            if (value == null || value
                                .trim()
                                .isEmpty) {
                              return 'Please enter your email address';
                            }
                            // Check if the entered email has the right format
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            // Return null if the entered email is valid
                            return null;
                          },
                          onChanged: (value) => _userEmail = value,
                        ),

                        /// username
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Username'),
                          validator: (value) {
                            if (value == null || value
                                .trim()
                                .isEmpty) {
                              return 'This field is required';
                            }
                            if (value
                                .trim()
                                .length < 4) {
                              return 'Username must be at least 4 characters in length';
                            }
                            // Return null if the entered username is valid
                            return null;
                          },
                          onChanged: (value) => _userName = value,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Password'),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value
                                .trim()
                                .isEmpty) {
                              return 'This field is required';
                            }
                            if (value
                                .trim()
                                .length < 8) {
                              return 'Password must be at least 8 characters in length';
                            }
                            // Return null if the entered password is valid
                            return null;
                          },
                          onChanged: (value) => _password = value,
                        ),

                        /// Confirm Password
                        TextFormField(
                          decoration:
                          const InputDecoration(labelText: 'Confirm Password'),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }

                            if (value != _password) {
                              return 'Confimation password does not match the entered password';
                            }

                            return null;
                          },
                          onChanged: (value) => _confirmPassword = value,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.green,
                                child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }
  }
}

