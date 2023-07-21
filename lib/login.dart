import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),
          fit: BoxFit.cover,
         ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 130, left: 35),
              child: Text('Welcome\n Back', style: TextStyle(
                color: Colors.white,
                fontSize: 33
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
                left: 35, 
                right: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                        ),
                      )
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                        ),
                      )
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            color: Color(0xff4c505b),
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamed(context, 'home');
                            },
                          )
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: Text('Sign Up', 
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xff4c505b),
                            fontSize: 18,
                          ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('forgot password?', 
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xff4c505b),
                            fontSize: 18,
                          ),
                          ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),

        ),
    );
  }
}