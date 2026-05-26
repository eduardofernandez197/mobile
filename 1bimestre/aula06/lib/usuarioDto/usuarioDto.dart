class Usuariodto {

  final String nome;
  final String zipcode;

  Usuariodto(this.nome, this.zipcode);

  factory Usuariodto.fromJson(Map json){
    return Usuariodto(json ['name'],json['address']['zipcode']);
  }
}