class CuentaBancaria
    attr_accessor :nombre_de_usuario

    def initialize(nombre_de_usuario, numero_de_cuenta, vip=0)

        if numero_de_cuenta.digits.count != 8
            raise RangeError, 'Tu digito no es 8'
        end

        if !(0..1).include?(vip)
            raise RangError, 'Tu digito Vip no es 0 o 1'
        end

        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end

    def numero_de_cuenta  
        "#{@vip}-#{@numero_de_cuenta}"
    
    end
    
end

prueba = CuentaBancaria.new('pedro', 12345678)

puts prueba.inspect