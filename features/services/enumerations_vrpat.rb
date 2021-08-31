# frozen_string_literal: true

# classe contendo as requisicoes da API de consulta de informacoes de produtos e estabelecimentos
class ApiEnumerationsVrpat
  include HTTParty

  base_uri 'https://portal.vr.com.br/api-web'

  def info_products
    self.class.get('/comum/enumerations/VRPAT', verify: false)
  end
end
