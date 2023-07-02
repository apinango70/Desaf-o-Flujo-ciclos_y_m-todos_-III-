# Requerimiento 2, te solicitan un programa que simule el juego de “Adivina el número”. En este programa el computador va a elegir un número aleatorio y el usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para ganar es que el número del computador debe ser igual al del jugador. 
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más amplio sea el rango más duradero será el juego.

# Solicito la gema colorize para imprimir algunos strings en colores
require 'colorize'

# Metodo que realiza las comparaciones y en un bucle loop va comparando la respuesta del jugador con el numero rand elegido por el computador.

def adivina_el_numero(numero_maximo,nombre)

# uso el metodo rand para que el computador elija al azar un numero entre 1 y el numero maximo que el jugador indico al inicio del juego, este numero se guarda en la variable numero_secreto.
numero_aleatorio = rand(1..numero_maximo)

puts "\n"
puts "Estoy pensando en un número entre 1 y #{numero_maximo}. ¡Adivina cuál es!"

# Cuenta el numero de intentos hasta adivinar el numero secreto para mostrarlo al finalizar el juego.
intentos = 0
loop do
  intento = gets.chomp.to_i
  intentos += 1
# Si el jugador adivina el numero secreto sale el mensaje de felicitaciones
  if intento == numero_aleatorio 
    if intento = 1
      puts "¡Felicitaciones! 🎉 🎇 🎆 ✨ #{nombre.colorize(:yellow) } ✨ 🎆 🎇 🎉 ¡Descubriste el número secreto en el #{intentos}er. intento, eres increible!"
      puts "\n"
    else
      puts "¡Felicitaciones! ✨ #{nombre.colorize(:yellow) } ✨ ¡Adivinaste el número secreto en #{intentos} intentos!"
      puts "\n"   
    end

    break
# Mientras el numero que de el jugador sea mayor o menor al numero aleatorio seguira ejecutandose el bucle loop y dando la pista correspondiente.
    elsif intento < numero_aleatorio
      puts "El número secreto es más alto. Intenta nuevamente."
    else
      puts "El número secreto es más bajo. Intenta nuevamente."
    end
  end
end

# imprime el nombre del juego al ejecutar el programa
puts "\n"
puts "¡Bienvenido/a a Adivina el número secreto!".colorize(:green)
puts "\n"

# solicita con gets el nombre del jugador y lo agrega a la variable nombre
puts "introduce tu nombre: " 
nombre = gets.chomp
puts "\n"

# imprime las instrucciones del juego
puts "Hola #{nombre.colorize(:yellow)}, el juego consiste en adivinar el número que estoy pensando o número secreto, el rango para adivinar va desde el 1 hasta el número que tu indiques como #{'"número máximo"'.colorize(:green)}, yo te ire dando pistas si el número que me das es mayor o menor al que yo elegi, el juego finaliza cuando adivines el número elegido. Suerte!"
puts"\n"


puts "Ingresa el número máximo para el rango:".colorize(:green)
numero_maximo = gets.chomp.to_i


# Llamo al metodo que evaluara los numeros ingresados y le paso los parametros numero_maximo y nombre
adivina_el_numero(numero_maximo,nombre)

