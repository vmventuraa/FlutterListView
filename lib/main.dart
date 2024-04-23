import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListPage(),
    );
  }
}

class Contato {
  final String nome;
  final String email;

  const Contato(this.nome, this.email);
}

class ListPage extends StatelessWidget {
  
  List<Contato> contatos = [
    Contato('Victor Ventura', 'victor@gmail.com'),
    Contato('Samuel Ribeiro', 'samuca@gmail.com'),
     Contato('Maria', 'maria@gmail.com'),
    Contato('Jonas', 'jonas@gmail.com'),
     Contato('Beto', 'beto@gmail.com'),
    Contato('Samantha', 'sama@gmail.com'),
     Contato('Lu', 'lu@gmail.com'),
    Contato('Felipe', 'felipe@gmail.com'),
    Contato('Felipe', 'felipe@gmail.com'),

  ];
  
   ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView builder'),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue, 
            radius: 30,
            child: Text(contatos[index].nome[0]),
            ),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
          );
        },
      ),
    );
  }
}
