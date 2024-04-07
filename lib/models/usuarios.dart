class Usuarios {
  final String _id;
  final String _nome;
  final String _email;
  final String _senha;
  final String _celular;
  final String _nascimento;

  Usuarios({
    required String id,
    required String nome,
    required String email,
    required String senha,
    required String celular,
    required String nascimento,
  })  : _id = id,
        _nome = nome,
        _email = email,
        _senha = senha,
        _celular = celular,
        _nascimento = nascimento;

  String get id => _id;
  String get nome => _nome;
  String get email => _email;
  String get senha => _senha;
  String get celular => _celular;
  String get nascimento => _nascimento;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    data['email'] = email;
    data['senha'] = senha;
    data['celular'] = celular;
    data['nascimento'] = nascimento;
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'senha': senha,
      'celular': celular,
      'nascimento': nascimento
    };
  }

  @override
  String toString() {
    return 'Usuarios{ id: $id, nome: $nome, email: $email, senha: $senha, celular: $celular, nascimento: $nascimento}';
  }
}

void main(List<String> args) {
  var user = Usuarios(
    id: "2",
    nome: "Nome",
    email: "Email",
    senha: "Senha",
    celular: "Celular",
    nascimento: "Nascimento",
  );

  print(user.toJson());
  print(user.toMap());
}
