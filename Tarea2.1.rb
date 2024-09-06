class ContadorDePalabras
    def initialize
        #Aqui se crea el hash y se inicializa
        #Datos es la variable de instancia
      @datos = {
        palabra: "",
        contador: 0,
        bandera: false
      }
    end
  
    def llenar_palabra
      puts "Ingresa una palabra:"
      @datos[:palabra] = gets.chomp
    end
  
    def recorrer_letras
        #Aqui se usa el iterador each_with_index
      @datos[:palabra].chars.each_with_index do |letra, indice_actual|
        if letra == " " && @datos[:bandera]
          @datos[:bandera] = false
          @datos[:contador] += 1
        else
          @datos[:bandera] = true
        end
  
        if indice_actual == @datos[:palabra].length - 1 && letra != " "
          @datos[:contador] += 1
        end
      end
  
      puts "El número de palabras es: #{@datos[:contador]}"
    end

    def modificar_datos
        puts "Modifica la palabra:"
        @datos[:palabra] = gets.chomp
        @datos[:contador] = 0
        @datos[:bandera] = false
    end

  end
  
  # Inicializar
  contador = ContadorDePalabras.new
  # Llenar
  contador.llenar_palabra
  # Lógica
  contador.recorrer_letras
  # Modificar 
  contador.modificar_datos 
  # Lógica otra vez >:v
  contador.recorrer_letras
