import 'package:aluga/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'adicionar_aluguel.dart';
import 'meus_alugueis.dart';

//dimensões iphone 12 pro 390 x 844
//final largura_Tela = MediaQuery.of(context).size.width;
//final altura_Tela = MediaQuery.of(context).size.height; //testar
//final altura_Botao = altura_Tela - 90,625%;
//final largura_botao = (length('Inserir o texto aqui') x tamanho_Texto) 17 963 64,6936656% 340 35,3063344% //incompleto
//final altura_AppBar = altura_Tela - 90,625%;
//final largura_AppBar = largura_Tela;
//final tamanho_Titulo = altura_Tela - 96,875%;
//final tamanho_Texto = altura_Tela - 96,875%;
//

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));//(altura x largura (do botão)) - 99,988%

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60.0,// altura (da tela) - 90,625%
          title: Text(widget.title), //aplica o título
          centerTitle: true,// centraliza o título
          //colocar o tamanho do título //(altura (da tela) - 96,875%)
          //diria para colocar o mesmo tamanho da fonte do botão, mas como não teria sido calculado até então, preferi fazer o calculo para o título
        ),
        body: Center(//centraliza os widgets a seguir
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const SizedBox(height: 50),//altura (da tela) - 97,39%
              Container(
                width: 350.0,//largura (da tela) - 10,8% //tem que ser determinado pelo tamanho do texto 20px e do icone 50/60 juntos
                height: 100.0,//altura (da tela) - 90,625%
                  child: ElevatedButton.icon(//adiciona um botão que pode ter um icone
                  label: const Text('ADICIONAR ALUGUEL'),//aplica o texto do botão
                  icon: const Icon(//aplica o ícone
                    Icons.house,//determina o tipo do ícone
                    size: 50.0,//(altura x largura (do botão)) - 99,946382%
                    color: Color.fromARGB(255, 0, 230, 118),//aplica a cor do ícone
                  ),
                  style: ElevatedButton.styleFrom(//estilo dos componentes do botão
                    onPrimary: Colors.black, // muda a cor das letras do botao
                    primary: Colors.white, // muda a cor do fundo do botão
                    shape: const RoundedRectangleBorder( // arredonda as bordas
                      borderRadius: BorderRadius.all(Radius.circular(100.0)), //(altura (do botão)) - 44%
                      side: BorderSide(color: Color.fromARGB(255, 0, 230, 118), width: 9), // coloca cor e determina a grossura da borda //(altura (do botão) - 95%)
                    ),
                    textStyle: const TextStyle(fontSize: 20),//(altura (da tela)) - 96,875%
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Pag2()), //se pressionado, muda para outra página (onde tá essa declaração de pag2?)
                    );
                  },
                ),
                
              ),
              const SizedBox(height: 50),//altura (da tela) - 97,39%
              Container(
                width: 310.0, //largura (da tela) - 21% //tem que ser determinado pelo tamanho do texto
                height: 100.0, //altura (da tela) - 90,625%
                child: ElevatedButton.icon( //adiciona o botão que pode ter um ícone
                  label: const Text('MEUS ALUGUEIS'),//aplica o texto do botão
                  icon: const Icon(//aplica o ícone do botão
                    Icons.list,//determina o tipo do botão
                    size: 60, //153540 //(altura x largura (do botão) - 99,9257%)
                    color: Color.fromARGB(255, 0, 230, 118),//aplica a cor do icone
                  ),
                  style: ElevatedButton.styleFrom(//estilo dos componentes do botão
                    onPrimary: Colors.black, // muda a cor das letras do botao
                    primary: Colors.white,//aplica a cor do fundo do botão
                    shape: const RoundedRectangleBorder( //arredonda as bordas do botão
                      borderRadius: BorderRadius.all(Radius.circular(100.0)), //altura (do botão) - 44%
                      side: BorderSide(color: Colors.green, width: 9),// altura (do botão) - 95%
                    ),
                    textStyle: const TextStyle(fontSize: 20),//altura (da tela) - 96,875%
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
