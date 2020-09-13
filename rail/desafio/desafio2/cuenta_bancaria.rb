class CuentaBancaria
  attr_accessor :nombre, :n_cuenta, :saldo
  def initialize(nombre, n_cuenta, saldo = 0)
    @nombre = nombre
    @n_cuenta = n_cuenta
    @saldo = saldo
  end

  def transferir(monto, cuenta_externa)
    @saldo = @saldo - monto
    cuenta_externa.saldo = cuenta_externa.saldo + monto
  end
end
  cuenta1 = CuentaBancaria.new('Francisco', 1234, 1000000)
  cuenta2 = CuentaBancaria.new('Javier', 4321, 5000000)

  cuenta1.transferir(100000, cuenta2)

  print cuenta1.saldo
  puts
  print cuenta2.saldo
