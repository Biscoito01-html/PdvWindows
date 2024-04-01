class Fornecedores {
  int? id;
  String? razaoSocial;
  String? nomeFantasia;
  String? cnpj;
  String? inscricaoEstadual;
  String? inscricaoMunicipal;
  String? tipoRegime;
  String? crt;
  DateTime? dataConstituicao;
  String? tipo;
  String? email;
  String? logradouro;
  String? numero;
  String? complemento;
  String? cep;
  String? bairro;
  String? cidade;
  String? uf;
  String? fone;
  String? contato;
  int? codigoIbgeCidade;
  int? codigoIbgeUf;
  String? registrado;
  String? naturezaJuridica;
  String? simei;
  String? emailPagamento;
  DateTime? dataRegistro;
  String? horaRegistro;

  Fornecedores({
    this.id,
    this.razaoSocial,
    this.nomeFantasia,
    this.cnpj,
    this.inscricaoEstadual,
    this.inscricaoMunicipal,
    this.tipoRegime,
    this.crt,
    this.dataConstituicao,
    this.email,
    this.logradouro,
    this.numero,
    this.complemento,
    this.cep,
    this.bairro,
    this.cidade,
    this.uf,
    this.fone,
    this.contato,
    this.codigoIbgeCidade,
    this.codigoIbgeUf,
    this.registrado,
    this.naturezaJuridica,
    this.simei,
    this.emailPagamento,
  });

  Fornecedores.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    razaoSocial = json['razaoSocial'];
    nomeFantasia = json['nomeFantasia'];
    cnpj = json['cnpj'];
    inscricaoEstadual = json['inscricaoEstadual'];
    inscricaoMunicipal = json['inscricaoMunicipal'];
    tipo = json['tipo'];
    email = json['email'];
    logradouro = json['logradouro'];
    numero = json['numero'];
    complemento = json['complemento'];
    cep = json['cep'];
    bairro = json['bairro'];
    cidade = json['cidade'];
    uf = json['uf'];
    fone = json['fone'];
    contato = json['contato'];
    codigoIbgeCidade = json['codigoIbgeCidade'];
    codigoIbgeUf = json['codigoIbgeUf'];

    registrado = json['registrado'];
    naturezaJuridica = json['naturezaJuridica'];
    simei = json['simei'];
    emailPagamento = json['emailPagamento'];
  }

  Map<String, dynamic> get fromJson {
    Map<String, dynamic> jsonDados = <String, dynamic>{};
    jsonDados['id'] = id;
    jsonDados['razaoSocial'] = razaoSocial;
    jsonDados['nomeFantasia'] = nomeFantasia;
    jsonDados['cnpj'] = cnpj;
    jsonDados['inscricaoEstadual'] = inscricaoEstadual;
    jsonDados['inscricaoMunicipal'] = inscricaoMunicipal;
    jsonDados['tipo'] = tipo;
    jsonDados['email'] = email;
    jsonDados['logradouro'] = logradouro;
    jsonDados['numero'] = numero;
    jsonDados['complemento'] = complemento;
    jsonDados['cep'] = cep;
    jsonDados['bairro'] = bairro;
    jsonDados['cidade'] = cidade;
    jsonDados['uf'] = uf;
    jsonDados['fone'] = fone;
    jsonDados['contato'] = contato;
    jsonDados['codigoIbgeCidade'] = codigoIbgeCidade;
    jsonDados['codigoIbgeUf'] = codigoIbgeUf;

    jsonDados['registrado'] = registrado;
    jsonDados['naturezaJuridica'] = naturezaJuridica;
    jsonDados['simei'] = simei;
    jsonDados['emailPagamento'] = emailPagamento;

    return jsonDados;
  }
}
