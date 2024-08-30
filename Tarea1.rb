class Padre
    def initialize(nombre)
        @nombre = nombre
    end

    def mandarTexto
        nombre = "Daniel Josué"
    end
end 

class Hijo < Padre
end

nombre = Padre.new("Darth")
puts nombre.mandarTexto.upcase

nombre = Padre.new("Darth")
puts nombre.mandarTexto.reverse

nombre = Padre.new("Darth")
puts nombre.mandarTexto.length


