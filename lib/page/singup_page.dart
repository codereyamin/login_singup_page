import 'package:flutter/material.dart';
import 'package:login_singup_page/page/login_page.dart';
import 'package:login_singup_page/widgets/password.dart';
import 'package:login_singup_page/widgets/textField.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({Key? key}) : super(key: key);

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/register.png'),
                fit: BoxFit.fitWidth)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 35, left: 35),
                  child: Text('Create \nAcucount',
                      style: TextStyle(color: Colors.white, fontSize: 35)),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.3,
                        // top: 50,
                        left: 40,
                        right: 40),
                    child: Column(
                      children: [
                        CustomTextField(
                          hintText: 'Enter your Name',
                          lavelText: 'Name',
                        ),
                        SizedBox(
                          height: 20,
                        ),
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
                                "Sing up",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => LoginPage()));
                                  },
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                            Flexible(
                              child: Container(),
                              flex: 2,
                            ),
                            SizedBox(
                              height: 20,
                            )
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
