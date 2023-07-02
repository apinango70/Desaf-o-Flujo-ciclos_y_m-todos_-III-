#Requerimiento 3, utilizando como base el ejercicio de cálculo de IMC en la guía de ejercicios, agregar en el cálculo de Obesidad los elementos faltantes dado que la obesidad se subdivide en 3 niveles. Deberás agregar a la lógica condicional los cálculos para esos tres niveles.

# Cargo al gema colorize
require 'colorize'


# Calcula el imc con los datos ingresados por el usuario
def formula_imc(valor1, valor2)
  imc = valor1 / valor2**2
end


# Compara el resultado de dividir el peso por la altura con las tablas de imc
def calcular_imc(imc)
  puts("Tu índice de masa corporal es => #{imc}")

  if imc < 18.5
    puts "El índice calculado es Bajo de peso".colorize(:yellow)
  elsif imc <= 18.5 || imc <= 24.9
    puts "El índice calculado es Normal".colorize(:green)
  elsif imc <= 25.0 || imc <= 29.9
    puts "El índice calculado es Sobrepeso".colorize(:yellow)
  elsif imc <= 30.0 || imc <= 34.9
    puts "El índice calculado es ".colorize(:red) + "Obesidad grado I (Moderado)".colorize(:red)
  elsif imc <= 35.0 || imc <= 39.9
    puts "El índice calculado es ".colorize(:red) + "Obesidad grado II (Severo)".colorize(:red)
  else
    puts "El índice calculado es ".colorize(:red) + "Obesidad grado III (Muy severo)".colorize(:red)
  end
end

puts("***¡Bienvenido/a al sistema de cálculo IMC!***")
puts "Ingresa tu peso en Kilogramos: "
peso = gets.chomp.to_f

puts "Ingresa tu altura expresada en metros: "
altura = gets.chomp.to_f

# envio los parametros a los dos metodos para hacer los calculos del imc
resultado = calcular_imc(formula_imc(peso, altura))
puts(resultado)
