import 'package:flutter/material.dart';
import 'package:login_singup_page/page/singup_page.dart';
import 'package:login_singup_page/widgets/password.dart';
import 'package:login_singup_page/widgets/textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.png'), fit: BoxFit.fitWidth)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 35, left: 35),
                  child: Text('Welcome \n Back',
                      style: TextStyle(color: Colors.white, fontSize: 35)),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4,
                        left: 40,
                        right: 40),
                    child: Column(
                      children: [
                        CustomTextField(
                          hintText: 'Enter your Email',
                          lavelText: 'Email',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PassWordFild(
                          hintText: 'Enter your password',
                          lavelText: 'Password',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sing in",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_circle_right,
                                    size: 45,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SingupPage()));
                                },
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forget Password',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
