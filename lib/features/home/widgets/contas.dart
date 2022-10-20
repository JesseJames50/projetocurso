import 'package:first_app/design_system/my_images.dart';
import 'package:flutter/material.dart';

class ContaWidget extends StatelessWidget {
  final int contaId;
  final String tipo;
  final String subtipo;
  final String nome;
  const ContaWidget({
    Key? key,
    required this.contaId,
    required this.tipo,
    required this.subtipo,
    required this.nome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(tipo.substring(0, 1).toUpperCase(),
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ]),
        ),
        //const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(tipo),
              Text(subtipo),
              Text(nome),
            ],
          ),
        )
      ],
    );
  }
}
