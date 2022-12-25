import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                height: 200,
                top: 0,
                child: Image.asset('assets/images/signup_top.png'),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset('assets/images/main_bottom.png'),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 26,
                          fontFamily: 'Courgette',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SvgPicture.asset('assets/icons/signup.svg'),
                    SizedBox(
                      height: 30,
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
                        'Register',
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
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do you have an acconet,',
                          style: TextStyle(color: Colors.purple[200]),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.popAndPushNamed(context, 'login');
                          },
                          child: Text(
                            'login from here',
                            style: TextStyle(
                                color: Colors.purple[400],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 280,
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            'OR',
                            style: TextStyle(color: Colors.purple[600]),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(255, 208, 116, 224),
                            ),
                          ),
                          child: SvgPicture.asset(
                            height: 30,
                            width: 30,
                            'assets/icons/google-plus.svg',
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(255, 208, 116, 224),
                            ),
                          ),
                          child: SvgPicture.asset(
                            height: 30,
                            width: 30,
                            'assets/icons/twitter.svg',
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    )
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
