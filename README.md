# **Projeto de Testes Automatizados**

Olá,

Este é um projeto para testes automatizados da API REST de consulta de produtos e estabelecimentos da **VR Benefícios**.

----
## **Tecnologias Utilizadas**
* **Ruby** (_para o desenvolvimento do script automatizado_)
* **Bundler** (_para gerenciamento das dependências do projeto_)
* **Cucumber** (_para ler as especificações dos testes escritos em Gherkin e orquestar a execução dos mesmos_)
* **HTTParty** (_para o envio das requisições_)
* **RSpec** (_para validar que as respostas das requisições são conforme esperado_)
* **JSON Schema** (_para validar a estrutura do objeto que retornou da API_)

----
## **Ferramentas Necessárias**
* [**Ruby (versão 3.0.2 com DevKit)**](https://www.ruby-lang.org/pt/documentation/installation)
* [**Git Client**](https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git)
* **Gem Bundler** - com o Ruby instalado, execute o comando abaixo no terminal:
```
$ gem i bundler
```

----
## **Executando a Automação**
1. Antes de tudo, faça a instalação das **Ferramentas** informadas anteriormente. Logo, abra o terminal e faça um clone do projeto:
```
$ git clone https://github.com/fteixeira471/vr_desafio_backend.git
```

2. Instale as dependências
```
$ bundle
```

3. Execute o **Cucumber**
```
$ bundle exec cucumber
```

----
## **Relatórios de Execução dos Testes**
Por padrão, durante a execução dos testes, são apresentados no terminal os resultados (testes que passaram e que falharam).
Porém, é possível gerar um relatório amigável no formato HTML passando o [_profile_](https://cucumber.io/docs/cucumber/configuration/#profiles) **html_report**:
```
$ bundle exec cucumber -p html_report
```

Esses relatórios ficam disponíveis dentro da pasta:
```
reports
└── html
```

----
## **Análise de Código e Boas Práticas de Codificação**
Inclusa como dependência nesse projeto está a gem **rubocop**. Basicamente, ela realiza uma análise estática e de formatação do código, além de checagem de boas práticas de programação (*seguindo o [Guia de Estilo Ruby](https://rubystyle.guide/)*).

Ou seja, verifica e aponta trechos de código que podem ser melhorados ou que não seguem padrões.

Esse processo é feito através do terminal e gera um relatório diponível também em html
```
$ rake run_rubocop
```
```
reports
└── code_analyzer
```