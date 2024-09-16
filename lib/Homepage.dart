import 'package:flutter/material.dart';
import 'package:flutter_application_1/css.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas Berikutnya'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          width: 385,
          height: 400,
          child: Card(
            elevation: 10,
            shadowColor: const Color.fromARGB(255, 0, 0, 0),
            child: Center(
              child: Column(
                children: [
                  Text('Selamat Anda Berhasil Login!'),
                  SizedBox(height: 50,),
                  Text('NAMA : THEO SAMPANG BERASA', style: TextStyle(fontSize: 15, fontWeight: bold),
                  ),
                  Text('NIM : 124220135',
                  style: TextStyle(fontSize: 15, fontWeight: bold),
                  ),
                ],
              )
              
              ),
              
          ),

        ),
      ),
    );
  }
}
