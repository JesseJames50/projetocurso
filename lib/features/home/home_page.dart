import 'dart:developer';
import 'package:flutter/material.dart';
import '../../model/contas.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/contas.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var valor = 0;

  void increment() {
    setState(() {
      valor++;
    });
  }

  @override
  Widget build(BuildContext context) {
    log('build');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...contasList
                      .map(
                        (Contas) => ContaWidget(
                            contaId: Contas.contaId,
                            tipo: Contas.tipo,
                            subtipo: Contas.subtipo,
                            nome: Contas.nome),
                      )
                      .toList(),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Row(children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      elevation: 15,
                      shadowColor: Colors.purple,
                    ),
                    onPressed: null,
                    child: const Text(
                      'Deletar',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      elevation: 15,
                      shadowColor: Colors.purple,
                    ),
                    onPressed: null,
                    child: const Text(
                      'Editar',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
