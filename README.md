# Projeto final Desenvolvimento Web - BagDex
O projeto utiliza as tecnologias:
* Ruby
* Ruby on Rails
* PostgreSQL
* Vagrant
* RVM

## Extensões úteis para o VSCODE
* Ruby
* Rails
* Gem Lens
* Ruby Solargraph
* endwise

## Pré-Requisitos
* Ruby
* Vagrant

## Repositório

### 1 - Criar um repositório
### 2 - Abrir o GitBash como administrador

## 3 - Instalando e iniciando Vagrant
### Comandos
    * Vagrant plugin install vagrant-vbguest
    * vagrant init GuiDev/Ubuntu-Rails5x --box-version 1.0.0
	* vagrant up
	* vagrant ssh

(_Instalando o plugin vbguest, adicionando a imagem Ubuntu Rails e subindo  a maquina virtual_)	

## Acessando a pasta compartilhada do Vagran

### 4 - Na maquina virtual:
	* cd ..
	* cd ..
	* ls 
	* cd Vagrant

### 5 - Criando um novo projeto:
	* → rails _5.2_ new NOME_DO_PROJETO
	
### 6 - Acessando o projeto criado
	* cd NOME_DO_PROJETO

## Criando os primeiros elementos do Projeto

### 7 - Exemplo de criação de uma tabela:
	* rails generate scaffold <Model> <campo:tipo> <campo:tipo>
    * rails g scaffold City description:string code:integer image

### 8 - Entrar na interface do banco de dados
	* rails db
	
### 9 - Listar as Tasks disponíveis
	* rails -T
(_Todas as tasks_)

	* rails -T db
(_Tasks do Banco de Dados_)
	
### 10 - Criar o banco de dados com base no padrão
	* rails db:migrate
	
#### Outros comandos
    * rails db:create
    * rails db:drop
    * rails db:migrate
    * rails db:rolllback

### 11 - Subindo a aplicação do rails
	* rails s -b 0.0.0.0
	* rails s -b 0.0.0.0 -e production
	
### 12 - Exemplos de geradores que o Rails disponibiliza 
	* rails generate
	* rails generate controller pagina_inicial
	* rails destroy controller pagina_inicial
	* rails d controller pagina_inicial
	* rails g controller welcome index
	
### 13 - Criando um CRUD de Estado para vincular com as cidades
	* rails g scaffold State acronym description
	* rails db:migrate

### 14 - Criando uma "seed" quer serve para popular o banco com dados pré-definidos
    * State.find_or_create_by!(id: 24, description: 'Santa Catarina', acronym: 'SC')
    * State.find_or_create_by!(id: 25, description: 'Sergipe', acronym: 'SE')
    * State.find_or_create_by!(id: 26, description: 'São Paulo', acronym: 'SP')
    * State.find_or_create_by!(id: 27, description: 'Tocantins', acronym: 'TO')
	
### 15 - Executar o comando
    * rails db:seed

### 16 - Criando uma task
    * desc "Configura o banco de dados do zero"
    *  task db_task: :environment do
    *  if Rails.env.development?
    *   puts %x(rails db:drop)
    *   puts %x(rails db:create)
    *   puts %x(rails db:migrate)
    *   puts %x(rails db:seed)
    *  else
    *   puts "ambiente de producao!"
    *  end
    * end

### 17 - Rodar a task
	* rails g task dev db_setup

### 18 - Relacionando o Estado com a Cidade
	* rails g migration AddStateToCities state:references
	* rails db:migrate

### GitBash

#### Configurar o git na maquina virtual
	1) git --version
	2) git config --global user.email “seuEmail@email.com”
	3) git config --global user.name “seuNome”
    4) Usar o token do Github como senha

#### Para clonar este repositório
	* git clone https://github.com/Viniaza/rails-ini-projeto.git
