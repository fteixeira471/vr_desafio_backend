#language: pt
@info_produtos_estabelecimentos
Funcionalidade: Informações sobre Produtos e Estabelecimentos
  Como uma aplicação ->
  Quero consultar dados de produtos, estabelecimentos e outras informações

  @estabelecimentos
  Cenário: Consultar tipos de estabelecimentos
    Quando enviar uma requisição GET para a API de consulta de produtos e estabelecimentos
    Então retorna os dados dos estabelecimentos
