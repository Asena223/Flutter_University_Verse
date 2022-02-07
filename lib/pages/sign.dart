import 'package:bitirme_deneme_5/pages/homepage.dart';
import 'package:bitirme_deneme_5/pages/register.dart';
import 'package:bitirme_deneme_5/service/auth_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff082567),
        title: Text(
          'GİRİŞ YAP',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff082567), Color(0xff007FFF)])),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                              controller: _emailController,
                              style: TextStyle(
                                color: Colors.white,
                                //fontWeight: FontWeight.bold,
                              ),
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                hintText: 'Mail Hesabını Giriniz',
                                labelText: 'Mail',
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                prefixText: ' ',
                                suffixStyle:
                                    const TextStyle(color: Colors.green),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                focusColor: Colors.white,
                              )),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          TextField(
                              style: TextStyle(
                                color: Colors.white,
                                //fontWeight: FontWeight.bold,
                              ),
                              cursorColor: Colors.white,
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                hintText: 'Parola Giriniz',
                                labelText: 'Parola',
                                prefixIcon: const Icon(
                                  Icons.password_rounded,
                                  color: Colors.black,
                                ),
                                prefixText: ' ',
                                suffixStyle:
                                    const TextStyle(color: Colors.green),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                focusColor: Colors.white,
                              )),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          InkWell(
                            onTap: () {
                              _authService
                                  .signIn(_emailController.text,
                                      _passwordController.text)
                                  .then((value) {
                                return Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  //color: colorPrimaryShade,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Center(
                                    child: Text(
                                  "Giriş yap",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Georgia',
                                  ),
                                )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 1,
                                width: 15,
                                color: Colors.white,
                              ),
                              Text(
                                "Hesabın Yok Mu? Hemen Kayıt Ol",
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'Georgia'),
                              ),
                              Container(
                                height: 1,
                                width: 15,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          InkWell(
                            onTap: () {
                              _authService
                                  .signIn(_emailController.text,
                                      _passwordController.text)
                                  .then((value) {
                                return Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  //color: colorPrimaryShade,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Center(
                                    child: Text(
                                  "Kayıt Ol",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Georgia',
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
