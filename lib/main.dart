import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_form/login.dart';
import 'package:login_form/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        'login': (context) => login(),
        'register': (context) => register()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  'assets/images/main_bottom.png',
                  height: 200,
                ),
                bottom: 0,
                left: 0,
              ),
              Positioned(
                top: 0,
                child: Image.asset(
                  'assets/images/main_top.png',
                  height: 250,
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 26,
                          fontFamily: 'Courgette',
                        ),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/chat.svg',
                    height: 370,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 22),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(8)),
                      fixedSize: MaterialStateProperty.all(
                        Size.fromWidth(200),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[200]),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 22),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(8)),
                      fixedSize: MaterialStateProperty.all(
                        Size.fromWidth(200),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[500]),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
