void main() {}

class Pessoa {
  String nome_completo;
  int idade;
  bool gostaDeCulturaPop;

  Pessoa({
    required this.nome_completo,
    required this.idade,
    required this.gostaDeCulturaPop,
  });

  Map<String, dynamic> classeParaMap() {
    Map<String, dynamic> conversion = {};
    conversion['Nome'] = this.nome_completo;
    conversion['Idade'] = this.idade;
    conversion['Fã de cultura POP'] = this.gostaDeCulturaPop;

    return conversion;
  }
}
