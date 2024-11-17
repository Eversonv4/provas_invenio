class ContaCorrente
  def initialize(saldo)
    @saldo = saldo
  end

  def sacar(valor)
    return puts "Digite um valor válido" if (valor.class != Float && valor.class != Integer)
    return puts "Saldo insuficiente" if (valor > @saldo)

    @saldo -= valor

    puts "Foi sacado R$ #{valor}"
  end

  def depositar(valor)
    return puts "Digite um valor válido" if (valor.class != Float && valor.class != Integer)
    return puts "Valor inválido" if (valor <= 0)

    @saldo += valor

    puts "Foi depositado R$ #{valor}"
  end
end

conta_corrente = ContaCorrente.new(100)

conta_corrente.sacar(50)
conta_corrente.sacar(60)
conta_corrente.depositar(70)
conta_corrente.sacar(60)
conta_corrente.sacar("abc")
conta_corrente.depositar("xyz")

