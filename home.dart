import 'package:aluga/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'adicionar_aluguel.dart';
import 'meus_alugueis.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60.0,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const SizedBox(height: 50),
              Container(
                width: 350.0,
                height: 100.0,
                  child: ElevatedButton.icon(
                  label: const Text('ADICIONAR ALUGUEL'),
                  icon: const Icon(
                    Icons.house,
                    size: 50.0,
                    color: Color.fromARGB(255, 0, 230, 118),
                  ),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black, // muda a cor das letras do botao
                    primary: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      side: BorderSide(color: Color.fromARGB(255, 0, 230, 118), width: 9),
                    ),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Pag2()),
                    );
                  },
                ),
                
              ),
              const SizedBox(height: 50),
              Container(
                width: 310.0,
                height: 100.0,
                child: ElevatedButton.icon(
                  label: const Text('MEUS ALUGUEIS'),
                  icon: const Icon(
                    Icons.list,
                    size: 60,
                    color: Color.fromARGB(255, 0, 230, 118),
                  ),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black, // muda a cor das letras do botao
                    primary: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      side: BorderSide(color: Colors.green, width: 9),
                    ),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                  
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pag3()),
              ); 
                  }
                ),
              ),
            ],
          ),
        ));
  }
}