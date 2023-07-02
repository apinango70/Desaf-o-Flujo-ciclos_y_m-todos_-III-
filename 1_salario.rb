# Requerimiento 1, se solicita un programa que mediante el uso de métodos permita calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de aumento establecido.


#======================================================================
# =============== VERSION 1: usando variables globales  ===============
#======================================================================

# Metodo que hace el calculo del aumento
def calcular_nuevo_salario()
  aumento = $salario_actual * ($porcentaje_aumento / 100)
  nuevo_salario = $salario_actual + aumento
  # Imprime el resultado
  puts "**Resultado con variables globales**"
  puts "El nuevo salario del colaborador es: #{nuevo_salario}","\n"
end

# Solicita el salario actual del colaborador, lo defino como variable global para poder usarlo dentro del metodo.
puts "Ingrese el salario actual del colaborador:"
$salario_actual = gets.chomp.to_f
# Solicita el porcentaje de aumento, igualmente la defino como varibla globl
puts "Ingrese el porcentaje de aumento:"
$porcentaje_aumento = gets.chomp.to_f

# Llamo al metodo
calcular_nuevo_salario 




#======================================================================
# ============== VERSION 2: pasando parametros  al metodo==============
#======================================================================


# Metodo que hace el calculo del aumento
def calcular_nuevo_salario(salario_actual, porcentaje_aumento)
    aumento = salario_actual * (porcentaje_aumento / 100)
    nuevo_salario = salario_actual + aumento
    # Imprime el resultado
    puts "**Resultado pasando parametros**"
    puts "El nuevo salario del colaborador es: 💰 #{nuevo_salario} 💰","\n"
end
  
  # Solicita el salario actual del colaborador 
  puts "Ingrese el salario actual del colaborador:"
  salario_actual = gets.chomp.to_f
  # Solicita el porcentaje de aumento
  puts "Ingrese el porcentaje de aumento:"
  porcentaje_aumento = gets.chomp.to_f

  # Llamo al metodo y le paso los parametros con los valores ingresados en los gets anteriores
  nuevo_salario = calcular_nuevo_salario(salario_actual, porcentaje_aumento)
  

  