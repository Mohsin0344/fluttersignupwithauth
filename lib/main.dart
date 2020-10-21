import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersignupwithauth/homscreen.dart';
import 'package:fluttersignupwithauth/registration.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignupPage());
  }
}

class SignupPage extends StatefulWidget {


  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String text="";
final username=TextEditingController();

final password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Dite Guru",
                        style: TextStyle(fontSize: 65, color: Colors.white),
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 80,
                        endIndent: 80,
                        thickness: 1,
                      ),
                      Text(
                        "Fill the below Information to Login",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .80,
                    height: MediaQuery.of(context).size.height * .50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Container(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Center(
                              child: Text(
                                "Login Account",
                                style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 15, right: 15, bottom: 0, top: 15),
                            child: TextField(
                              controller:username,
                              decoration:
                                  InputDecoration(hintText: 'Enter User Name'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 15, right: 15, bottom: 0, top: 4),
                            child: TextField(
                              obscureText: true,
                              controller: password,
                              decoration:
                                  InputDecoration(hintText: 'Enter Password'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 17),
                            child: InkWell(
                              child: Text(
                                "Register",
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Registration()));
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right:62,left:32,top:10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '$text',
                                style: TextStyle(
                                  color: Colors.red
                                ),
                              ),
                            ),

                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 50, right: 15, left: 15, bottom: 0),
                            child: Container(
                              width: 250,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueAccent,
                              ),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  "Login",
                                ),
                                color: Colors.blueAccent,
                                onPressed: () async{

                                  try {


                                    dynamic userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                        email: username.text,
                                        password: password.text
                                    );
                                    if(userCredential!=null){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => HomePage()),);

                                    }
                                    print(userCredential);
                                  }
                                  on FirebaseAuthException catch (e) {
                                    if (e.code == "user-not-found") {
                                      print('User not found');
                                      setState(() {
                                        text='User not found';
                                      });

                                    }
                                    else if(e.code == "wrong-password"){
                                      print('Wrong password');
                                      setState(() {
                                        text='Enter correct password';
                                      });
                                    }





                                    // else{

                                    // }
                                  }

                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
