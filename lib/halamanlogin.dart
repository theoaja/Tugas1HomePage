import 'package:flutter/material.dart';
import 'package:flutter_application_1/css.dart';
import './Homepage.dart';

class Desainhalamanlogin extends StatefulWidget {
  const Desainhalamanlogin({super.key});

  @override
  State<Desainhalamanlogin> createState() => _DesainhalamanloginState();
}

class _DesainhalamanloginState extends State<Desainhalamanlogin> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Login"),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Color.fromARGB(255, 9, 245, 99),
      body: Form(
          key: formkey,
          child: Center(
            child: Container(
              width: 385,
              height: 400,
              child: Card(
                elevation: 10,
                shadowColor: const Color.fromARGB(255, 0, 0, 0),
                color: const Color.fromARGB(255, 246, 219, 42),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: cUser,
                        decoration: InputDecoration(
                            //border: InputBorder.none,
                            labelText: 'username',
                            labelStyle:
                                TextStyle(fontSize: 15, fontWeight: bold),
                            hintText: "exp: theo@gmail.com",
                            hintStyle: TextStyle(color: Colors.blue),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'user masih kosong';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true, // hide tampilan password
                        controller: cPass,
                        decoration: InputDecoration(
                          //border: InputBorder.none,
                          labelText: 'Input Password',
                          labelStyle: TextStyle(fontSize: 15, fontWeight: bold),
                          hintText: "********",
                          hintStyle: TextStyle(color: Colors.blue),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'password masih kosong';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 4, 169, 224)),
                            ),
                            onPressed: () {
                              String tUser = cUser.text; // deklarasi username
                              String tPass = cPass.text;
                              if (formkey.currentState!.validate()) {
                                if (tUser == 'Dimas' && tPass == '123210022') {
                                  //perintah halaman berikutnya
                                  Navigator.push(
                                      //navigator ke halaman utama
                                      context,
                                      MaterialPageRoute(
                                        builder: (cotext) => HomePage(),
                                      ));
                                }
                                else if (tUser == 'Yuda' && tPass == '123210181') {
                                  //halaman next
                                  Navigator.push(
                                      //navigator ke halaman utama
                                      context,
                                      MaterialPageRoute(
                                        builder: (cotext) => HomePage(),
                                      ));
                                } else {
                                  showDialog(
                                      //pop up pemberitahuan
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text('konfirmasi login'),
                                          content:
                                              Text('User atau Password Salah'),
                                          actions: [
                                            //aksi ketika pw salah
                                            ElevatedButton(
                                                onPressed: () {
                                                  cUser.text =
                                                      ''; //hide usm kembali
                                                  cPass.text = '';
                                                  Navigator.of(context)
                                                      .pop(); // navigator ke halaman login apabila salah
                                                },
                                                child: Text('OK'))
                                          ],
                                        );
                                      });
                                }
                              }
                            },
                            child: Text(
                              "LOGIN",
                              style: TextStyle(fontSize: 15, fontWeight: bold),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
