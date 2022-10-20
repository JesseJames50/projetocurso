class Contas {
  final int contaId;
  final String tipo;
  final String subtipo;
  final String nome;

  Contas({
    required this.contaId,
    required this.tipo,
    required this.subtipo,
    required this.nome,
  });
}

final contasList = [
  Contas(
    contaId: 1,
    tipo: 'receita',
    subtipo: 'corrente',
    nome: 'dinheiro',
  ),
  Contas(
    contaId: 2,
    tipo: 'receita',
    subtipo: 'corrente',
    nome: 'salário líquido',
  ),
  Contas(
    contaId: 3,
    tipo: 'receita',
    subtipo: 'corrente',
    nome: 'vale alimentação',
  ),
  Contas(
    contaId: 4,
    tipo: 'receita',
    subtipo: 'corrente',
    nome: 'vale alimentação',
  ),
  Contas(
    contaId: 5,
    tipo: 'receita',
    subtipo: 'corrente',
    nome: 'Banco do Brasil',
  ),
  Contas(
    contaId: 6,
    tipo: 'receita',
    subtipo: 'investimento',
    nome: 'tesouro direto',
  ),
  Contas(
    contaId: 7,
    tipo: 'receita',
    subtipo: 'investimento',
    nome: 'poupança',
  ),
  Contas(
    contaId: 8,
    tipo: 'despesa',
    subtipo: 'alimentação',
    nome: 'supermercado',
  ),
  Contas(
    contaId: 9,
    tipo: 'despesa',
    subtipo: 'moradia',
    nome: 'prestação',
  ),
  Contas(
    contaId: 10,
    tipo: 'despesa',
    subtipo: 'educação',
    nome: 'mensalidade',
  ),
  Contas(
    contaId: 11,
    tipo: 'despesa',
    subtipo: 'moradia',
    nome: 'água',
  ),
  Contas(
    contaId: 12,
    tipo: 'despesa',
    subtipo: 'moradia',
    nome: 'telefone',
  ),
  Contas(
    contaId: 13,
    tipo: 'despesa',
    subtipo: 'saúde',
    nome: 'plano de saúde',
  ),
];
