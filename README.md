# Lovelace: compra de maquiagens on-line

O projeto é de um website criado em Ruby on Rails, através da arquitetura
MVC (Modelo, Visão e Controle), sobre venda de produtos de maquiagem. O
mesmo utilizou padrões de projeto e foi guiado pelo processo unificado ágil.
A loja online chama-se Lovelace em homenagem a grande matemática, e
considerada a primeira programadora, Ada Lovelace.

# Dependências

- RVM (https://rvm.io/rvm/install)
- Ruby, versão 2.2.1
- Rails, versão 4.2.0
- Bundler (gem install bundler)
- MySQL

# Instalação

1. Clonar o repositório (demora cerca de 8 minutos, dependendo da internet)
2. Entrar na pasta do projeto: 'cd Lovelace/lovelace'
3. Rodar o comando 'bundle install'. Em caso de erro na gem mysql2, rode o comando'sudo apt-get install libmysqlclient-dev'
4. Entrar na pasta de configuração -> banco de dados: 'vi config/database.yml'
5. Mudar usuário e senha para os configurados em seu MySQL
6. Rodar o comando 'rake db:create'
7. Rodar o comando 'rake db:migrate'
9. Rodar a aplicação através do comando 'rails s'

# Administração do site

1. Rodar a aplicação (rails s) e criar um novo usuário com:
   - email = admin@email.com
   - senha = adminroot
2. Voltar ao terminal e rodar os comandos:
   - rails c
   - u = User.first
   - u.admin = true
   - u.save
   - Ctrl + D (para sair do console)
3. Rodar a aplicação (rails s)

Agora já está disponível a função de administração do site (localhost:3000/admin)
