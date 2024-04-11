class Fornecedores {
  final int _id;
  final String _razaoSocial;
  final String _nomeFantasia;
  final String _cnpj;
  final String _tipo;
  final String _email;
  final String _logradouro;
  final String _numero;
  final String _complemento;
  final String _cep;
  final String _bairro;
  final String _cidade;

  Fornecedores({
    required int id,
    required String razaoSocial,
    required String nomeFantasia,
    required String cnpj,
    required String tipo,
    required String email,
    required String logradouro,
    required String numero,
    required String complemento,
    required String cep,
    required String bairro,
    required String cidade,
  })  : _id = id,
        _razaoSocial = razaoSocial,
        _nomeFantasia = nomeFantasia,
        _cnpj = cnpj,
        _tipo = tipo,
        _email = email,
        _logradouro = logradouro,
        _numero = numero,
        _complemento = complemento,
        _cep = cep,
        _bairro = bairro,
        _cidade = cidade;

  int get id => _id;
  String get razaoSocial => _razaoSocial;
  String get nomeFantasia => _nomeFantasia;
  String get cnpj => _cnpj;
  String get tipo => _tipo;
  String get email => _email;
  String get logradouro => _logradouro;
  String get numero => _numero;
  String get complemento => _complemento;
  String get cep => _cep;
  String get bairro => _bairro;
  String get cidade => _cidade;

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'razaoSocial': _razaoSocial,
      'nomeFantasia': _nomeFantasia,
      'cnpj': _cnpj,
      'tipo': _tipo,
      'email': _email,
      'logradouro': _logradouro,
      'numero': _numero,
      'complemento': _complemento,
      'cep': _cep,
      'bairro': _bairro,
      'cidade': _cidade,
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'id': _id,
      'razaoSocial': _razaoSocial,
      'nomeFantasia': _nomeFantasia,
      'cnpj': _cnpj,
      'tipo': _tipo,
      'email': _email,
      'logradouro': _logradouro,
      'numero': _numero,
      'complemento': _complemento,
      'cep': _cep,
      'bairro': _bairro,
      'cidade': _cidade,
    };
  }

  @override
  String toString() {
    return "Fornecedores( id : $_id, razaoSocial : $_razaoSocial, nomeFantasia : $_nomeFantasia, cnpj : $_cnpj, tipo : $_tipo, email : $_email, logradouro : $_logradouro, numero : $_numero, complemento : $_complemento, cep : $_cep, bairro : $_bairro, cidade : $_cidade )";
  }
}
