class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
      if !(1..13).include?(numero)
        raise ArgumentError, 'Ingresar el valor entre 1 y 13'
      end
      if !['C', 'D', 'E','T']
        raise ArgumentError 'Debes ingresar una pinta valida'
      end
      @numero = numero
      @pinta = pinta
    end
    def self.numero
      Random.rand(1..13)
    end
    def self.pinta
      ['C', 'D', 'E','T'].sample
    end
  end

array = []

5.times do

    pinta1 = Carta.pinta
    numero1 = Carta.numero
    array.push Carta.new(numero1, pinta1)
end

print array

cartas =  Carta.new(12,'C')

puts cartas.inspect
