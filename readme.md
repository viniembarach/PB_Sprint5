<h1 align="center">
    Automação Web com Ruby e Cucumber
<h1 >

# Indice

- [Sobre](#🔖-sobre)
- [Tecnologias Utilizadas](#🚀-tecnologias-utilizadas)
- [Conteúdo](#📒-conteúdo)
- [Como baixar o projeto](#🗂-como-baixar-o-projeto)
- [Autor](#©️-autor)

## 🔖&nbsp; Sobre

O repositório **PB_Sprint5** foi criado para armazenar todos os exercícios e arquivos das aulas da **Sprint 5 - Automação Web com Ruby e Cucumber**. O objetivo é aplicar na prática todo o conteúdo estudado durante a sprint.

---

## 🚀 Tecnologias utilizadas

O projeto foi desenvolvido utilizando as seguintes tecnologias

- [Ruby](https://www.ruby-lang.org/pt/)
- [RSpec](https://rspec.info)
- [Cucumber](https://github.com/cucumber/cucumber-ruby)
- [Capybara](https://github.com/teamcapybara/capybara)
- [SitePrism](https://github.com/site-prism/site_prism)
- [Faker](https://github.com/faker-ruby/faker)

---

## 📒 Conteúdo

- Análise com mapas mentais e escrita de Gherkin
- Mapeamento de elementos HTML
- Como iniciar um projeto de automação de testes com Cucumber e Capybara
- Configuração de ambientes dinâmicos
- Padrão de projeto Page Objects com SitePrism
- Massas de dados estáticas e dinâmicas
- Diferentes tipos de reports da automação de testes

## 🗂 Como baixar o projeto

### Requisitos

- [Ruby-2.5.3-1](https://rubyinstaller.org/downloads/archives/)
- [Cmder](https://github.com/cmderdev/cmder)


```bash

    # Clonar o repositório
    $ git clone https://github.com/viniembarach/PB_Sprint5

```

### Capybara e Cucumber
```bash

    # Acessar a pasta
    $ cd CapybaraCucumber

    # Instalar as dependências
    $ bundle install

    # Executar os testes
    $ bundle exec cucumber

```

### SitePrism e Cucumber
```bash

    # Acessar a pasta
    $ cd SitePrismCucumber

    # Instalar as dependências
    $ bundle install

    # Executar todos os testes
    $ bundle exec cucumber -p default

    # Executar os demais testes
    $ bundle exec cucumber -p default -t@tag_do_teste

```

---

## ©️ Autor

Marcos Vinícius Bedin Embarach

https://www.linkedin.com/in/marcos-vinicius-bedin-embarach-6aa321269/
