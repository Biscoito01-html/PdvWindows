class Usuarios {
  String? nome;
  String? email;
  String? senha;
  String? celular;
  String? nascimento;

  Usuarios(this.nome, this.email, this.senha, this.celular, this.nascimento);

  Usuarios.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    email = json['email'];
    senha = json['senha'];
    celular = json['celular'];
    nascimento = json['nascimento'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    data['email'] = email;
    data['senha'] = senha;
    data['celular'] = celular;
    data['nascimento'] = nascimento;
    return data;
  }
}
