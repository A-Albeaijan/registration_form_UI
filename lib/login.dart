import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Image.asset(
                  'assets/images/main_top.png',
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/login_bottom.png',
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 26,
                          fontFamily: 'Courgette',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SvgPicture.asset('assets/icons/login.svg'),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.purple,
                            ),
                            hintText: 'email',
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.purple,
                            ),
                            hintText: 'password',
                            border: InputBorder.none),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'login',
                        style: TextStyle(fontSize: 22),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(8)),
                        fixedSize: MaterialStateProperty.all(
                          Size.fromWidth(150),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[500]),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do not have an acconet,',
                          style: TextStyle(color: Colors.purple[200]),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.popAndPushNamed(context, 'register');
                          },
                          child: Text(
                            'Register from here',
                            style: TextStyle(
                                color: Colors.purple[400],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
