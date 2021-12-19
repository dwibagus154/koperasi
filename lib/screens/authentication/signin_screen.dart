import 'package:flutter/material.dart';
import 'package:koperasi/koperasi.dart';
import 'package:koperasi/screens/welcome/onboarding_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg-app.png'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: 128,
                          height: 128,
                          margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                          child: Image.asset(
                              'assets/images/koperasi_indonesia-logo.png')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: Container(
                      width: 350,
                      height: 300,
                      child: Column(
                        children: [
                          Text(
                            'Koperasi',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text('Masukkan username dan password anda'),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.lightBlue, width: 2.0),
                                      borderRadius:
                                          BorderRadius.circular(28.0)),
                                  hintText: 'Username',
                                  filled: true,
                                  fillColor: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  //border: OutlineInputBorder(borderRadius: BorderRadius.circular(28.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.lightBlue, width: 2.0),
                                      borderRadius:
                                          BorderRadius.circular(28.0)),
                                  hintText: 'Password',
                                  filled: true,
                                  fillColor: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                            child: SizedBox(
                              height: 50,
                              width: 370,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: BorderSide(color: Colors.blueAccent),
                                ))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => koperasi()));
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ) // child widget, replace with your own
                    ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
