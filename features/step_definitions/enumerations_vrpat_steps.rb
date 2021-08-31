# frozen_string_literal: true

Quando('enviar uma requisição GET para a API de consulta de produtos e estabelecimentos') do
  @response = ApiEnumerationsVrpat.new.info_products
end

Entao('a API retorna o status code {int}') do |status_code|
  expect(@response.code).to eql(status_code), request_info(@response)
end

Entao('retorna os dados dos estabelecimentos') do
  step 'a API retorna o status code 200'
  expect(@response).to match_json_schema('info_products_schema')
  random_obj_establishment = @response.parsed_response['typeOfEstablishment'].sample
  random_establishment = "Informações de um dos estabelecimentos\n" \
                         "'Chave': #{random_obj_establishment['key']}\n" \
                         "'Nome': #{random_obj_establishment['name']}\n" \
                         "'Rótulo': #{random_obj_establishment['label']}"
  puts random_establishment
end
