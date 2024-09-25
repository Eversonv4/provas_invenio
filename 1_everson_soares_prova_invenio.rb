class Pessoa
  attr_accessor :nome, :email

  def initialize(nome, email)
    @nome = nome
    @email = email
  end

  def full_informations
    "Nome: #{@nome} - E-mail: #{@email}"
  end
end

class Funcionario < Pessoa
  attr_accessor :cargo

  def initialize(nome, email, cargo)
    super(nome, email)
    @cargo = cargo
  end

  def full_informations
    "Nome: #{@nome} - Email: #{@email} - Cargo: #{@cargo}"
  end
end

pessoas = [
  Pessoa.new("Everson", "everson@email.com"),
  Pessoa.new("Joao", "joao@email.com"),
  Pessoa.new("Maria", "maria@email.com"),
  Pessoa.new("Eduardo", "eduardo@email.com"),
  Pessoa.new("Jessica", "jessica@email.com"),
  Pessoa.new("Pedro", "pedro@email.com"),
  Pessoa.new("Lucas", "lucas@email.com"),
  Funcionario.new("Luisa", "luisa@email.com", "Gerente"),
  Funcionario.new("Bianca", "bianca@email.com", "Desenvolvedora"),
  Funcionario.new("Adriano", "adriano@email.com", "Designer")
]

pessoas.each do |pessoa|
  puts pessoa.full_informations
end
